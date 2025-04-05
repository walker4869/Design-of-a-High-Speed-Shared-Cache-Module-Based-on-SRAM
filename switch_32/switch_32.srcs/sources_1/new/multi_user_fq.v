`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/03 21:46:22
// Design Name: 
// Module Name: multi_user_fq
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

//这段Verilog代码实现了一个多用户的先入先出（FIFO）队列管理模块，用于管理一个共享的SRAM缓冲区的自由指针队列。
//在初始化过程中，该模块将从0到511的自由指针写入FIFO中，用于表示SRAM中可用的地址。
//在每个时钟周期中，根据状态机的状态，模块会执行不同的操作：
//首先等待FIFO完成复位操作，然后进行指针初始化操作，逐个将0到511的自由指针写入FIFO中。
//一旦FIFO中存满了512个自由指针，状态机将停止指针初始化操作。
//当写入状态机需要读取信元时，模块将从FIFO中取出一个自由指针用于生成信元写入SRAM的地址。
//这一实现原理通过状态机控制，定期向FIFO写入自由指针，以及在需要时从FIFO中读取自由指针来管理SRAM中可用的地址，实现了一个先入先出的自由指针队列。
module multi_user_fq(
input					clk,
input					rstn,

input		  [15:0]	ptr_din, //读出状态机传入
input					FQ_rd,   //写入状态机传入
input  					FQ_wr,
output		  [13:0]		ptr_dout_s,
output		  			ptr_fifo_empty
    );
reg	  [2:0]		FQ_state; 
reg	  [13:0]		addr_cnt;  //深度计数
reg	  [13:0]		ptr_fifo_din;
reg				ptr_fifo_wr;
		
always@(posedge clk or negedge rstn)
	if(!rstn)
		begin
		FQ_state<=#2 0;
		addr_cnt<=#2 0;
		ptr_fifo_wr<=#2 0;
		end
	else
		begin
		ptr_fifo_wr<=#2 0;
		ptr_fifo_din<=#2 ptr_din[13:0];
		//下面状态机中添加了几个过渡状态，是为了等待fifo完成复位操作
		case(FQ_state)
		0:FQ_state<=#2 1;
		1:FQ_state<=#2 2;
		2:FQ_state<=#2 3;
		3:FQ_state<=#2 4;
		//在状态4，进行指针初始化操作，将0-511共512个指针写入
		//指针缓冲区，这里指针的位宽为10位，最大可以支持1024个指针
		4:begin				
			ptr_fifo_din<=#2 addr_cnt;
			if(addr_cnt<14'h3fff) 		//5+9
				addr_cnt<=#2 addr_cnt+1;
			if(ptr_fifo_din<14'h3fff)	
				ptr_fifo_wr<=#2 1;
			else begin
				FQ_state<=#2 5;
				ptr_fifo_wr<=#2 0;
				end
			end
		5:begin					//归还自由指针			
			if(FQ_wr)ptr_fifo_wr<=#2 1;		// 如果写使能信号为高电平，设置FIFO写使能信号为高电平
			end
		endcase
	end


//注意，这里sfifo_ft_w10_d512表示此fifo的位宽为10位，深度为512
//采用fall_through模式的fifo，其读操作方式与通用fifo不同
sfifo_ft_w14_d1024 u_ptr_fifo(
	.clk(clk),
	.srst(!rstn),
	.din(ptr_fifo_din[13:0]),
	.wr_en(ptr_fifo_wr),
	.rd_en(FQ_rd),
	.dout(ptr_dout_s[13:0]),
	.full(),
	.empty(ptr_fifo_empty),
	.data_count()	
	);

endmodule
/*在状态4中，是自由指针队列的初始化阶段。该状态的目标是将0到511共512个指针写入自由指针队列。以下是对状态4中实现原理的详细解释：

初始化条件检查：
在状态4开始时，首先将要写入的指针值设置为addr_cnt，这是一个计数器，从0开始递增。
通过条件检查确保指针值小于511，以确保不超出队列的范围。
指针写入操作：
在初始化阶段，ptr_fifo_din中存储的数据为当前的指针值addr_cnt。
如果指针值小于511，则将写使能信号ptr_fifo_wr置为1，表示可以将当前指针值写入自由指针队列。
这样，每个时钟周期，一个新的指针值将被写入自由指针队列中。
状态转移：
如果指针值超过511，表示已经初始化完所有的指针，状态机将转移到状态5。
在状态5中，等待写入状态机请求从自由指针队列中读取指针。*/

/*在状态5中，是等待写入状态机请求从自由指针队列中读取指针的阶段。以下是对状态5中实现原理的详细解释：
等待写入状态机请求：
在状态5中，通过检查写入状态机的请求信号（在代码中为FQ_wr）来确定是否需要向自由指针队列提供指针。
当写入状态机请求读取自由指针时，会将FQ_wr信号置为1。
指针提供操作：
如果写入状态机请求了读取指针，那么在下一个时钟周期，将写入使能信号ptr_fifo_wr置为1，表示可以从自由指针队列中读取指针。
当写入状态机完成读取指针后，会将FQ_wr信号恢复为0，等待下一次读取请求。
状态保持：
在状态5中，并没有改变状态机的状态，因此状态机将保持在状态5直到下一次写入状态机请求读取指针。*/
