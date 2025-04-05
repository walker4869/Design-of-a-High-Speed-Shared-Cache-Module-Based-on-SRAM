`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 15:10:12
// Design Name: 
// Module Name: switch_post_top
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


module switch_post_top(
input					clk,
input					rstn,

input	 				o_cell_fifo_wr,
input	     [15:0]		o_cell_fifo_sel,
input	     [127:0]	o_cell_fifo_din,
input					o_cell_first,
input					o_cell_last,
output	 	 [15:0]		o_cell_bp,

input					data_fifo_rd0,
output	      [7:0]		data_fifo_dout0,
input					ptr_fifo_rd0,
output	      [15:0]	ptr_fifo_dout0,
output					ptr_fifo_empty0,

input					data_fifo_rd1,
output	      [7:0]		data_fifo_dout1,
input					ptr_fifo_rd1,					
output	      [15:0]	ptr_fifo_dout1,
output					ptr_fifo_empty1,

input					data_fifo_rd2,
output	      [7:0]		data_fifo_dout2,
input					ptr_fifo_rd2,					
output	      [15:0]	ptr_fifo_dout2,
output					ptr_fifo_empty2,

input					data_fifo_rd3,
output	      [7:0]		data_fifo_dout3,
input					ptr_fifo_rd3,
output	      [15:0]	ptr_fifo_dout3,
output					ptr_fifo_empty3,	
	
input					data_fifo_rd4,
output	      [7:0]		data_fifo_dout4,
input					ptr_fifo_rd4,
output	      [15:0]	ptr_fifo_dout4,
output					ptr_fifo_empty4,

input					data_fifo_rd5,
output	      [7:0]		data_fifo_dout5,
input					ptr_fifo_rd5,
output	      [15:0]	ptr_fifo_dout5,
output					ptr_fifo_empty5,

input					data_fifo_rd6,
output	      [7:0]		data_fifo_dout6,
input					ptr_fifo_rd6,
output	      [15:0]	ptr_fifo_dout6,
output					ptr_fifo_empty6,

input					data_fifo_rd7,
output	      [7:0]		data_fifo_dout7,
input					ptr_fifo_rd7,
output	      [15:0]	ptr_fifo_dout7,
output					ptr_fifo_empty7,

input					data_fifo_rd8,
output	      [7:0]		data_fifo_dout8,
input					ptr_fifo_rd8,
output	      [15:0]	ptr_fifo_dout8,
output					ptr_fifo_empty8,

input					data_fifo_rd9,
output	      [7:0]		data_fifo_dout9,
input					ptr_fifo_rd9,
output	      [15:0]	ptr_fifo_dout9,
output					ptr_fifo_empty9,

input					data_fifo_rd10,
output	      [7:0]		data_fifo_dout10,
input					ptr_fifo_rd10,
output	      [15:0]	ptr_fifo_dout10,
output					ptr_fifo_empty10,

input					data_fifo_rd11,
output	      [7:0]		data_fifo_dout11,
input					ptr_fifo_rd11,
output	      [15:0]	ptr_fifo_dout11,
output					ptr_fifo_empty11,

input					data_fifo_rd12,
output	      [7:0]		data_fifo_dout12,
input					ptr_fifo_rd12,
output	      [15:0]	ptr_fifo_dout12,
output					ptr_fifo_empty12,

input					data_fifo_rd13,
output	      [7:0]		data_fifo_dout13,
input					ptr_fifo_rd13,
output	      [15:0]	ptr_fifo_dout13,
output					ptr_fifo_empty13,

input					data_fifo_rd14,
output	      [7:0]		data_fifo_dout14,
input					ptr_fifo_rd14,
output	      [15:0]	ptr_fifo_dout14,
output					ptr_fifo_empty14,

input					data_fifo_rd15,
output	      [7:0]		data_fifo_dout15,
input					ptr_fifo_rd15,
output	      [15:0]	ptr_fifo_dout15,
output					ptr_fifo_empty15				
    );

wire	o_cell_data_fifo_bp_0;
wire	o_cell_data_fifo_bp_1;
wire	o_cell_data_fifo_bp_2;
wire	o_cell_data_fifo_bp_3;
wire	o_cell_data_fifo_bp_4;
wire	o_cell_data_fifo_bp_5;
wire	o_cell_data_fifo_bp_6;
wire	o_cell_data_fifo_bp_7;
wire 	o_cell_data_fifo_bp_8;
wire 	o_cell_data_fifo_bp_9;
wire 	o_cell_data_fifo_bp_10;
wire 	o_cell_data_fifo_bp_11;
wire 	o_cell_data_fifo_bp_12;
wire 	o_cell_data_fifo_bp_13;
wire 	o_cell_data_fifo_bp_14;
wire 	o_cell_data_fifo_bp_15;

assign  o_cell_bp={o_cell_data_fifo_bp_15,o_cell_data_fifo_bp_14,o_cell_data_fifo_bp_13,o_cell_data_fifo_bp_12,
				   o_cell_data_fifo_bp_11,o_cell_data_fifo_bp_10,o_cell_data_fifo_bp_9,o_cell_data_fifo_bp_8,
				   o_cell_data_fifo_bp_7,o_cell_data_fifo_bp_6,o_cell_data_fifo_bp_5,o_cell_data_fifo_bp_4,
				   o_cell_data_fifo_bp_3,o_cell_data_fifo_bp_2,o_cell_data_fifo_bp_1,o_cell_data_fifo_bp_0};

switch_post post0(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[0]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_0),
	
	.ptr_fifo_rd(ptr_fifo_rd0),
	.ptr_fifo_dout(ptr_fifo_dout0),
	.ptr_fifo_empty(ptr_fifo_empty0),
	.data_fifo_rd(data_fifo_rd0),
	.data_fifo_dout(data_fifo_dout0)
	);

	
switch_post post1(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[1]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_1),
	
	.ptr_fifo_rd(ptr_fifo_rd1),
	.ptr_fifo_dout(ptr_fifo_dout1),
	.ptr_fifo_empty(ptr_fifo_empty1),
	.data_fifo_rd(data_fifo_rd1),
	.data_fifo_dout(data_fifo_dout1)
	);
	
switch_post post2(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[2]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_2),
	
	.ptr_fifo_rd(ptr_fifo_rd2),
	.ptr_fifo_dout(ptr_fifo_dout2),
	.ptr_fifo_empty(ptr_fifo_empty2),
	.data_fifo_rd(data_fifo_rd2),
	.data_fifo_dout(data_fifo_dout2)
	);
	
switch_post post3(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[3]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_3),
	
	.ptr_fifo_rd(ptr_fifo_rd3),
	.ptr_fifo_dout(ptr_fifo_dout3),
	.ptr_fifo_empty(ptr_fifo_empty3),
	.data_fifo_rd(data_fifo_rd3),
	.data_fifo_dout(data_fifo_dout3)
	);
	
switch_post post4(
    .clk(clk),
    .rstn(rstn),

    .o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[4]),
    .o_cell_data_fifo_din(o_cell_fifo_din),
    .o_cell_data_first(o_cell_first),
    .o_cell_data_last(o_cell_last),
    .o_cell_data_fifo_bp(o_cell_data_fifo_bp_4),

    .ptr_fifo_rd(ptr_fifo_rd4),
    .ptr_fifo_dout(ptr_fifo_dout4),
    .ptr_fifo_empty(ptr_fifo_empty4),
    .data_fifo_rd(data_fifo_rd4),
    .data_fifo_dout(data_fifo_dout4)
    );
    
switch_post post5(
    .clk(clk),
    .rstn(rstn),

    .o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[5]),
    .o_cell_data_fifo_din(o_cell_fifo_din),
    .o_cell_data_first(o_cell_first),
    .o_cell_data_last(o_cell_last),
    .o_cell_data_fifo_bp(o_cell_data_fifo_bp_5),

    .ptr_fifo_rd(ptr_fifo_rd5),
    .ptr_fifo_dout(ptr_fifo_dout5),
    .ptr_fifo_empty(ptr_fifo_empty5),
    .data_fifo_rd(data_fifo_rd5),
    .data_fifo_dout(data_fifo_dout5)
    );

switch_post post6(
    .clk(clk),
    .rstn(rstn),

    .o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[6]),
    .o_cell_data_fifo_din(o_cell_fifo_din),
    .o_cell_data_first(o_cell_first),
    .o_cell_data_last(o_cell_last),
    .o_cell_data_fifo_bp(o_cell_data_fifo_bp_6),

    .ptr_fifo_rd(ptr_fifo_rd6),
    .ptr_fifo_dout(ptr_fifo_dout6),
    .ptr_fifo_empty(ptr_fifo_empty6),
    .data_fifo_rd(data_fifo_rd6),
    .data_fifo_dout(data_fifo_dout6)
    );  

switch_post post7(
    .clk(clk),
    .rstn(rstn),

    .o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[7]),
    .o_cell_data_fifo_din(o_cell_fifo_din),
    .o_cell_data_first(o_cell_first),
    .o_cell_data_last(o_cell_last),
    .o_cell_data_fifo_bp(o_cell_data_fifo_bp_7),

    .ptr_fifo_rd(ptr_fifo_rd7),
    .ptr_fifo_dout(ptr_fifo_dout7),
    .ptr_fifo_empty(ptr_fifo_empty7),
    .data_fifo_rd(data_fifo_rd7),
    .data_fifo_dout(data_fifo_dout7)
    );

switch_post post8(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[8]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_8),
	
	.ptr_fifo_rd(ptr_fifo_rd8),
	.ptr_fifo_dout(ptr_fifo_dout8),
	.ptr_fifo_empty(ptr_fifo_empty8),
	.data_fifo_rd(data_fifo_rd8),
	.data_fifo_dout(data_fifo_dout8)
	);

switch_post post9(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[9]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_9),
	
	.ptr_fifo_rd(ptr_fifo_rd9),
	.ptr_fifo_dout(ptr_fifo_dout9),
	.ptr_fifo_empty(ptr_fifo_empty9),
	.data_fifo_rd(data_fifo_rd9),
	.data_fifo_dout(data_fifo_dout9)
	);

switch_post post10(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[10]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_10),
	
	.ptr_fifo_rd(ptr_fifo_rd10),
	.ptr_fifo_dout(ptr_fifo_dout10),
	.ptr_fifo_empty(ptr_fifo_empty10),
	.data_fifo_rd(data_fifo_rd10),
	.data_fifo_dout(data_fifo_dout10)
	);

switch_post post11(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[11]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_11),
	
	.ptr_fifo_rd(ptr_fifo_rd11),
	.ptr_fifo_dout(ptr_fifo_dout11),
	.ptr_fifo_empty(ptr_fifo_empty11),
	.data_fifo_rd(data_fifo_rd11),
	.data_fifo_dout(data_fifo_dout11)
	);

switch_post post12(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[12]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_12),
	
	.ptr_fifo_rd(ptr_fifo_rd12),
	.ptr_fifo_dout(ptr_fifo_dout12),
	.ptr_fifo_empty(ptr_fifo_empty12),
	.data_fifo_rd(data_fifo_rd12),
	.data_fifo_dout(data_fifo_dout12)
	);

switch_post post13(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[13]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_13),
	
	.ptr_fifo_rd(ptr_fifo_rd13),
	.ptr_fifo_dout(ptr_fifo_dout13),
	.ptr_fifo_empty(ptr_fifo_empty13),
	.data_fifo_rd(data_fifo_rd13),
	.data_fifo_dout(data_fifo_dout13)
	);

switch_post post14(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[14]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_14),
	
	.ptr_fifo_rd(ptr_fifo_rd14),
	.ptr_fifo_dout(ptr_fifo_dout14),
	.ptr_fifo_empty(ptr_fifo_empty14),
	.data_fifo_rd(data_fifo_rd14),
	.data_fifo_dout(data_fifo_dout14)
	);

switch_post post15(
	.clk(clk),
	.rstn(rstn),
	
	.o_cell_data_fifo_wr(o_cell_fifo_wr && o_cell_fifo_sel[15]),
	.o_cell_data_fifo_din(o_cell_fifo_din),
	.o_cell_data_first(o_cell_first),
	.o_cell_data_last(o_cell_last),
	.o_cell_data_fifo_bp(o_cell_data_fifo_bp_15),
	
	.ptr_fifo_rd(ptr_fifo_rd15),
	.ptr_fifo_dout(ptr_fifo_dout15),
	.ptr_fifo_empty(ptr_fifo_empty15),
	.data_fifo_rd(data_fifo_rd15),
	.data_fifo_dout(data_fifo_dout15)
	);
    
    
endmodule