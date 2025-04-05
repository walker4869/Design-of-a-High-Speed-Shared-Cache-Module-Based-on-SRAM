`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 20:04:41
// Design Name: 
// Module Name: interface_mux
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


module interface_mux(
input              clk,
input              rstn,
output             rx_data_fifo_rd0,
input     [7:0]     rx_data_fifo_dout0,
output             rx_ptr_fifo_rd0,
input    [15:0]     rx_ptr_fifo_dout0,
input              rx_ptr_fifo_empty0,

output             rx_data_fifo_rd1,
input     [7:0]     rx_data_fifo_dout1,
output             rx_ptr_fifo_rd1,
input     [15:0]    rx_ptr_fifo_dout1,
input              rx_ptr_fifo_empty1,

output             rx_data_fifo_rd2,
input     [7:0]     rx_data_fifo_dout2,
output             rx_ptr_fifo_rd2,
input     [15:0]    rx_ptr_fifo_dout2,
input              rx_ptr_fifo_empty2,

output             rx_data_fifo_rd3,
input     [7:0]     rx_data_fifo_dout3,
output             rx_ptr_fifo_rd3,
input     [15:0]    rx_ptr_fifo_dout3,
input              rx_ptr_fifo_empty3,

output             rx_data_fifo_rd4,
input     [7:0]     rx_data_fifo_dout4,
output             rx_ptr_fifo_rd4,
input    [15:0]     rx_ptr_fifo_dout4,
input              rx_ptr_fifo_empty4,

output             rx_data_fifo_rd5,
input     [7:0]     rx_data_fifo_dout5,
output             rx_ptr_fifo_rd5,
input     [15:0]    rx_ptr_fifo_dout5,
input              rx_ptr_fifo_empty5,

output             rx_data_fifo_rd6,
input     [7:0]     rx_data_fifo_dout6,
output             rx_ptr_fifo_rd6,
input     [15:0]    rx_ptr_fifo_dout6,
input              rx_ptr_fifo_empty6,

output             rx_data_fifo_rd7,
input     [7:0]     rx_data_fifo_dout7,
output             rx_ptr_fifo_rd7,
input     [15:0]    rx_ptr_fifo_dout7,
input              rx_ptr_fifo_empty7,

output             rx_data_fifo_rd8,
input     [7:0]     rx_data_fifo_dout8,
output             rx_ptr_fifo_rd8,
input     [15:0]    rx_ptr_fifo_dout8,
input              rx_ptr_fifo_empty8,

output             rx_data_fifo_rd9,
input     [7:0]     rx_data_fifo_dout9,
output             rx_ptr_fifo_rd9,
input     [15:0]    rx_ptr_fifo_dout9,
input              rx_ptr_fifo_empty9,

output             rx_data_fifo_rd10,
input     [7:0]     rx_data_fifo_dout10,
output             rx_ptr_fifo_rd10,
input     [15:0]    rx_ptr_fifo_dout10,
input              rx_ptr_fifo_empty10,

output             rx_data_fifo_rd11,
input     [7:0]     rx_data_fifo_dout11,
output             rx_ptr_fifo_rd11,
input     [15:0]    rx_ptr_fifo_dout11,
input              rx_ptr_fifo_empty11,

output             rx_data_fifo_rd12,
input     [7:0]     rx_data_fifo_dout12,
output             rx_ptr_fifo_rd12,
input     [15:0]    rx_ptr_fifo_dout12,
input              rx_ptr_fifo_empty12,

output             rx_data_fifo_rd13,
input     [7:0]     rx_data_fifo_dout13,
output             rx_ptr_fifo_rd13,
input     [15:0]    rx_ptr_fifo_dout13,
input              rx_ptr_fifo_empty13,

output             rx_data_fifo_rd14,
input     [7:0]     rx_data_fifo_dout14,
output             rx_ptr_fifo_rd14,
input     [15:0]    rx_ptr_fifo_dout14,
input              rx_ptr_fifo_empty14,

output             rx_data_fifo_rd15,
input     [7:0]     rx_data_fifo_dout15,
output             rx_ptr_fifo_rd15,
input     [15:0]    rx_ptr_fifo_dout15,
input              rx_ptr_fifo_empty15,

input              sfifo_rd,
output    [7:0]     sfifo_dout,
input              ptr_sfifo_rd,
output    [15:0]    ptr_sfifo_dout,
output             ptr_sfifo_empty
);
wire   [3:0]  source_portmap;
wire          bp;
reg    [3:0]  state;
reg           error;
reg           sfifo_wr;//数据FIFO写使能
reg   [7:0]   sfifo_din;//数据FIFO写入数据
wire  [13:0]  sfifo_cnt;//数据FIFO中的数据帧数量
reg          ptr_sfifo_wr;//指针FIFO写使能
reg   [15:0]  ptr_sfifo_din;//指针FIFO写入数据
wire         ptr_sfifo_full;
wire  [15:0]  rx_ptr_fifo_dout;//指针FIFO读出数据
wire  [7:0]   rx_data_fifo_dout;//数据FIFO读出数据
reg          rx_ptr_fifo_rd;//指针FIFO读使能
reg          rx_data_fifo_rd;//数据FIFO读使能
reg   [10:0]  cnt;
reg   [3:0]   sel;
reg   [3:0]   RR;
always@(posedge clk or negedge rstn)begin
    if(!rstn)begin
        state<=#2 0;
        sfifo_wr<=#2 0;
		ptr_sfifo_wr<=#2 0;
        rx_ptr_fifo_rd<=#2 0;
        rx_data_fifo_rd<=#2 0;
        RR<=#2 0;
        sel<=#2 0;
        cnt<=#2 0;
        end
    else  begin
		case(state)
		0:begin//轮询指针FIFO
			if(!bp) begin
				case(RR)
				4'b0000:begin
					if(!rx_ptr_fifo_empty0) begin sel<=#2 0; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0001:begin
					if(!rx_ptr_fifo_empty1) begin sel<=#2 1; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0010:begin
					if(!rx_ptr_fifo_empty2) begin sel<=#2 2; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0011:begin
					if(!rx_ptr_fifo_empty3) begin sel<=#2 3; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0100:begin
					if(!rx_ptr_fifo_empty4) begin sel<=#2 4; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0101:begin
					if(!rx_ptr_fifo_empty5) begin sel<=#2 5; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0110:begin
					if(!rx_ptr_fifo_empty6) begin sel<=#2 6; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b0111:begin
					if(!rx_ptr_fifo_empty7) begin sel<=#2 7; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1000:begin
					if(!rx_ptr_fifo_empty8) begin sel<=#2 8; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1001:begin
					if(!rx_ptr_fifo_empty9) begin sel<=#2 9; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1010:begin
					if(!rx_ptr_fifo_empty10) begin sel<=#2 10; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1011:begin
					if(!rx_ptr_fifo_empty11) begin sel<=#2 11; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1100:begin
					if(!rx_ptr_fifo_empty12) begin sel<=#2 12; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1101:begin
					if(!rx_ptr_fifo_empty13) begin sel<=#2 13; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1110:begin
					if(!rx_ptr_fifo_empty14) begin sel<=#2 14; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty15)begin  sel<=#2 15;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				4'b1111:begin
					if(!rx_ptr_fifo_empty15) begin sel<=#2 15; rx_ptr_fifo_rd<=#2 1;state<=#2 1;     end
					else if(!rx_ptr_fifo_empty0)begin  sel<=#2 0;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty1)begin  sel<=#2 1;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty2)begin  sel<=#2 2;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty3)begin  sel<=#2 3;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty4)begin  sel<=#2 4;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty5)begin  sel<=#2 5;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty6)begin  sel<=#2 6;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty7)begin  sel<=#2 7;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty8)begin  sel<=#2 8;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty9)begin  sel<=#2 9;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty10)begin  sel<=#2 10;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty11)begin  sel<=#2 11;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty12)begin  sel<=#2 12;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty13)begin  sel<=#2 13;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					else if(!rx_ptr_fifo_empty14)begin  sel<=#2 14;rx_ptr_fifo_rd<=#2 1;state<=#2 1; end
					end
				endcase
				end
			end
        1:begin
            if(RR==4'B1111) RR<=#2 0;
            else  RR<=#2 RR+1;//使RR循环在00-11之间
            rx_ptr_fifo_rd<=#2 0;//关闭指针FIFO读使能
            state<=#2 2;
            end
		2:begin
            cnt<=#2 rx_ptr_fifo_dout[10:0];//读出帧长度，包括CRC32校验值
            error<=#2 rx_ptr_fifo_dout[14]|rx_ptr_fifo_dout[15];//读出错误指示
            rx_data_fifo_rd<=#2 1;//打开数据FIFO读使能
            state<=#2 3;
            end
		3:begin
            cnt<=#2 cnt-1;//帧长度减1
            state<=#2 4;
            end
		4:begin
			if(cnt>1)cnt<=#2 cnt-1;//帧长度减1
            else  begin//帧长度减1后为0
                cnt<=#2 0;
                rx_data_fifo_rd<=#2 0;
                state<=#2 5;
                end
            if(cnt>3) sfifo_wr<=#2 !error;	//如果帧长度大于3，则写使能信号为错误指示的反值,即如果数据帧有错误，则不写入数据FIFO
			else sfifo_wr<=#2 0;//CRC32校验值不写入数据FIFO,CRC32校验值占4字节
            sfifo_din<=#2 rx_data_fifo_dout;//写入数据FIFO
            end
		5:begin
            state<=#2 6;
            sfifo_din<=#2 rx_data_fifo_dout;//写入数据FIFO
			ptr_sfifo_din<=#2 {1'b0,source_portmap,rx_ptr_fifo_dout[10:0]};//写入指针FIFO,source_portmap为输入端口映射位图
            end
		6:begin
            sfifo_wr<=#2 0;//关闭数据FIFO写使能
            ptr_sfifo_wr<=#2 !error;//如果数据帧有错误，则不写入指针FIFO
            ptr_sfifo_din<=#2 ptr_sfifo_din-4;	//指针中的帧长度减4，不包括CRC32校验值
            state<=#2 7;
            end 
		7:begin
            ptr_sfifo_wr<=#2 0;//关闭指针FIFO写使能
            state<=#2 0;//完成一个数据帧的合路，进入下一个轮询周期
            end
		endcase
		end
    end
assign     bp=(sfifo_cnt>14866)?1:ptr_sfifo_full;//16384-1518=14866，数据FIFO深度超过阈值或者指针FIFO满时启用背压，防止数据溢出，这里的阈值是根据数据FIFO的深度和数据帧的最大长度计算得到的，数据帧的最大长度为1518字节，数据FIFO的深度为16384字节，因此阈值为16384-1518=14866，即数据FIFO中的数据帧数量超过14866时，启用背压，防止数据溢出。
assign     rx_ptr_fifo_rd0=rx_ptr_fifo_rd&(sel==0);//根据sel信号选择对应的接口队列
assign     rx_ptr_fifo_rd1=rx_ptr_fifo_rd&(sel==1);
assign     rx_ptr_fifo_rd2=rx_ptr_fifo_rd&(sel==2);
assign     rx_ptr_fifo_rd3=rx_ptr_fifo_rd&(sel==3);
assign     rx_ptr_fifo_rd4=rx_ptr_fifo_rd&(sel==4);
assign     rx_ptr_fifo_rd5=rx_ptr_fifo_rd&(sel==5);
assign     rx_ptr_fifo_rd6=rx_ptr_fifo_rd&(sel==6);
assign     rx_ptr_fifo_rd7=rx_ptr_fifo_rd&(sel==7);
assign     rx_ptr_fifo_rd8=rx_ptr_fifo_rd&(sel==8);
assign     rx_ptr_fifo_rd9=rx_ptr_fifo_rd&(sel==9);
assign     rx_ptr_fifo_rd10=rx_ptr_fifo_rd&(sel==10);
assign     rx_ptr_fifo_rd11=rx_ptr_fifo_rd&(sel==11);
assign     rx_ptr_fifo_rd12=rx_ptr_fifo_rd&(sel==12);
assign     rx_ptr_fifo_rd13=rx_ptr_fifo_rd&(sel==13);
assign     rx_ptr_fifo_rd14=rx_ptr_fifo_rd&(sel==14);
assign     rx_ptr_fifo_rd15=rx_ptr_fifo_rd&(sel==15);

assign    rx_data_fifo_rd0=rx_data_fifo_rd&(sel==0);//根据sel信号选择对应的接口队列;
assign    rx_data_fifo_rd1=rx_data_fifo_rd&(sel==1);
assign    rx_data_fifo_rd2=rx_data_fifo_rd&(sel==2);
assign    rx_data_fifo_rd3=rx_data_fifo_rd&(sel==3);
assign    rx_data_fifo_rd4=rx_data_fifo_rd&(sel==4);
assign    rx_data_fifo_rd5=rx_data_fifo_rd&(sel==5);
assign    rx_data_fifo_rd6=rx_data_fifo_rd&(sel==6);
assign    rx_data_fifo_rd7=rx_data_fifo_rd&(sel==7);
assign    rx_data_fifo_rd8=rx_data_fifo_rd&(sel==8);
assign    rx_data_fifo_rd9=rx_data_fifo_rd&(sel==9);
assign    rx_data_fifo_rd10=rx_data_fifo_rd&(sel==10);
assign    rx_data_fifo_rd11=rx_data_fifo_rd&(sel==11);
assign    rx_data_fifo_rd12=rx_data_fifo_rd&(sel==12);
assign    rx_data_fifo_rd13=rx_data_fifo_rd&(sel==13);
assign    rx_data_fifo_rd14=rx_data_fifo_rd&(sel==14);
assign    rx_data_fifo_rd15=rx_data_fifo_rd&(sel==15);

assign    rx_ptr_fifo_dout=(sel==0)?rx_ptr_fifo_dout0://根据sel信号选择对应的接口队列;
                           (sel==1)?rx_ptr_fifo_dout1:
                           (sel==2)?rx_ptr_fifo_dout2:
                           (sel==3)?rx_ptr_fifo_dout3:
                           (sel==4)?rx_ptr_fifo_dout4:
                           (sel==5)?rx_ptr_fifo_dout5:
                           (sel==6)?rx_ptr_fifo_dout6:
                           (sel==7)?rx_ptr_fifo_dout7:
                           (sel==8)?rx_ptr_fifo_dout8:
                           (sel==9)?rx_ptr_fifo_dout9:
                           (sel==10)?rx_ptr_fifo_dout10:
                           (sel==11)?rx_ptr_fifo_dout11:
                           (sel==12)?rx_ptr_fifo_dout12:
                           (sel==13)?rx_ptr_fifo_dout13:
                           (sel==14)?rx_ptr_fifo_dout14:rx_ptr_fifo_dout15;
                           
assign    rx_data_fifo_dout=(sel==0)?rx_data_fifo_dout0://根据sel信号选择对应的接口队列;
                            (sel==1)?rx_data_fifo_dout1:
                            (sel==2)?rx_data_fifo_dout2:
                            (sel==3)?rx_data_fifo_dout3:
                            (sel==4)?rx_data_fifo_dout4:
                            (sel==5)?rx_data_fifo_dout5:
                            (sel==6)?rx_data_fifo_dout6:
                            (sel==7)?rx_data_fifo_dout7:
                            (sel==8)?rx_data_fifo_dout8:
                            (sel==9)?rx_data_fifo_dout9:
                            (sel==10)?rx_data_fifo_dout10:
                            (sel==11)?rx_data_fifo_dout11:
                            (sel==12)?rx_data_fifo_dout12:
                            (sel==13)?rx_data_fifo_dout13:
                            (sel==14)?rx_data_fifo_dout14:rx_data_fifo_dout15;
                            
assign    source_portmap=sel;
sfifo_w8_d16k    u_sfifo(//数据FIFO实例化
    .clk(clk),
    .srst(!rstn),
    .din(sfifo_din),
    .wr_en(sfifo_wr),
    .rd_en(sfifo_rd),
    .dout(sfifo_dout),
	.full(), 							
	.empty(), 					
    .data_count(sfifo_cnt)
    );
sfifo_w16_d32   u_ptr_sfifo(//指针FIFO实例化
    .clk(clk),
    .srst(!rstn),
    .din(ptr_sfifo_din),
    .wr_en(ptr_sfifo_wr),
    .rd_en(ptr_sfifo_rd),
    .dout(ptr_sfifo_dout),
    .empty(ptr_sfifo_empty),
    .full(ptr_sfifo_full),
	.data_count()	
    );                                   
endmodule

