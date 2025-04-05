`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/04 15:14:02
// Design Name: 
// Module Name: switch_top_tb
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

module switch_top_tb;
// Inputs
reg clk;
reg rstn;
reg data_sof;
reg data_dv;
reg [7:0] data_in;
reg ptr_fifo_rd0;
reg ptr_fifo_rd1;
reg ptr_fifo_rd2;
reg ptr_fifo_rd3;
reg ptr_fifo_rd4;
reg ptr_fifo_rd5;
reg ptr_fifo_rd6;
reg ptr_fifo_rd7;
reg ptr_fifo_rd8;
reg ptr_fifo_rd9;
reg ptr_fifo_rd10;
reg ptr_fifo_rd11;
reg ptr_fifo_rd12;
reg ptr_fifo_rd13;
reg ptr_fifo_rd14;
reg ptr_fifo_rd15;
reg data_fifo_rd0;
reg data_fifo_rd1;
reg data_fifo_rd2;
reg data_fifo_rd3;
reg data_fifo_rd4;
reg data_fifo_rd5;
reg data_fifo_rd6;
reg data_fifo_rd7;
reg data_fifo_rd8;
reg data_fifo_rd9;
reg data_fifo_rd10;
reg data_fifo_rd11;
reg data_fifo_rd12;
reg data_fifo_rd13;
reg data_fifo_rd14;
reg data_fifo_rd15;

// Outputs
wire [7:0] data_fifo_dout0;
wire [7:0] data_fifo_dout1;
wire [7:0] data_fifo_dout2;
wire [7:0] data_fifo_dout3;
wire [7:0] data_fifo_dout4;
wire [7:0] data_fifo_dout5;
wire [7:0] data_fifo_dout6;
wire [7:0] data_fifo_dout7;
wire [7:0] data_fifo_dout8;
wire [7:0] data_fifo_dout9;
wire [7:0] data_fifo_dout10;
wire [7:0] data_fifo_dout11;
wire [7:0] data_fifo_dout12;
wire [7:0] data_fifo_dout13;
wire [7:0] data_fifo_dout14;
wire [7:0] data_fifo_dout15;
wire [15:0] ptr_fifo_dout0;
wire [15:0] ptr_fifo_dout1;
wire [15:0] ptr_fifo_dout2;
wire [15:0] ptr_fifo_dout3;
wire [15:0] ptr_fifo_dout4;
wire [15:0] ptr_fifo_dout5;
wire [15:0] ptr_fifo_dout6;
wire [15:0] ptr_fifo_dout7;
wire [15:0] ptr_fifo_dout8;
wire [15:0] ptr_fifo_dout9;
wire [15:0] ptr_fifo_dout10;
wire [15:0] ptr_fifo_dout11;
wire [15:0] ptr_fifo_dout12;
wire [15:0] ptr_fifo_dout13;
wire [15:0] ptr_fifo_dout14;
wire [15:0] ptr_fifo_dout15;
wire ptr_fifo_empty0;
wire ptr_fifo_empty1;
wire ptr_fifo_empty2;
wire ptr_fifo_empty3;
wire ptr_fifo_empty4;
wire ptr_fifo_empty5;
wire ptr_fifo_empty6;
wire ptr_fifo_empty7;
wire ptr_fifo_empty8;
wire ptr_fifo_empty9;
wire ptr_fifo_empty10;
wire ptr_fifo_empty11;
wire ptr_fifo_empty12;
wire ptr_fifo_empty13;
wire ptr_fifo_empty14;
wire ptr_fifo_empty15;

always #2 clk=~clk;

// Instantiate the Unit Under Test (UUT)
switch_top uut (
	.clk(clk), 
	.rstn(rstn), 
	.sof(data_sof), 
	.dv(data_dv), 
	.din(data_in), 
	
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

initial begin
	// Initialize Inputs
	clk = 0;
	rstn = 0;
	data_sof = 0;
	data_dv = 0;
	data_in = 0;
	ptr_fifo_rd0 = 0;
	ptr_fifo_rd1 = 0;
	ptr_fifo_rd2 = 0;
	ptr_fifo_rd3 = 0;
	ptr_fifo_rd4 = 0;
	ptr_fifo_rd5 = 0;
	ptr_fifo_rd6 = 0;
	ptr_fifo_rd7 = 0;
	ptr_fifo_rd8 = 0;
	ptr_fifo_rd9 = 0;
	ptr_fifo_rd10 = 0;
	ptr_fifo_rd11 = 0;
	ptr_fifo_rd12 = 0;
	ptr_fifo_rd13 = 0;
	ptr_fifo_rd14 = 0;
	ptr_fifo_rd15 = 0;
	data_fifo_rd0 = 0;
	data_fifo_rd1 = 0;
	data_fifo_rd2 = 0;
	data_fifo_rd3 = 0;
	data_fifo_rd4 = 0;
	data_fifo_rd5 = 0;
	data_fifo_rd6 = 0;
	data_fifo_rd7 = 0;
	data_fifo_rd8 = 0;
	data_fifo_rd9 = 0;
	data_fifo_rd10 = 0;
	data_fifo_rd11 = 0;
	data_fifo_rd12 = 0;
	data_fifo_rd13 = 0;
	data_fifo_rd14 = 0;
	data_fifo_rd15 = 0;

	// Wait 100 ns for global reset to finish
	#100;
    rstn=1;
	#10_000;
    ptr_fifo_rd0 = 1;
	ptr_fifo_rd1 = 1;
	ptr_fifo_rd2 = 1;
	ptr_fifo_rd3 = 1;
	ptr_fifo_rd4 = 1;
	ptr_fifo_rd5 = 1;
	ptr_fifo_rd6 = 1;
	ptr_fifo_rd7 = 1;
	ptr_fifo_rd8 = 1;
	ptr_fifo_rd9 = 1;
	ptr_fifo_rd10 = 1;
	ptr_fifo_rd11 = 1;
	ptr_fifo_rd12 = 1;
	ptr_fifo_rd13 = 1;
	ptr_fifo_rd14 = 1;
	ptr_fifo_rd15 = 1;
	data_fifo_rd0 = 1;
	data_fifo_rd1 = 1;
	data_fifo_rd2 = 1;
	data_fifo_rd3 = 1;
	data_fifo_rd4 = 1;
	data_fifo_rd5 = 1;
	data_fifo_rd6 = 1;
	data_fifo_rd7 = 1;
	data_fifo_rd8 = 1;
	data_fifo_rd9 = 1;
	data_fifo_rd10 = 1;
	data_fifo_rd11 = 1;
	data_fifo_rd12 = 1;
	data_fifo_rd13 = 1;
	data_fifo_rd14 = 1;
	data_fifo_rd15 = 1;
	// Add stimulus here
	send_frame(126,4'b0011);
//	 ptr_fifo_rd0 = 1;
//	ptr_fifo_rd1 = 1;
//	ptr_fifo_rd2 = 1;
//	ptr_fifo_rd3 = 1;
//	ptr_fifo_rd4 = 1;
//	ptr_fifo_rd5 = 1;
//	ptr_fifo_rd6 = 1;
//	ptr_fifo_rd7 = 1;
//	ptr_fifo_rd8 = 1;
//	ptr_fifo_rd9 = 1;
//	ptr_fifo_rd10 = 1;
//	ptr_fifo_rd11 = 1;
//	ptr_fifo_rd12 = 1;
//	ptr_fifo_rd13 = 1;
//	ptr_fifo_rd14 = 1;
//	ptr_fifo_rd15 = 1;
//	data_fifo_rd0 = 1;
//	data_fifo_rd1 = 1;
//	data_fifo_rd2 = 1;
//	data_fifo_rd3 = 1;
//	data_fifo_rd4 = 1;
//	data_fifo_rd5 = 1;
//	data_fifo_rd6 = 1;
//	data_fifo_rd7 = 1;
//	data_fifo_rd8 = 1;
//	data_fifo_rd9 = 1;
//	data_fifo_rd10 = 1;
//	data_fifo_rd11 = 1;
//	data_fifo_rd12 = 1;
//	data_fifo_rd13 = 1;
//	data_fifo_rd14 = 1;
//	data_fifo_rd15 = 1;
	#100;
	send_frame(129,4'b0001);
	#100;
	send_frame(128,4'b1111);
	#100;
	send_frame(127,4'b1001);
	
	// Add stimulus here
	
end

task send_frame;
input	[11:0]	len;
input	[3:0]	portmap;
integer 		i;
reg		[11:0]	len_with_pad;
begin
	len_with_pad=len;
	if(len[5:0])begin
		len_with_pad=len_with_pad+64;
		len_with_pad={len_with_pad[11:6],6'b0};
		end
	repeat(1)@(posedge clk);
	#2;
	for(i=0;i<len_with_pad;i=i+1)begin
		if(i==0) begin
			data_sof=1;
			data_dv=1;
			data_in={len[11:8],portmap[3:0]};
			end
		else if(i==1) begin
			data_sof=0;
			data_dv=1;
			data_in=len[7:0];
			end
		else begin
			data_in=i[7:0];
			end
		repeat(1)@(posedge clk);
		#2;
		end
	data_dv=0;
	data_in=0;
	end
endtask

endmodule


