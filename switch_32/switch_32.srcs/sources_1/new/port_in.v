`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/19 15:41:49
// Design Name: 
// Module Name: port_in
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


module port_in(
input               rstn,
input               clk,
//传入接口的接收信号
input               rx_clk,
input               wr_vld, //数据有效
input       [7:0]   wr_data,  //传入数据

//更新--添加
input wr_sop,
input wr_eop,
output full,
output almost_full,

//传给后级合路模块的接口信号
input               data_fifo_rd, 
output      [7:0]   data_fifo_dout, //存入fifo的数据
input               ptr_fifo_rd,     
output      [15:0]  ptr_fifo_dout,  //存入fifo的指针
output              ptr_fifo_empty
);

//parameter CRC_RESULT_VALUE=32'h1a7fd255;

wire    nib_cnt_clr; //接收计数器的清零控制信号
reg     [2:0]   state;
reg     [11:0]  nib_cnt; //接收计数器

always @(posedge rx_clk  or negedge rstn)begin
    if(!rstn)begin 
        nib_cnt<=#2 0;
    end
    else if(nib_cnt_clr) nib_cnt<=#2 1;   //当sop拉高一周期，然后valid信号拉高时，重新开始计数
    else if(!wr_vld & state==2) nib_cnt<=#2 nib_cnt;  //当数据包传输过程中valid变低，即暂停传输时，计数器暂停
    else begin
        nib_cnt<=#2 nib_cnt+1;        
    end
end

wire    [11:0]  data_fifo_depth;
reg     [15:0]  ptr_fifo_din;
reg             ptr_fifo_wr;
wire            ptr_fifo_full;
reg             write_en;    //内部的数据有效标志。
wire    [31:0]  crc_result;
wire			bp;

assign bp=(data_fifo_depth>2578) | ptr_fifo_full; 

//============================================  
//主状态机
//============================================  
always @(posedge rx_clk  or negedge rstn)
    if(!rstn)begin
        state<=#2 0;
        ptr_fifo_din<=#2 0;
        ptr_fifo_wr<=#2 0;
        write_en<=#2 0;
        end
    else begin
        case(state)
        0: begin
            if(wr_sop && !bp)begin   //如果是wr_sop拉高，且无压力
                    state<=#2 1;   
                end
            else state<=#2 0;
            end
        1:begin               
            if(wr_vld)begin    //如果一周期后sop变低，且vld拉高
                write_en<=#2 1;                  //write_en拉高，写使能打开   
                state<=#2 2;           //进入state 2等待数据包结束信号
            end
            else state<=#2 0;
            end
        2:begin      
            if((!wr_vld) && (!wr_eop))begin          
                write_en<=#2 0;
                state<=#2 4 ;
            end                      
            else if((wr_eop)&&(!wr_vld))begin                   //数据包结束
                write_en<=#2 0;
                ptr_fifo_din[11:0]<=#2 nib_cnt[11:0];  //将数据包长度信息写本数据包的指针（标志）
                if((nib_cnt[11:0]<64) | (nib_cnt[11:0]>1024))ptr_fifo_din[14]<=#2 1'b1;   //数据包长度不合法，第14位拉高
                    else ptr_fifo_din[14]<=#2 1'b0;
                //if(crc_result==CRC_RESULT_VALUE)
                ptr_fifo_din[15]<=#2 1'b0;//CRC数据校验通过，第15位拉低
                   // else ptr_fifo_din[15]<=#2 1'b1;                       //CRC数据校验不通过，第15位拉高
                ptr_fifo_wr<=#2 1;      //写指针使能拉高，发给指针FIFO
                state<=#2 3;
                end   
            end
        3:begin
            ptr_fifo_wr<=#2 0;
            state<=#2 0;
            end
        4:begin
            if(wr_vld)begin
                state<=#2 2;
                write_en<=#2 1; 
                end
            else state<=#2 4;
            end
        endcase
        end

assign  nib_cnt_clr=(wr_vld & (state==1)); //接收计数器清零
assign  full=(data_fifo_depth>2578); //数据FIFO满
assign  almost_full=(data_fifo_depth>2578); //数据FIFO将满

//============================================  
//被调用的模块
//============================================  
//crc32_8023 u_crc32_8023(
//    .clk(rx_clk), 
//    .reset(!rstn), 
//    .d(wr_data), 
//    .load_init(wr_sop),
//    .calc(write_en), 
//    .d_valid(write_en), 
//    .crc_reg(crc_result), 
//    .crc()
//    );

afifo_w8_d4k u_data_fifo (
  .rst(!rstn),                      // input rst
  .wr_clk(rx_clk),                  // input wr_clk
  .rd_clk(clk),                     // input rd_clk
  .din(wr_data),              // input [15 : 0] din
  .wr_en(write_en),        // input wr_en
  .rd_en(data_fifo_rd),             // input rd_en
  .dout(data_fifo_dout),            // output [15 : 0]       
  .full(), 
  .empty(), 
  .rd_data_count(), 				// output [11 : 0] rd_data_count
  .wr_data_count(data_fifo_depth) 	// output [11 : 0] wr_data_count
);

afifo_w16_d32 u_ptr_fifo (
  .rst(!rstn),                      // input rst
  .wr_clk(rx_clk),                  // input wr_clk
  .rd_clk(clk),                     // input rd_clk
  .din(ptr_fifo_din),               // input [15 : 0] din
  .wr_en(ptr_fifo_wr),              // input wr_en
  .rd_en(ptr_fifo_rd),              // input rd_en
  .dout(ptr_fifo_dout),             // output [15 : 0] dout
  .full(ptr_fifo_full),             // output full
  .empty(ptr_fifo_empty)            // output empty
);
endmodule
