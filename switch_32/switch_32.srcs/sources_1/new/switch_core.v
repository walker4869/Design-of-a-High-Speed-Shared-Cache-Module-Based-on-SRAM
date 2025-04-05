`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 14:38:18
// Design Name: 
// Module Name: switch_core
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module switch_core(
input					clk,
input					rstn,
// 与switch_pre相连的信号
input		  [127:0]	i_cell_data_fifo_din,	//数据输入，连接接口数据fifo		
input		 			i_cell_data_fifo_wr,	// 数据FIFO的写使能信号				
input		  [15:0]	i_cell_ptr_fifo_din,	// 当前数据帧对应的指针。低8位是当前数据帧对应的信元数，高8位中的低4位是输出端口映射位图，连接接口指针FIFO			
input		 			i_cell_ptr_fifo_wr,		// 当前数据帧指针写使能信号			
output	reg				i_cell_bp,				//给前级电路的反压信号，为1时表示当前输入接口缓冲区不能接受一个最大帧
//与switch_post相连的信号
output	reg				o_cell_fifo_wr,     //信元输出写使能信号
output	reg  [15:0]		o_cell_fifo_sel,	//信元输出端口选择信号。哪位为1表示选择哪个输出端口
output	     [127:0]	o_cell_fifo_din,	//信元输出数据
output					o_cell_first,		//输出首信元指示
output					o_cell_last,		//输出尾信元指示
input		 [15:0]		o_cell_bp		    //后级4个输出端口电路给本级的反压信号
    );


reg 	[3:0]	qc_portmap;
//双端口RAM，存储信元数据
wire 	[127:0]	sram_din_a;			//SRAM输入信号	
wire 	[127:0]	sram_dout_b;		//SRAM输出信号	
wire 	[15:0]	sram_addr_a;		//SRAM a 口地址信号	////////////////
wire 	[15:0]	sram_addr_b;		//SRAM b 口地址信号	/////////////////
wire			sram_wr_a;			//SRAM a 口写使能信号	
//输入缓冲FIFO，存储输入信元和指针		
reg  			i_cell_data_fifo_rd;	
wire [127:0]	i_cell_data_fifo_dout;	
wire [8:0]		i_cell_data_fifo_depth;	
reg				i_cell_ptr_fifo_rd;
wire [15:0]		i_cell_ptr_fifo_dout;
wire			i_cell_ptr_fifo_full;
wire			i_cell_ptr_fifo_empty;
reg	 [5:0]		cell_number;
reg				i_cell_last;
reg				i_cell_first;
//自由指针队列接口信号			
reg  [15:0]		FQ_din;		//寄存从缓冲区读出信元后待归还的自由指针
reg				FQ_wr;		
reg				FQ_rd;
reg  [13:0]		FQ_dout;   //寄存从自由指针队列中读出的自由指针 ///////////////
wire            FQ_empty;  
reg	 [1:0]		sram_cnt_a;	
reg	 [1:0]		sram_cnt_b;
reg				sram_rd;	//SRAM无须专用的读信号，这里用作中间信号
reg				sram_rd_dv;
//写入状态机相关信号
reg  [3:0]		wr_state;		//写入状态机
reg  [15:0]		qc_wr_ptr_wr_en;	//队列控制器写入信号
wire			qc_ptr_full0;
wire			qc_ptr_full1;
wire			qc_ptr_full2;
wire			qc_ptr_full3;
wire			qc_ptr_full4;
wire			qc_ptr_full5;
wire			qc_ptr_full6;
wire			qc_ptr_full7;
wire			qc_ptr_full8;
wire			qc_ptr_full9;
wire			qc_ptr_full10;
wire			qc_ptr_full11;
wire			qc_ptr_full12;
wire			qc_ptr_full13;
wire			qc_ptr_full14;
wire			qc_ptr_full15;

reg				qc_ptr_full;
wire [13:0]		ptr_dout_s;		//从自由指针队列中读出的指针
reg  [15:0]		qc_wr_ptr_din;	//队列控制器的写入指针寄存器

always@(posedge clk)
	qc_ptr_full<=#2 ({qc_ptr_full15,qc_ptr_full14,qc_ptr_full13,qc_ptr_full12,qc_ptr_full11,qc_ptr_full10,qc_ptr_full9,qc_ptr_full8,qc_ptr_full7,qc_ptr_full6,qc_ptr_full5,qc_ptr_full4,qc_ptr_full3,qc_ptr_full2,qc_ptr_full1,qc_ptr_full0}==16'b0)?0:1;//全为0才是0
//输入信元缓冲区，fall-through模式
sfifo_ft_w128_d256 u_i_cell_fifo(
  .clk(clk), 
  .srst(!rstn), 
  .din(i_cell_data_fifo_din[127:0]), 
  .wr_en(i_cell_data_fifo_wr), 
  .rd_en(i_cell_data_fifo_rd), 
  .dout(i_cell_data_fifo_dout[127:0]), 
  .full(), 
  .empty(),
  .data_count(i_cell_data_fifo_depth[8:0])
);
always @(posedge clk) 
	i_cell_bp<=#2 (i_cell_data_fifo_depth[8:0]>161) | i_cell_ptr_fifo_full;
//输入指针缓冲区，fall-through模式
sfifo_ft_w16_d32 u_ptr_fifo (
  .clk(clk), 					// input clk
  .srst(!rstn), 					// input rst
  .din(i_cell_ptr_fifo_din), 	// input [15 : 0] din
  .wr_en(i_cell_ptr_fifo_wr), 	// input wr_en
  .rd_en(i_cell_ptr_fifo_rd), 	// input rd_en
  .dout(i_cell_ptr_fifo_dout), 	// output [15 : 0] dout
  .full(i_cell_ptr_fifo_full), 	// output full
  .empty(i_cell_ptr_fifo_empty),// output empty
  .data_count() 				// output [5 : 0] data_count
);


//=================写入状态机=================//
always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		wr_state<=#2  0;
		FQ_rd<=#2  0;
		sram_cnt_a<=#2  0;
		i_cell_data_fifo_rd<=#2  0;
		i_cell_ptr_fifo_rd<=#2 0;
		qc_wr_ptr_wr_en<=#2  0;
		qc_wr_ptr_din<=#2  0;
		FQ_dout<=#2  0;
		qc_portmap<=#2 0;
		cell_number<=#2 0;
		i_cell_last<=#2 0;
		i_cell_first<=#2 0;
		end
	else
		begin
		FQ_rd<=#2  0;
		qc_wr_ptr_wr_en<=#2  0;
		i_cell_ptr_fifo_rd<=#2  0;
		case(wr_state)
		0:begin
			sram_cnt_a<=#2  0;
			i_cell_last<=#2 0;
			i_cell_first<=#2 0;
			//输入指针缓冲区非空，队列控制器入口处的指针缓冲区均非满
			//自由指针缓冲区非空时，可将信元写入数据缓冲区
			if(!i_cell_ptr_fifo_empty & !qc_ptr_full & !FQ_empty)begin
				i_cell_data_fifo_rd<=#2  1;
				i_cell_ptr_fifo_rd<=#2  1;
				qc_portmap<=#2 i_cell_ptr_fifo_dout[11:8];
				FQ_rd<=#2  1;
				FQ_dout<=#2  ptr_dout_s;
				cell_number[5:0]<=#2 i_cell_ptr_fifo_dout[5:0];
				i_cell_first<=#2  1;
				if(i_cell_ptr_fifo_dout[5:0]==6'b1) i_cell_last<=#2 1;
				wr_state<=#2 1;
				end
			end
		1:begin			
			cell_number<=#2 cell_number-1;
			sram_cnt_a<=#2 1;
			qc_wr_ptr_din<=#2  {i_cell_last,i_cell_first,FQ_dout};///////////////
			case(qc_portmap)
			4'b0000:qc_wr_ptr_wr_en[0]<=#2  1;
			4'b0001:qc_wr_ptr_wr_en[1]<=#2  1;
			4'b0010:qc_wr_ptr_wr_en[2]<=#2  1;
			4'b0011:qc_wr_ptr_wr_en[3]<=#2  1;
			4'b0100:qc_wr_ptr_wr_en[4]<=#2  1;
			4'b0101:qc_wr_ptr_wr_en[5]<=#2  1;
			4'b0110:qc_wr_ptr_wr_en[6]<=#2  1;
			4'b0111:qc_wr_ptr_wr_en[7]<=#2  1;
			4'b1000:qc_wr_ptr_wr_en[8]<=#2  1;
			4'b1001:qc_wr_ptr_wr_en[9]<=#2  1;
			4'b1010:qc_wr_ptr_wr_en[10]<=#2 1;
			4'b1011:qc_wr_ptr_wr_en[11]<=#2 1;
			4'b1100:qc_wr_ptr_wr_en[12]<=#2 1;
			4'b1101:qc_wr_ptr_wr_en[13]<=#2 1;
			4'b1110:qc_wr_ptr_wr_en[14]<=#2 1;
			4'b1111:qc_wr_ptr_wr_en[15]<=#2 1;
            endcase
			wr_state<=#2  2;
		  end
		2:begin
			sram_cnt_a<=#2  2;
			wr_state<=#2  3;
		  end
		3:begin
			sram_cnt_a<=#2  3;
			wr_state<=#2  4;
		  end
		4:begin
			i_cell_first<=#2  0;
			//如果当前写入的信元不是一个帧的最后一个单元，则循环进行写入操作
			if(cell_number) begin
				if(!FQ_empty)begin
					FQ_rd		<=#2  1;
					FQ_dout		<=#2  ptr_dout_s;
					sram_cnt_a	<=#2  0;	
					wr_state	<=#2  1;
					if(cell_number==1) i_cell_last<=#2 1;
					else i_cell_last<=#2 0;
					end
				end
			else begin
				i_cell_data_fifo_rd<=#2 0;
				wr_state	<=#2 0;
				end
			end
		default:wr_state<=#2  0;
		endcase
		end

assign  sram_wr_a=i_cell_data_fifo_rd;
assign	sram_addr_a={FQ_dout[13:0],sram_cnt_a[1:0]};
assign	sram_din_a=i_cell_data_fifo_dout[127:0];		


//================读出状态机================//
reg  [3:0]		rd_state;
wire [15:0]		qc_rd_ptr_dout0,qc_rd_ptr_dout1,
                qc_rd_ptr_dout2,qc_rd_ptr_dout3,
                qc_rd_ptr_dout4,qc_rd_ptr_dout5,
                qc_rd_ptr_dout6,qc_rd_ptr_dout7,
                qc_rd_ptr_dout8,qc_rd_ptr_dout9,
                qc_rd_ptr_dout10,qc_rd_ptr_dout11,
                qc_rd_ptr_dout12,qc_rd_ptr_dout13,
                qc_rd_ptr_dout14,qc_rd_ptr_dout15;
reg  [3:0]		RR;
reg  [15:0]		ptr_ack;//第二个FIFO输出读信号
wire [15:0]		ptr_rd_req_pre;

wire			ptr_rdy0,ptr_rdy1,ptr_rdy2,ptr_rdy3,ptr_rdy4,ptr_rdy5,ptr_rdy6,ptr_rdy7,ptr_rdy8,ptr_rdy9,ptr_rdy10,ptr_rdy11,ptr_rdy12,ptr_rdy13,ptr_rdy14,ptr_rdy15;		
wire			ptr_ack0,ptr_ack1,ptr_ack2,ptr_ack3,ptr_ack4,ptr_ack5,ptr_ack6,ptr_ack7,ptr_ack8,ptr_ack9,ptr_ack10,ptr_ack11,ptr_ack12,ptr_ack13,ptr_ack14,ptr_ack15;

//在某个队列中有完整的数据帧，对应输出端口无反压时，通过ptr_rd_req_pre产生有效读出请求
assign	ptr_rd_req_pre={ptr_rdy15,ptr_rdy14,ptr_rdy13,ptr_rdy12,ptr_rdy11,ptr_rdy10,ptr_rdy9,ptr_rdy8,ptr_rdy7,ptr_rdy6,ptr_rdy5,ptr_rdy4,ptr_rdy3,ptr_rdy2,ptr_rdy1,ptr_rdy0} & (~o_cell_bp);
assign	{ptr_ack15,ptr_ack14,ptr_ack13,ptr_ack12,ptr_ack11,ptr_ack10,ptr_ack9,ptr_ack8,ptr_ack7,ptr_ack6,ptr_ack5,ptr_ack4,ptr_ack3,ptr_ack2,ptr_ack1,ptr_ack0}=ptr_ack;
assign	sram_addr_b={FQ_din[13:0],sram_cnt_b[1:0]};
assign	o_cell_last=FQ_din[15];
assign	o_cell_first=FQ_din[14];
assign	o_cell_fifo_din[127:0]= sram_dout_b[127:0];

always@(posedge clk or negedge rstn)
	if(!rstn)begin
		rd_state<=#2  0;
		FQ_wr<=#2  0;
		FQ_din<=#2  0;
		RR<=#2  0;
		ptr_ack<=#2  0;
		
		sram_rd<=#2  0;
		sram_rd_dv<=#2  0;
		sram_cnt_b<=#2  0;
		o_cell_fifo_wr<=#2  0;
		o_cell_fifo_sel<=#2  0;
		end
	else begin
		FQ_wr<=#2  0;
		o_cell_fifo_wr<=#2 sram_rd;
		case(rd_state)
		0:begin
			sram_rd<=#2  0;
			sram_cnt_b<=#2  0;
			//当任意一个队列管理器中有完整的数据帧时，开始读出
			if(ptr_rd_req_pre)	rd_state<=#2  1;	
			end
		1:begin
			rd_state<=#2  2;
			sram_rd<=#2  1;
			RR<=#2 RR+4'b0001;
			//采用公平轮询机制，轮流对4个端口进行发送轮询
			case(RR)						
			0:begin							
				casex(ptr_rd_req_pre[15:0])  
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				endcase
			end
			1:begin
				casex({ptr_rd_req_pre[0],ptr_rd_req_pre[15:1]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				endcase
			end
			2:begin
				casex({ptr_rd_req_pre[1:0],ptr_rd_req_pre[15:2]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				endcase
			end
			3:begin
				casex({ptr_rd_req_pre[2:0],ptr_rd_req_pre[15:3]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				endcase
			end
			4:begin
			    casex({ptr_rd_req_pre[3:0],ptr_rd_req_pre[15:4]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				endcase
			end
			5:begin
			    casex({ptr_rd_req_pre[4:0],ptr_rd_req_pre[15:5]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				endcase
			end
			6:begin
				casex({ptr_rd_req_pre[5:0],ptr_rd_req_pre[15:6]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				endcase
			end
			7:begin
				casex({ptr_rd_req_pre[6:0],ptr_rd_req_pre[15:7]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				endcase
			end
			8:begin
				casex({ptr_rd_req_pre[7:0],ptr_rd_req_pre[15:8]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				endcase
			end
			9:begin
				casex({ptr_rd_req_pre[8:0],ptr_rd_req_pre[15:9]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				endcase
			end
			10:begin
				casex({ptr_rd_req_pre[9:0],ptr_rd_req_pre[15:10]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				endcase
			end
			11:begin
				casex({ptr_rd_req_pre[10:0],ptr_rd_req_pre[15:11]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				endcase
			end
			12:begin
				casex({ptr_rd_req_pre[11:0],ptr_rd_req_pre[15:12]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				endcase
			end
			13:begin
				casex({ptr_rd_req_pre[12:0],ptr_rd_req_pre[15:13]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				endcase
			end
			14:begin
				casex({ptr_rd_req_pre[13:0],ptr_rd_req_pre[15:14]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2  16'b0100000000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2  16'b1000000000000000; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2  16'b0000000000000001; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2  16'b0000000000000010; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2  16'b0000000000000100; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2  16'b0000000000001000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2  16'b0000000000010000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2  16'b0000000000100000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2  16'b0000000001000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2  16'b0000000010000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2  16'b0000000100000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2  16'b0000001000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2  16'b0000010000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2  16'b0000100000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2  16'b0001000000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2  16'b0010000000000000; end
				endcase
			end
			15:begin
				casex({ptr_rd_req_pre[14:0],ptr_rd_req_pre[15]})
				16'bxxxxxxxxxxxxxxx1:begin FQ_din<=#2  qc_rd_ptr_dout15; o_cell_fifo_sel<=#2 16'b1000000000000000; ptr_ack<=#2   16'b1000000000000000; end
				16'bxxxxxxxxxxxxxx10:begin FQ_din<=#2  qc_rd_ptr_dout0; o_cell_fifo_sel<=#2  16'b0000000000000001; ptr_ack<=#2   16'b0000000000000001; end
				16'bxxxxxxxxxxxxx100:begin FQ_din<=#2  qc_rd_ptr_dout1; o_cell_fifo_sel<=#2  16'b0000000000000010; ptr_ack<=#2   16'b0000000000000010; end
				16'bxxxxxxxxxxxx1000:begin FQ_din<=#2  qc_rd_ptr_dout2; o_cell_fifo_sel<=#2  16'b0000000000000100; ptr_ack<=#2   16'b0000000000000100; end
				16'bxxxxxxxxxxx10000:begin FQ_din<=#2  qc_rd_ptr_dout3; o_cell_fifo_sel<=#2  16'b0000000000001000; ptr_ack<=#2   16'b0000000000001000; end
				16'bxxxxxxxxxx100000:begin FQ_din<=#2  qc_rd_ptr_dout4; o_cell_fifo_sel<=#2  16'b0000000000010000; ptr_ack<=#2   16'b0000000000010000; end
				16'bxxxxxxxxx1000000:begin FQ_din<=#2  qc_rd_ptr_dout5; o_cell_fifo_sel<=#2  16'b0000000000100000; ptr_ack<=#2   16'b0000000000100000; end
				16'bxxxxxxxx10000000:begin FQ_din<=#2  qc_rd_ptr_dout6; o_cell_fifo_sel<=#2  16'b0000000001000000; ptr_ack<=#2   16'b0000000001000000; end
				16'bxxxxxxx100000000:begin FQ_din<=#2  qc_rd_ptr_dout7; o_cell_fifo_sel<=#2  16'b0000000010000000; ptr_ack<=#2   16'b0000000010000000; end
				16'bxxxxxx1000000000:begin FQ_din<=#2  qc_rd_ptr_dout8; o_cell_fifo_sel<=#2  16'b0000000100000000; ptr_ack<=#2   16'b0000000100000000; end
				16'bxxxxx10000000000:begin FQ_din<=#2  qc_rd_ptr_dout9; o_cell_fifo_sel<=#2  16'b0000001000000000; ptr_ack<=#2   16'b0000001000000000; end
				16'bxxxx100000000000:begin FQ_din<=#2  qc_rd_ptr_dout10; o_cell_fifo_sel<=#2 16'b0000010000000000; ptr_ack<=#2   16'b0000010000000000; end
				16'bxxx1000000000000:begin FQ_din<=#2  qc_rd_ptr_dout11; o_cell_fifo_sel<=#2 16'b0000100000000000; ptr_ack<=#2   16'b0000100000000000; end
				16'bxx10000000000000:begin FQ_din<=#2  qc_rd_ptr_dout12; o_cell_fifo_sel<=#2 16'b0001000000000000; ptr_ack<=#2   16'b0001000000000000; end
				16'bx100000000000000:begin FQ_din<=#2  qc_rd_ptr_dout13; o_cell_fifo_sel<=#2 16'b0010000000000000; ptr_ack<=#2   16'b0010000000000000; end
				16'b1000000000000000:begin FQ_din<=#2  qc_rd_ptr_dout14; o_cell_fifo_sel<=#2 16'b0100000000000000; ptr_ack<=#2   16'b0100000000000000; end
				endcase
			end
			endcase
		end
		2:begin
			ptr_ack<=#2  0;
			sram_cnt_b<=#2  sram_cnt_b+1;
			rd_state<=#2  3;
		  end
		3:begin
			sram_cnt_b<=#2  sram_cnt_b+1;
			FQ_wr<=#2  1;
			rd_state<=#2  4;
		  end
		4:begin
			sram_cnt_b<=#2  sram_cnt_b+1;
			rd_state<=#2  5;
		  end
		5:begin
			sram_rd<=#2  0;
			rd_state<=#2  0;
		  end
		default:rd_state<=#2  0;
		endcase
		end
//自由指针队列电路
multi_user_fq u_fq (
	.clk(clk), 
	.rstn(rstn), 
	.ptr_din({2'b0,FQ_din[13:0]}), 
	.FQ_wr(FQ_wr), 
	.FQ_rd(FQ_rd), 
	.ptr_dout_s(ptr_dout_s), 
	.ptr_fifo_empty(FQ_empty)
);
//队列管理器
switch_qc qc0(
	.clk(clk), 
	.rstn(rstn), 
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[0]), 
	.q_full(qc_ptr_full0), 
	.ptr_rdy(ptr_rdy0),
	.ptr_ack(ptr_ack0),
	.ptr_dout(qc_rd_ptr_dout0)
);

switch_qc qc1(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[1]), 
	.q_full(qc_ptr_full1), 
	
	.ptr_rdy(ptr_rdy1),
	.ptr_ack(ptr_ack1),
	.ptr_dout(qc_rd_ptr_dout1)
);

switch_qc qc2(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[2]), 
	.q_full(qc_ptr_full2), 
	
	.ptr_rdy(ptr_rdy2),
	.ptr_ack(ptr_ack2),
	.ptr_dout(qc_rd_ptr_dout2)
);

switch_qc qc3(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[3]), 
	.q_full(qc_ptr_full3), 
	
	.ptr_rdy(ptr_rdy3),
	.ptr_ack(ptr_ack3),
	.ptr_dout(qc_rd_ptr_dout3)
);

switch_qc qc4(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[4]), 
	.q_full(qc_ptr_full4), 
	
	.ptr_rdy(ptr_rdy4),
	.ptr_ack(ptr_ack4),
	.ptr_dout(qc_rd_ptr_dout4)
);

switch_qc qc5(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[5]), 
	.q_full(qc_ptr_full5), 
	
	.ptr_rdy(ptr_rdy5),
	.ptr_ack(ptr_ack5),
	.ptr_dout(qc_rd_ptr_dout5)
);

switch_qc qc6(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[6]), 
	.q_full(qc_ptr_full6), 
	
	.ptr_rdy(ptr_rdy6),
	.ptr_ack(ptr_ack6),
	.ptr_dout(qc_rd_ptr_dout6)
);

switch_qc qc7(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[7]), 
	.q_full(qc_ptr_full7), 
	
	.ptr_rdy(ptr_rdy7),
	.ptr_ack(ptr_ack7),
	.ptr_dout(qc_rd_ptr_dout7)
);

switch_qc qc8(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[8]), 
	.q_full(qc_ptr_full8), 
	
	.ptr_rdy(ptr_rdy8),
	.ptr_ack(ptr_ack8),
	.ptr_dout(qc_rd_ptr_dout8)
);

switch_qc qc9(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[9]), 
	.q_full(qc_ptr_full9), 
	
	.ptr_rdy(ptr_rdy9),
	.ptr_ack(ptr_ack9),
	.ptr_dout(qc_rd_ptr_dout9)
);

switch_qc qc10(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[10]), 
	.q_full(qc_ptr_full10), 
	
	.ptr_rdy(ptr_rdy10),
	.ptr_ack(ptr_ack10),
	.ptr_dout(qc_rd_ptr_dout10)
);

switch_qc qc11(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[11]), 
	.q_full(qc_ptr_full11), 
	
	.ptr_rdy(ptr_rdy11),
	.ptr_ack(ptr_ack11),
	.ptr_dout(qc_rd_ptr_dout11)
);

switch_qc qc12(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[12]), 
	.q_full(qc_ptr_full12), 
	
	.ptr_rdy(ptr_rdy12),
	.ptr_ack(ptr_ack12),
	.ptr_dout(qc_rd_ptr_dout12)
);

switch_qc qc13(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[13]), 
	.q_full(qc_ptr_full13), 
	
	.ptr_rdy(ptr_rdy13),
	.ptr_ack(ptr_ack13),
	.ptr_dout(qc_rd_ptr_dout13)
);

switch_qc qc14(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[14]), 
	.q_full(qc_ptr_full14), 
	
	.ptr_rdy(ptr_rdy14),
	.ptr_ack(ptr_ack14),
	.ptr_dout(qc_rd_ptr_dout14)
);

switch_qc qc15(
	.clk(clk), 
	.rstn(rstn), 
	
	.q_din(qc_wr_ptr_din), 
	.q_wr(qc_wr_ptr_wr_en[15]), 
	.q_full(qc_ptr_full15), 
	
	.ptr_rdy(ptr_rdy15),
	.ptr_ack(ptr_ack15),
	.ptr_dout(qc_rd_ptr_dout15)
);

//数据存储区
switch_sram sram(
  .clk(clk), 			
  .sram_wr_a(sram_wr_a), 		
  .sram_addr_a(sram_addr_a[15:0]),	
  .sram_din_a(sram_din_a), 			
  .sram_addr_b(sram_addr_b[15:0]), 			
  .sram_dout_b(sram_dout_b) 	
);
//dpsram_w128_d2k u_data_ram (
//  .clka(clk), 			
//  .wea(sram_wr_a), 		
//  .addra(sram_addr_a[10:0]),	
//  .dina(sram_din_a), 	
//  .douta(), 			
//  .clkb(clk), 		
//  .web(1'b0), 			
//  .addrb(sram_addr_b[10:0]), 	
//  .dinb(128'b0), 		
//  .doutb(sram_dout_b) 	
//);
endmodule


