`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 14:04:41
// Design Name: 
// Module Name: switch_qc
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


module switch_qc(
input					clk,
input					rstn,
//指针写入端口
input		  [15:0]	q_din,	//需要写入指针队列的指针，第16位和第15位分别为尾信元和首信元指示位
input					q_wr,	//指针写使能信号
output					q_full, //输入指针FIFO满信号
//指针读出端口
output					ptr_rdy,	//链表中有完整数据帧，可以进行指针读取
input					ptr_ack,	//指针读信号
output		  [15:0]	ptr_dout	//需要输出的下一个信元对应的指针，第16位和第15位分别为尾信元和首信元指示位
    );

reg	  [15:0]	ptr_din;
reg				ptr_wr;
reg				q_rd;
wire  [15:0]	q_dout;
wire			q_empty;
//输入指针FIFO，用于对写入的指针进行缓冲
sfifo_w16_d32 u_ptr_wr_fifo (
  .clk(clk),
  .srst(!rstn), 
  .din(q_din[15:0]), 
  .wr_en(q_wr), 
  .rd_en(q_rd),
  .dout(q_dout), 
  .full(q_full),
  .empty(q_empty),
  .data_count()
);		
/* wr_state用于进行链表写入申请
 * rd_state用于进行指针读取申请
 * mstate用于进行链表维护
 * 
 * 这样做是因为链表存储于SRAM中，不能同时对链表存储区进行读写操作
 * 因此写入和读出都需要使用请求-应答方式进行
*/
reg	  [1:0]		wr_state;
reg				ptr_wr_ack; // 指针写应答信号
always@(posedge clk or negedge rstn)
	if(!rstn)begin
		ptr_din<=#2  0;
		ptr_wr<=#2  0;
		q_rd<=#2  0;
		wr_state<=#2  0;
		end
	else begin
		//本状态机从输入指针FIFO中读取指针，以请求-应答方式通过mstate写入链表
		case(wr_state)			
		0:begin					
			if(!q_empty)begin
				q_rd<=#2  1;
				wr_state<=#2  1;//不空，可读
				end
		  end
		1:begin
			q_rd<=#2  0;//不可读
			wr_state<=#2  2;
		  end
		2:begin
			ptr_din<=#2  q_dout[15:0];	//把信元的控制帧读入	
			ptr_wr<=#2  1;
			wr_state<=#2  3;
			end
		3:begin
			if(ptr_wr_ack)begin	
				ptr_wr<=#2  0;
				wr_state<=#2  0;
				end
			end
		endcase
		end




reg				ptr_rd;  //指针读出请求寄存器，rd_state用它向mstate发出链表指针读出请求
reg	  [15:0]	ptr_fifo_din; //指针寄存器，用于寄存从链表读出的指针
reg				ptr_rd_ack;	//指针读出应答寄存器，mstate用它向rd_state发送读出应答

reg	  [15:0]	head; //链表头寄存器
reg	  [15:0]	tail; //链表尾寄存器
reg	  [15:0]	depth_cell; //信元深度计数器
reg   			depth_flag; //数据帧深度标识寄存器，depth frame大于0时depth flag为1，否则depth_flag为0
reg	  [15:0]	depth_frame; //数据帧深度计数器

reg	  [15:0]	ptr_ram_din;
wire  [15:0]	ptr_ram_dout;
reg				ptr_ram_wr;
reg   [9:0]		ptr_ram_addr;

reg	  [3:0]		mstate;

always@(posedge clk or negedge rstn)
	if(!rstn)	begin
		mstate<=#2  0;
		ptr_ram_wr<=#2  0;
		ptr_wr_ack<=#2  0;
		head <=#2  0;	
		tail <=#2  0;	
		depth_cell <=#2  0;	
		depth_frame<=#2  0;
		ptr_rd_ack<=#2  0;
		ptr_ram_din<=#2  0;
		ptr_ram_addr<=#2  0;
		ptr_fifo_din<=#2  0;
		depth_flag<=#2 0;
		end
	else begin
		ptr_wr_ack<=#2  0;	
		ptr_rd_ack<=#2  0;	
		ptr_ram_wr<=#2  0;	
		case(mstate)					
		0:begin							
			if(ptr_wr)begin
				mstate<=#2  1;
				end
			else if(ptr_rd)
				begin					
				ptr_fifo_din<=#2  head;
				ptr_ram_addr[9:0]<=#2  head[9:0];
				mstate<=#2  3;
				end
		  end
		  /*状态1,2控制链表写入*/
		1:begin
			//如果当前队列非空，则将指针添加到链表尾部
			if(depth_cell[9:0])	begin	
				ptr_ram_wr<=#2  1;
				ptr_ram_addr[9:0]<=#2  tail[9:0];
				ptr_ram_din[15:0]<=#2  ptr_din[15:0];
				tail<=#2  ptr_din;
				end
			//如果当前队列空，则将指针添加到链表尾部
			else begin
				ptr_ram_wr<=#2  1;			
				ptr_ram_addr[9:0]<=#2  ptr_din[9:0];
				ptr_ram_din[15:0]<=#2  ptr_din[15:0];
				tail<=#2  ptr_din;
				head<=#2  ptr_din;
				end	
			//信元深度计数器的值加1。如果当前信元为数据帧尾信元（ptr_din[15]为1），则数据帧深度计数器加1
			depth_cell<=#2 depth_cell+1;
			if(ptr_din[15])	begin		
				depth_flag<=#2 1;
				depth_frame<=#2 depth_frame+1;
				end
			ptr_wr_ack<=#2  1;				
			mstate<=#2  2;
			end
		2:begin
			ptr_ram_addr<=#2  tail[9:0];
			ptr_ram_din	<=#2  tail[15:0];
			ptr_ram_wr<=#2  1;
			mstate<=#2  0;
		  end
		/*状态3,4控制链表读出*/
		3:begin
			ptr_rd_ack<=#2  1;				
			mstate<=#2  4;
		  end
		4:begin
			//读出一个指针后，更新head，将信元计数器的值减1. 
			//如果该指针指向的是一个数据帧尾信元（head[15]为1），则数据帧深度计数器减1
			//如果其值减1后为0，则depth_flag清零
			head<=#2  ptr_ram_dout;
			depth_cell<=#2 depth_cell-1;
			if(head[15]) begin
				depth_frame<=#2  depth_frame-1;
				if(depth_frame>1) depth_flag<=#2 1;
				else depth_flag<=#2 0;
				end
			mstate<=#2  0;
		  end
		endcase
		end
/*rd_state指针是读出申请状态机
 * 在存储输出指针的FIFO非满且链表中有完整数据帧对应的指针时，
 * 申请读出链表当前的头指针并缓冲在fifo中，供队列管理器中的读出状态机读取
*/		
reg   [2:0]	rd_state;
wire		ptr_full;
wire		ptr_empty;
assign ptr_rdy=!ptr_empty;	

always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		ptr_rd<=#2  0;	
		rd_state<=#2  0;
		end
	else
		begin
		case(rd_state)					
		0:begin							
			if(depth_flag && !ptr_full)begin
				rd_state<=#2  1;
				ptr_rd<=#2  1;
				end
		  end
		1:begin
			if(ptr_rd_ack)begin
				ptr_rd<=#2  0;
				rd_state<=#2  2;
				end
			end
		2:rd_state<=#2  0;
		endcase
		end
//指针链表存储区
sram_w16_d512 u_ptr_ram (
  .clka(clk), 			
  .wea(ptr_ram_wr),     
  .addra(ptr_ram_addr[8:0]), 
  .dina(ptr_ram_din),   
  .douta(ptr_ram_dout) 
);		
//缓存输出指针的FIFO，采用fall_through模式
sfifo_ft_w16_d32 u_ptr_fifo0 (
  .clk(clk),
  .srst(!rstn), 					
  .din(ptr_fifo_din[15:0]), 	
  .wr_en(ptr_rd_ack), 	
  .rd_en(ptr_ack), 	
  .dout(ptr_dout[15:0]), 		
  .full(ptr_full), 		
  .empty(ptr_empty),
  .data_count()  
);
endmodule
