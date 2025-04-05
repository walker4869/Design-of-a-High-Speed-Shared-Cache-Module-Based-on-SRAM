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
reg           sfifo_wr;//����FIFOдʹ��
reg   [7:0]   sfifo_din;//����FIFOд������
wire  [13:0]  sfifo_cnt;//����FIFO�е�����֡����
reg          ptr_sfifo_wr;//ָ��FIFOдʹ��
reg   [15:0]  ptr_sfifo_din;//ָ��FIFOд������
wire         ptr_sfifo_full;
wire  [15:0]  rx_ptr_fifo_dout;//ָ��FIFO��������
wire  [7:0]   rx_data_fifo_dout;//����FIFO��������
reg          rx_ptr_fifo_rd;//ָ��FIFO��ʹ��
reg          rx_data_fifo_rd;//����FIFO��ʹ��
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
		0:begin//��ѯָ��FIFO
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
            else  RR<=#2 RR+1;//ʹRRѭ����00-11֮��
            rx_ptr_fifo_rd<=#2 0;//�ر�ָ��FIFO��ʹ��
            state<=#2 2;
            end
		2:begin
            cnt<=#2 rx_ptr_fifo_dout[10:0];//����֡���ȣ�����CRC32У��ֵ
            error<=#2 rx_ptr_fifo_dout[14]|rx_ptr_fifo_dout[15];//��������ָʾ
            rx_data_fifo_rd<=#2 1;//������FIFO��ʹ��
            state<=#2 3;
            end
		3:begin
            cnt<=#2 cnt-1;//֡���ȼ�1
            state<=#2 4;
            end
		4:begin
			if(cnt>1)cnt<=#2 cnt-1;//֡���ȼ�1
            else  begin//֡���ȼ�1��Ϊ0
                cnt<=#2 0;
                rx_data_fifo_rd<=#2 0;
                state<=#2 5;
                end
            if(cnt>3) sfifo_wr<=#2 !error;	//���֡���ȴ���3����дʹ���ź�Ϊ����ָʾ�ķ�ֵ,���������֡�д�����д������FIFO
			else sfifo_wr<=#2 0;//CRC32У��ֵ��д������FIFO,CRC32У��ֵռ4�ֽ�
            sfifo_din<=#2 rx_data_fifo_dout;//д������FIFO
            end
		5:begin
            state<=#2 6;
            sfifo_din<=#2 rx_data_fifo_dout;//д������FIFO
			ptr_sfifo_din<=#2 {1'b0,source_portmap,rx_ptr_fifo_dout[10:0]};//д��ָ��FIFO,source_portmapΪ����˿�ӳ��λͼ
            end
		6:begin
            sfifo_wr<=#2 0;//�ر�����FIFOдʹ��
            ptr_sfifo_wr<=#2 !error;//�������֡�д�����д��ָ��FIFO
            ptr_sfifo_din<=#2 ptr_sfifo_din-4;	//ָ���е�֡���ȼ�4��������CRC32У��ֵ
            state<=#2 7;
            end 
		7:begin
            ptr_sfifo_wr<=#2 0;//�ر�ָ��FIFOдʹ��
            state<=#2 0;//���һ������֡�ĺ�·��������һ����ѯ����
            end
		endcase
		end
    end
assign     bp=(sfifo_cnt>14866)?1:ptr_sfifo_full;//16384-1518=14866������FIFO��ȳ�����ֵ����ָ��FIFO��ʱ���ñ�ѹ����ֹ����������������ֵ�Ǹ�������FIFO����Ⱥ�����֡����󳤶ȼ���õ��ģ�����֡����󳤶�Ϊ1518�ֽڣ�����FIFO�����Ϊ16384�ֽڣ������ֵΪ16384-1518=14866��������FIFO�е�����֡��������14866ʱ�����ñ�ѹ����ֹ���������
assign     rx_ptr_fifo_rd0=rx_ptr_fifo_rd&(sel==0);//����sel�ź�ѡ���Ӧ�Ľӿڶ���
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

assign    rx_data_fifo_rd0=rx_data_fifo_rd&(sel==0);//����sel�ź�ѡ���Ӧ�Ľӿڶ���;
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

assign    rx_ptr_fifo_dout=(sel==0)?rx_ptr_fifo_dout0://����sel�ź�ѡ���Ӧ�Ľӿڶ���;
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
                           
assign    rx_data_fifo_dout=(sel==0)?rx_data_fifo_dout0://����sel�ź�ѡ���Ӧ�Ľӿڶ���;
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
sfifo_w8_d16k    u_sfifo(//����FIFOʵ����
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
sfifo_w16_d32   u_ptr_sfifo(//ָ��FIFOʵ����
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

