`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 15:11:22
// Design Name: 
// Module Name: switch_top
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

module switch_top(
input					clk,
input					rstn,

input					sof,
input					dv,
input		  [7:0]		din,

input					ptr_fifo_rd0,
input					ptr_fifo_rd1,					
input					ptr_fifo_rd2,					
input					ptr_fifo_rd3,
input					ptr_fifo_rd4,
input					ptr_fifo_rd5,
input					ptr_fifo_rd6,
input					ptr_fifo_rd7,
input					ptr_fifo_rd8,
input					ptr_fifo_rd9,
input					ptr_fifo_rd10,
input					ptr_fifo_rd11,
input					ptr_fifo_rd12,
input					ptr_fifo_rd13,
input					ptr_fifo_rd14,
input					ptr_fifo_rd15,
input					data_fifo_rd0,
input					data_fifo_rd1,
input					data_fifo_rd2,
input					data_fifo_rd3,
input					data_fifo_rd4,
input					data_fifo_rd5,
input					data_fifo_rd6,
input					data_fifo_rd7,
input					data_fifo_rd8,
input					data_fifo_rd9,
input					data_fifo_rd10,
input					data_fifo_rd11,
input					data_fifo_rd12,
input					data_fifo_rd13,
input					data_fifo_rd14,
input					data_fifo_rd15,
output	  	 [7:0]		data_fifo_dout0,
output	  	 [7:0]		data_fifo_dout1,
output	  	 [7:0]		data_fifo_dout2,
output	   	 [7:0]		data_fifo_dout3,
output	   	 [7:0]		data_fifo_dout4,     
output	   	 [7:0]		data_fifo_dout5,
output	   	 [7:0]		data_fifo_dout6,
output	   	 [7:0]		data_fifo_dout7,
output	   	 [7:0]		data_fifo_dout8,
output	   	 [7:0]		data_fifo_dout9,
output	   	 [7:0]		data_fifo_dout10,
output	   	 [7:0]		data_fifo_dout11,
output	   	 [7:0]		data_fifo_dout12,
output	   	 [7:0]		data_fifo_dout13,
output	   	 [7:0]		data_fifo_dout14,
output	   	 [7:0]		data_fifo_dout15,
output	   	 [15:0]		ptr_fifo_dout0,
output	   	 [15:0]		ptr_fifo_dout1,
output	   	 [15:0]		ptr_fifo_dout2,
output	   	 [15:0]		ptr_fifo_dout3,
output	   	 [15:0]		ptr_fifo_dout4,
output	   	 [15:0]		ptr_fifo_dout5,
output	   	 [15:0]		ptr_fifo_dout6,
output	   	 [15:0]		ptr_fifo_dout7,
output	   	 [15:0]		ptr_fifo_dout8,
output	   	 [15:0]		ptr_fifo_dout9,
output	   	 [15:0]		ptr_fifo_dout10,
output	   	 [15:0]		ptr_fifo_dout11,
output	   	 [15:0]		ptr_fifo_dout12,
output	   	 [15:0]		ptr_fifo_dout13,
output	   	 [15:0]		ptr_fifo_dout14,
output	   	 [15:0]		ptr_fifo_dout15,
output					ptr_fifo_empty0,
output					ptr_fifo_empty1,
output					ptr_fifo_empty2,
output					ptr_fifo_empty3,		   
output					ptr_fifo_empty4,	
output					ptr_fifo_empty5,
output					ptr_fifo_empty6,
output					ptr_fifo_empty7,
output					ptr_fifo_empty8,
output					ptr_fifo_empty9,
output					ptr_fifo_empty10,
output					ptr_fifo_empty11,
output					ptr_fifo_empty12,
output					ptr_fifo_empty13,
output					ptr_fifo_empty14,
output					ptr_fifo_empty15
    );

wire	[127:0]	i_cell_data_fifo_dout;
wire			i_cell_data_fifo_wr;
wire	[15:0]	i_cell_ptr_fifo_dout;
wire			i_cell_ptr_fifo_wr;	
wire			i_cell_bp;							


wire          	o_cell_fifo_wr;
wire    [15:0]   o_cell_fifo_sel;
wire          	o_cell_first;
wire          	o_cell_last;
wire    [127:0] o_cell_fifo_din;
wire    [7:0]   o_cell_ptr;
wire    [15:0]  	o_cell_bp;

switch_pre	pre(
	.clk(clk),
	.rstn(rstn),
	
	.sof(sof),
	.dv(dv),
	.din(din),
	
	.i_cell_data_fifo_dout(i_cell_data_fifo_dout),
	.i_cell_data_fifo_wr(i_cell_data_fifo_wr),
	.i_cell_ptr_fifo_dout(i_cell_ptr_fifo_dout),
	.i_cell_ptr_fifo_wr(i_cell_ptr_fifo_wr),
	.i_cell_bp(i_cell_bp)							
    );
	
switch_core core(
	.clk(clk),
	.rstn(rstn),
	
	.i_cell_data_fifo_din(i_cell_data_fifo_dout),
	.i_cell_data_fifo_wr(i_cell_data_fifo_wr),
	.i_cell_ptr_fifo_din(i_cell_ptr_fifo_dout),
	.i_cell_ptr_fifo_wr(i_cell_ptr_fifo_wr),
	.i_cell_bp(i_cell_bp),							
	
	.o_cell_fifo_wr(o_cell_fifo_wr),
	.o_cell_fifo_sel(o_cell_fifo_sel),
	.o_cell_fifo_din(o_cell_fifo_din),
	.o_cell_first(o_cell_first),
	.o_cell_last(o_cell_last),
	.o_cell_bp(o_cell_bp)
    );

switch_post_top u_switch_post_top(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_fifo_wr(o_cell_fifo_wr),
	.o_cell_fifo_sel(o_cell_fifo_sel),
	.o_cell_fifo_din(o_cell_fifo_din),
	.o_cell_first(o_cell_first),
	.o_cell_last(o_cell_last),
	.o_cell_bp(o_cell_bp),

	.ptr_fifo_rd0(ptr_fifo_rd0),
	.ptr_fifo_rd1(ptr_fifo_rd1),					
	.ptr_fifo_rd2(ptr_fifo_rd2),					
	.ptr_fifo_rd3(ptr_fifo_rd3),
	.ptr_fifo_rd4(ptr_fifo_rd4),
	.ptr_fifo_rd5(ptr_fifo_rd5),
	.ptr_fifo_rd6(ptr_fifo_rd6),
	.ptr_fifo_rd7(ptr_fifo_rd7),
	.ptr_fifo_rd8(ptr_fifo_rd8),
	.ptr_fifo_rd9(ptr_fifo_rd9),					
	.ptr_fifo_rd10(ptr_fifo_rd10),					
	.ptr_fifo_rd11(ptr_fifo_rd11),
	.ptr_fifo_rd12(ptr_fifo_rd12),
	.ptr_fifo_rd13(ptr_fifo_rd13),
	.ptr_fifo_rd14(ptr_fifo_rd14),
	.ptr_fifo_rd15(ptr_fifo_rd15),
	.data_fifo_rd0(data_fifo_rd0),
	.data_fifo_rd1(data_fifo_rd1),
	.data_fifo_rd2(data_fifo_rd2),
	.data_fifo_rd3(data_fifo_rd3),
	.data_fifo_rd4(data_fifo_rd4),
	.data_fifo_rd5(data_fifo_rd5),
	.data_fifo_rd6(data_fifo_rd6),
	.data_fifo_rd7(data_fifo_rd7),
	.data_fifo_rd8(data_fifo_rd8),
	.data_fifo_rd9(data_fifo_rd9),
	.data_fifo_rd10(data_fifo_rd10),
	.data_fifo_rd11(data_fifo_rd11),
	.data_fifo_rd12(data_fifo_rd12),
	.data_fifo_rd13(data_fifo_rd13),
	.data_fifo_rd14(data_fifo_rd14),
	.data_fifo_rd15(data_fifo_rd15),
	.data_fifo_dout0(data_fifo_dout0),
	.data_fifo_dout1(data_fifo_dout1),
	.data_fifo_dout2(data_fifo_dout2),
	.data_fifo_dout3(data_fifo_dout3),
	.data_fifo_dout4(data_fifo_dout4),
	.data_fifo_dout5(data_fifo_dout5),
	.data_fifo_dout6(data_fifo_dout6),
	.data_fifo_dout7(data_fifo_dout7),
	.data_fifo_dout8(data_fifo_dout8),
	.data_fifo_dout9(data_fifo_dout9),
	.data_fifo_dout10(data_fifo_dout10),
	.data_fifo_dout11(data_fifo_dout11),
	.data_fifo_dout12(data_fifo_dout12),
	.data_fifo_dout13(data_fifo_dout13),
	.data_fifo_dout14(data_fifo_dout14),
	.data_fifo_dout15(data_fifo_dout15),
	.ptr_fifo_dout0(ptr_fifo_dout0),
	.ptr_fifo_dout1(ptr_fifo_dout1),
	.ptr_fifo_dout2(ptr_fifo_dout2),
	.ptr_fifo_dout3(ptr_fifo_dout3),
	.ptr_fifo_dout4(ptr_fifo_dout4),
	.ptr_fifo_dout5(ptr_fifo_dout5),
	.ptr_fifo_dout6(ptr_fifo_dout6),
	.ptr_fifo_dout7(ptr_fifo_dout7),
	.ptr_fifo_dout8(ptr_fifo_dout8),
	.ptr_fifo_dout9(ptr_fifo_dout9),
	.ptr_fifo_dout10(ptr_fifo_dout10),
	.ptr_fifo_dout11(ptr_fifo_dout11),
	.ptr_fifo_dout12(ptr_fifo_dout12),
	.ptr_fifo_dout13(ptr_fifo_dout13),
	.ptr_fifo_dout14(ptr_fifo_dout14),
	.ptr_fifo_dout15(ptr_fifo_dout15),
	.ptr_fifo_empty0(ptr_fifo_empty0),
	.ptr_fifo_empty1(ptr_fifo_empty1),
	.ptr_fifo_empty2(ptr_fifo_empty2),
	.ptr_fifo_empty3(ptr_fifo_empty3),	
	.ptr_fifo_empty4(ptr_fifo_empty4),		
	.ptr_fifo_empty5(ptr_fifo_empty5),
	.ptr_fifo_empty6(ptr_fifo_empty6),
	.ptr_fifo_empty7(ptr_fifo_empty7),
	.ptr_fifo_empty8(ptr_fifo_empty8),
	.ptr_fifo_empty9(ptr_fifo_empty9),
	.ptr_fifo_empty10(ptr_fifo_empty10),	
	.ptr_fifo_empty11(ptr_fifo_empty11),		
	.ptr_fifo_empty12(ptr_fifo_empty12),
	.ptr_fifo_empty13(ptr_fifo_empty13),
	.ptr_fifo_empty14(ptr_fifo_empty14),
	.ptr_fifo_empty15(ptr_fifo_empty15)
    );

endmodule
