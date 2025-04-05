`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/03 21:45:17
// Design Name: 
// Module Name: switch_pre
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


//功能：将数据帧分割成多个64字节的信元、扩展位宽
module switch_pre(
input					clk,
input					rstn,
//从frame_process输出的数据帧。
input					sof, // 帧起始信号
input					dv,  // 数据有效信号
input		  	[7:0]	din, // 8位宽的数据输入
//进过位宽变换后与switch_core接口的信号，采用简单队列结构，接口缓冲区位于后级
output	reg		[127:0]	i_cell_data_fifo_dout, // 数据输出（128位宽）
output	reg		 		i_cell_data_fifo_wr,   // 数据输出写使能
output	reg		[15:0]	i_cell_ptr_fifo_dout,  // 指针输出
output	reg				i_cell_ptr_fifo_wr,	   // 指针输出写使能
input					i_cell_bp			   // 后级缓冲区压力指示（？）			
    );
reg	  	[7:0]	word_num;	//记录写入后级电路的128位数据的个数、将word_num循环右移两位（除4），就可以得到写入后级电路的信元个数
reg	  	[4:0]	state;
reg		[3:0]	i_cell_portmap;	 	// 信元端口映射（记录输入数据的特定位）		

//处理完一帧后，状态机将对应的指针写入接口队列，此时写入的不是帧长度，而是当前帧对应的信元数。
//每接收128位数据，就向数据缓冲区写入一次
always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		// 异步复位，初始化所有寄存器
		word_num<=#2  0;  //这两行代码的含义是，在当前时刻之后的 2 个时间单位，将 word_num 和 state 变量的值设置为 0。
		state<=#2  0;
		i_cell_data_fifo_dout<=#2  0;
		i_cell_portmap<=#2  0;
		i_cell_data_fifo_wr<=#2  0;
		i_cell_ptr_fifo_dout<=#2  0;
		i_cell_ptr_fifo_wr<=#2  0;	
		end
	else begin
		// 默认状态，每周期关闭写使能
		i_cell_data_fifo_wr<=#2  0;
		i_cell_ptr_fifo_wr<=#2  0;
		case(state)
		0:begin
			word_num<=#2  0;
			if(sof & !i_cell_bp)begin
				// 如果是帧的开始，并且后级无压力，则开始处理
				i_cell_data_fifo_dout[127:120]<=#2  din;
				i_cell_portmap<=#2  din[3:0]; //提取port信息
				state<=#2  1;
				end
			end

		// 以下各状态负责逐步将输入的8位数据装填到128位宽的输出数据寄存器中
		1:begin
			i_cell_data_fifo_dout[119:112]<=#2  din;
			state<=#2  2;
			end
		2:begin
			i_cell_data_fifo_dout[111:104]<=#2  din;
			state<=#2  3;
			end
		3:begin
			i_cell_data_fifo_dout[103:96]<=#2  din;
			state<=#2  4;
			end
		4:begin
			i_cell_data_fifo_dout[95:88]<=#2  din;
			state<=#2  5;
			end
		5:begin
			i_cell_data_fifo_dout[87:80]<=#2  din;
			state<=#2  6;
			end
		6:begin
			i_cell_data_fifo_dout[79:72]<=#2  din;
			state<=#2  7;
			end
		7:begin
			i_cell_data_fifo_dout[71:64]<=#2  din;
			state<=#2  8;
		  end
		8:begin
			i_cell_data_fifo_dout[63:56]<=#2  din;
			state<=#2  9;
			end
		9:begin
			i_cell_data_fifo_dout[55:48]<=#2  din;
			state<=#2  10;
			end
		10:begin
			i_cell_data_fifo_dout[47:40]<=#2  din;
			state<=#2  11;
			end
		11:begin
			i_cell_data_fifo_dout[39:32]<=#2  din;
			state<=#2  12;
			end
		12:begin
			i_cell_data_fifo_dout[31:24]<=#2  din;
			state<=#2  13;
			end
		13:begin
			i_cell_data_fifo_dout[23:16]<=#2  din;
			state<=#2  14;
			end
		14:begin
			i_cell_data_fifo_dout[15:8]<=#2  din;
			state<=#2  15;
		  end
		15:begin
			 // 完成一个128位宽的数据块的装填
			i_cell_data_fifo_dout[7:0]<=#2  din;
			i_cell_data_fifo_wr<=#2  1;
			word_num<=#2  word_num+1;
			state<=#2  16;
		  end
		16:begin
			// 检查是否还有更多数据需要处理
			if(dv) begin
				i_cell_data_fifo_dout[127:120]<=#2  din;
				state<=#2 1;
				end
			else begin
				// 如果没有更多数据，则输出当前信元的指针信息
				i_cell_ptr_fifo_dout<=#2  {4'b0,i_cell_portmap[3:0],2'b0,word_num[7:2]}; //指针包括：Port信息、有多少个信元（行数除4）
				i_cell_ptr_fifo_wr<=#2  1;
				state<=#2 0;
				end
			end
		endcase
		end
endmodule
