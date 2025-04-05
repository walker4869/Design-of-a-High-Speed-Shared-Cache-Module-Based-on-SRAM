`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 20:16:38
// Design Name: 
// Module Name: tb1
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

module tb1;
// Inputs
reg clk;
//数据包来源的时钟
reg rx_clk_0;
reg rx_clk_1;
reg rx_clk_2;
reg rx_clk_3;
reg rx_clk_4;
reg rx_clk_5;
reg rx_clk_6;
reg rx_clk_7;
reg rx_clk_8;
reg rx_clk_9;
reg rx_clk_10;
reg rx_clk_11;
reg rx_clk_12;
reg rx_clk_13;
reg rx_clk_14;
reg rx_clk_15;

reg rstn;
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
//时钟频率设定
always #2     clk=~clk;
always #10    rx_clk_0=~rx_clk_0;
always #10    rx_clk_1=~rx_clk_1;
always #10    rx_clk_2=~rx_clk_2;
always #10    rx_clk_3=~rx_clk_3;
always #10    rx_clk_4=~rx_clk_4;
always #10    rx_clk_5=~rx_clk_5;
always #10    rx_clk_6=~rx_clk_6;
always #10    rx_clk_7=~rx_clk_7;
always #20    rx_clk_8=~rx_clk_8;
always #20    rx_clk_9=~rx_clk_9;
always #20    rx_clk_10=~rx_clk_10;
always #20    rx_clk_11=~rx_clk_11;
always #20    rx_clk_12=~rx_clk_12;
always #20    rx_clk_13=~rx_clk_13;
always #20    rx_clk_14=~rx_clk_14;
always #20    rx_clk_15=~rx_clk_15;

//前置
//reg [31:0]    fcs=32'h1234_5678;
reg          bp;
reg          bp0,bp1,bp2,bp3,bp4,bp5,bp6,bp7,bp8,bp9,bp10,bp11,bp12,bp13,bp14,bp15;

wire         sof;
wire         dv;
wire  [7:0]   data;

wire         sfifo_rd;
wire  [7:0]   sfifo_dout;
wire         ptr_sfifo_rd;
wire  [15:0]  ptr_sfifo_dout;
wire         ptr_sfifo_empty;


//16个输入端口
//有效信号
reg wr_vld_0;
reg wr_vld_1;
reg wr_vld_2;
reg wr_vld_3;
reg wr_vld_4;
reg wr_vld_5;
reg wr_vld_6;
reg wr_vld_7;
reg wr_vld_8;
reg wr_vld_9;
reg wr_vld_10;
reg wr_vld_11;
reg wr_vld_12;
reg wr_vld_13;
reg wr_vld_14;
reg wr_vld_15;
//开始信号
reg wr_sop_0;
reg wr_sop_1;
reg wr_sop_2;
reg wr_sop_3;
reg wr_sop_4;
reg wr_sop_5;
reg wr_sop_6;
reg wr_sop_7;
reg wr_sop_8;
reg wr_sop_9;
reg wr_sop_10;
reg wr_sop_11;
reg wr_sop_12;
reg wr_sop_13;
reg wr_sop_14;
reg wr_sop_15;
//结束信号
reg wr_eop_0;
reg wr_eop_1;
reg wr_eop_2;
reg wr_eop_3;
reg wr_eop_4;
reg wr_eop_5;
reg wr_eop_6;
reg wr_eop_7;
reg wr_eop_8;
reg wr_eop_9;
reg wr_eop_10;
reg wr_eop_11;
reg wr_eop_12;
reg wr_eop_13;
reg wr_eop_14;
reg wr_eop_15;
//端口数据
reg [7:0] rx_d_0;
reg [7:0] rx_d_1;
reg [7:0] rx_d_2;
reg [7:0] rx_d_3;
reg [7:0] rx_d_4;
reg [7:0] rx_d_5;
reg [7:0] rx_d_6;
reg [7:0] rx_d_7;
reg [7:0] rx_d_8;
reg [7:0] rx_d_9;
reg [7:0] rx_d_10;
reg [7:0] rx_d_11;
reg [7:0] rx_d_12;
reg [7:0] rx_d_13;
reg [7:0] rx_d_14;
reg [7:0] rx_d_15;
//使能
wire data_fifo_rd_0;
wire data_fifo_rd_1;
wire data_fifo_rd_2;
wire data_fifo_rd_3;
wire data_fifo_rd_4;
wire data_fifo_rd_5;
wire data_fifo_rd_6;
wire data_fifo_rd_7;
wire data_fifo_rd_8;
wire data_fifo_rd_9;
wire data_fifo_rd_10;
wire data_fifo_rd_11;
wire data_fifo_rd_12;
wire data_fifo_rd_13;
wire data_fifo_rd_14;
wire data_fifo_rd_15;

wire ptr_fifo_rd_0;
wire ptr_fifo_rd_1;
wire ptr_fifo_rd_2;
wire ptr_fifo_rd_3;
wire ptr_fifo_rd_4;
wire ptr_fifo_rd_5;
wire ptr_fifo_rd_6;
wire ptr_fifo_rd_7;
wire ptr_fifo_rd_8;
wire ptr_fifo_rd_9;
wire ptr_fifo_rd_10;
wire ptr_fifo_rd_11;
wire ptr_fifo_rd_12;
wire ptr_fifo_rd_13;
wire ptr_fifo_rd_14;
wire ptr_fifo_rd_15;

//fifo输出
wire [7:0] data_fifo_dout_0;
wire [7:0] data_fifo_dout_1;
wire [7:0] data_fifo_dout_2;
wire [7:0] data_fifo_dout_3;
wire [7:0] data_fifo_dout_4;
wire [7:0] data_fifo_dout_5;
wire [7:0] data_fifo_dout_6;
wire [7:0] data_fifo_dout_7;
wire [7:0] data_fifo_dout_8;
wire [7:0] data_fifo_dout_9;
wire [7:0] data_fifo_dout_10;
wire [7:0] data_fifo_dout_11;
wire [7:0] data_fifo_dout_12;
wire [7:0] data_fifo_dout_13;
wire [7:0] data_fifo_dout_14;
wire [7:0] data_fifo_dout_15;

wire [15:0] ptr_fifo_dout_0;
wire [15:0] ptr_fifo_dout_1;
wire [15:0] ptr_fifo_dout_2;
wire [15:0] ptr_fifo_dout_3;
wire [15:0] ptr_fifo_dout_4;
wire [15:0] ptr_fifo_dout_5;
wire [15:0] ptr_fifo_dout_6;
wire [15:0] ptr_fifo_dout_7;
wire [15:0] ptr_fifo_dout_8;
wire [15:0] ptr_fifo_dout_9;
wire [15:0] ptr_fifo_dout_10;
wire [15:0] ptr_fifo_dout_11;
wire [15:0] ptr_fifo_dout_12;
wire [15:0] ptr_fifo_dout_13;
wire [15:0] ptr_fifo_dout_14;
wire [15:0] ptr_fifo_dout_15;

wire ptr_fifo_empty_0;
wire ptr_fifo_empty_1;
wire ptr_fifo_empty_2;
wire ptr_fifo_empty_3;
wire ptr_fifo_empty_4;
wire ptr_fifo_empty_5;
wire ptr_fifo_empty_6;
wire ptr_fifo_empty_7;
wire ptr_fifo_empty_8;
wire ptr_fifo_empty_9;
wire ptr_fifo_empty_10;
wire ptr_fifo_empty_11;
wire ptr_fifo_empty_12;
wire ptr_fifo_empty_13;
wire ptr_fifo_empty_14;
wire ptr_fifo_empty_15;

initial  begin
     bp0=0;
     bp1=0;    
     bp2=0;
     bp3=0;
     bp4=0;
     bp5=0;    
     bp6=0;
     bp7=0;
     bp8=0;
     bp9=0;
     bp10=0;
     bp11=0;
     bp12=0;
     bp13=0;
     bp14=0;
     bp15=0;
     rstn=0;
     clk=0;
     bp=0;
    //读出使能
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

    #2;
    clk=0;
    rx_clk_0 = 0;
    rx_clk_1 = 0;
    rx_clk_2 = 0;
    rx_clk_3 = 0;
    rx_clk_4 = 0;
    rx_clk_5 = 0;
    rx_clk_6 = 0;
    rx_clk_7 = 0;
    rx_clk_8 = 0;
    rx_clk_9 = 0;
    rx_clk_10 = 0;
    rx_clk_11 = 0;
    rx_clk_12 = 0;
    rx_clk_13 = 0;
    rx_clk_14 = 0;
    rx_clk_15 = 0;
    
    rx_d_0 = 0;
    rx_d_1 = 0;
    rx_d_2 = 0;
    rx_d_3 = 0;
    rx_d_4 = 0;
    rx_d_5 = 0;
    rx_d_6 = 0;
    rx_d_7 = 0;
    rx_d_8 = 0;
    rx_d_9 = 0;
    rx_d_10 = 0;
    rx_d_11 = 0;
    rx_d_12 = 0;
    rx_d_13 = 0;
    rx_d_14 = 0;
    rx_d_15 = 0;
    
    wr_sop_0 = 0;
    wr_sop_1 = 0;
    wr_sop_2 = 0;
    wr_sop_3 = 0;
    wr_sop_4 = 0;
    wr_sop_5 = 0;
    wr_sop_6 = 0;
    wr_sop_7 = 0;
    wr_sop_8 = 0;
    wr_sop_9 = 0;
    wr_sop_10 = 0;
    wr_sop_11 = 0;
    wr_sop_12 = 0;
    wr_sop_13 = 0;
    wr_sop_14 = 0;
    wr_sop_15 = 0;
    
    wr_eop_0 = 0;
    wr_eop_1 = 0;
    wr_eop_2 = 0;
    wr_eop_3 = 0;
    wr_eop_4 = 0;
    wr_eop_5 = 0;
    wr_eop_6 = 0;
    wr_eop_7 = 0;
    wr_eop_8 = 0;
    wr_eop_9 = 0;
    wr_eop_10 = 0;
    wr_eop_11 = 0;
    wr_eop_12 = 0;
    wr_eop_13 = 0;
    wr_eop_14 = 0;
    wr_eop_15 = 0;
    
    wr_vld_0 = 0;
    wr_vld_1 = 0;
    wr_vld_2 = 0;
    wr_vld_3 = 0;
    wr_vld_4 = 0;
    wr_vld_5 = 0;
    wr_vld_6 = 0;
    wr_vld_7 = 0;
    wr_vld_8 = 0;
    wr_vld_9 = 0;
    wr_vld_10 = 0;
    wr_vld_11 = 0;
    wr_vld_12 = 0;
    wr_vld_13 = 0;
    wr_vld_14 = 0;
    wr_vld_15 = 0;
    
    repeat(5)@(posedge clk);
    rstn=1;
    #100
    send_mac_frame_1(100,1'b0);
    #100
    send_mac_frame_11(50,1'b0);
   end

task send_mac_frame_1;
input   [10:0]  length;		
input          crc_error_insert;
integer         i;  		
reg     [7:0]   mii_din;	
begin 

    repeat(15)@(posedge rx_clk_1);
    wr_sop_1=1; 
    repeat(1)@(posedge rx_clk_1);
    wr_sop_1=0;
    wr_vld_1 = 1;
    for(i=0;i<length;i=i+1)begin
        if(i==0)
        mii_din=1;
        else if(i==10)
        begin 
        wr_vld_1 = 0;
        repeat(2)@(posedge rx_clk_1);
        wr_vld_1 = 1;
        end
        else
        mii_din={$random}%256;
        //start to send data.
        rx_d_1 = mii_din;
        repeat(1)@(posedge rx_clk_1);
        end  
    wr_eop_1=1;
    wr_vld_1 = 0;
    repeat(1)@(posedge rx_clk_1); 
    wr_eop_1=0;
    //wr_vld_1 = 0;
    end
endtask

task send_mac_frame_11;
input   [10:0]  length;			
input          crc_error_insert;
integer         i;  		
reg     [7:0]   mii_din11;		
begin 

    repeat(15)@(posedge rx_clk_11);
    wr_sop_11=1;

    repeat(1)@(posedge rx_clk_11);
    wr_sop_11=0;
    wr_vld_11 = 1;


    for(i=0;i<length;i=i+1)begin
        if(i==0)
        begin
        mii_din11=9;
        end
        else
        begin
        mii_din11={$random}%256;
        end
        //start to send data.
        rx_d_11 = mii_din11;
        repeat(1)@(posedge rx_clk_11);
        end  
    wr_eop_11=1;
    wr_vld_11 = 0;
    repeat(1)@(posedge rx_clk_11); 
    wr_eop_11=0;;
    end
endtask
//16个端口
port_in u_port0(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_0),
.wr_vld(wr_vld_0), //数据有效
.wr_data(rx_d_0),  //传入数据
.wr_sop(wr_sop_0),
.wr_eop(wr_eop_0),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_0), 
.data_fifo_dout(data_fifo_dout_0), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_0),     
.ptr_fifo_dout(ptr_fifo_dout_0),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_0)
);

port_in u_port1(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_1),
.wr_vld(wr_vld_1), //数据有效
.wr_data(rx_d_1),  //传入数据
.wr_sop(wr_sop_1),
.wr_eop(wr_eop_1),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_1), 
.data_fifo_dout(data_fifo_dout_1), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_1),     
.ptr_fifo_dout(ptr_fifo_dout_1),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_1)
);

port_in u_port2(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_2),
.wr_vld(wr_vld_2), //数据有效
.wr_data(rx_d_2),  //传入数据
.wr_sop(wr_sop_2),
.wr_eop(wr_eop_2),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_2), 
.data_fifo_dout(data_fifo_dout_2), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_2),     
.ptr_fifo_dout(ptr_fifo_dout_2),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_2)
);

port_in u_port3(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_3),
.wr_vld(wr_vld_3), //数据有效
.wr_data(rx_d_3),  //传入数据
.wr_sop(wr_sop_3),
.wr_eop(wr_eop_3),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_3), 
.data_fifo_dout(data_fifo_dout_3), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_3),     
.ptr_fifo_dout(ptr_fifo_dout_3),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_3)
);

port_in u_port4(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_4),
.wr_vld(wr_vld_4), //数据有效
.wr_data(rx_d_4),  //传入数据
.wr_sop(wr_sop_4),
.wr_eop(wr_eop_4),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_4), 
.data_fifo_dout(data_fifo_dout_4), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_4),     
.ptr_fifo_dout(ptr_fifo_dout_4),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_4)
);

port_in u_port5(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_5),
.wr_vld(wr_vld_5), //数据有效
.wr_data(rx_d_5),  //传入数据
.wr_sop(wr_sop_5),
.wr_eop(wr_eop_5),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_5), 
.data_fifo_dout(data_fifo_dout_5), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_5),     
.ptr_fifo_dout(ptr_fifo_dout_5),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_5)
);

port_in u_port6(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_6),
.wr_vld(wr_vld_6), //数据有效
.wr_data(rx_d_6),  //传入数据
.wr_sop(wr_sop_6),
.wr_eop(wr_eop_6),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_6), 
.data_fifo_dout(data_fifo_dout_6), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_6),     
.ptr_fifo_dout(ptr_fifo_dout_6),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_6)
);

port_in u_port7(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_7),
.wr_vld(wr_vld_7), //数据有效
.wr_data(rx_d_7),  //传入数据
.wr_sop(wr_sop_7),
.wr_eop(wr_eop_7),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_7), 
.data_fifo_dout(data_fifo_dout_7), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_7),     
.ptr_fifo_dout(ptr_fifo_dout_7),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_7)
);

port_in u_port8(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_8),
.wr_vld(wr_vld_8), //数据有效
.wr_data(rx_d_8),  //传入数据
.wr_sop(wr_sop_8),
.wr_eop(wr_eop_8),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_8), 
.data_fifo_dout(data_fifo_dout_8), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_8),     
.ptr_fifo_dout(ptr_fifo_dout_8),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_8)
);

port_in u_port9(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_9),
.wr_vld(wr_vld_9), //数据有效
.wr_data(rx_d_9),  //传入数据
.wr_sop(wr_sop_9),
.wr_eop(wr_eop_9),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_9), 
.data_fifo_dout(data_fifo_dout_9), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_9),     
.ptr_fifo_dout(ptr_fifo_dout_9),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_9)
);

port_in u_port10(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_10),
.wr_vld(wr_vld_10), //数据有效
.wr_data(rx_d_10),  //传入数据
.wr_sop(wr_sop_10),
.wr_eop(wr_eop_10),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_10), 
.data_fifo_dout(data_fifo_dout_10), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_10),     
.ptr_fifo_dout(ptr_fifo_dout_10),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_10)
);

port_in u_port11(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_11),
.wr_vld(wr_vld_11), //数据有效
.wr_data(rx_d_11),  //传入数据
.wr_sop(wr_sop_11),
.wr_eop(wr_eop_11),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_11), 
.data_fifo_dout(data_fifo_dout_11), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_11),     
.ptr_fifo_dout(ptr_fifo_dout_11),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_11)
);

port_in u_port12(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_12),
.wr_vld(wr_vld_12), //数据有效
.wr_data(rx_d_12),  //传入数据
.wr_sop(wr_sop_12),
.wr_eop(wr_eop_12),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_12), 
.data_fifo_dout(data_fifo_dout_12), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_12),     
.ptr_fifo_dout(ptr_fifo_dout_12),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_12)
);

port_in u_port13(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_13),
.wr_vld(wr_vld_13), //数据有效
.wr_data(rx_d_13),  //传入数据
.wr_sop(wr_sop_13),
.wr_eop(wr_eop_13),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_13), 
.data_fifo_dout(data_fifo_dout_13), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_13),     
.ptr_fifo_dout(ptr_fifo_dout_13),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_13)
);

port_in u_port14(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_14),
.wr_vld(wr_vld_14), //数据有效
.wr_data(rx_d_14),  //传入数据
.wr_sop(wr_sop_14),
.wr_eop(wr_eop_14),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_14), 
.data_fifo_dout(data_fifo_dout_14), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_14),     
.ptr_fifo_dout(ptr_fifo_dout_14),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_14)
);

port_in u_port15(
.rstn(rstn),
.clk(clk),
.rx_clk(rx_clk_15),
.wr_vld(wr_vld_15), //数据有效
.wr_data(rx_d_15),  //传入数据
.wr_sop(wr_sop_15),
.wr_eop(wr_eop_15),
.full(),
.almost_full(),
.data_fifo_rd(data_fifo_rd_15), 
.data_fifo_dout(data_fifo_dout_15), //存入fifo的数据
.ptr_fifo_rd(ptr_fifo_rd_15),     
.ptr_fifo_dout(ptr_fifo_dout_15),  //存入fifo的指针
.ptr_fifo_empty(ptr_fifo_empty_15)
);


//合路
interface_mux u_interface_mux(
	.clk(clk),
	.rstn(rstn),
	.rx_data_fifo_dout0(data_fifo_dout_0),
	.rx_data_fifo_rd0(data_fifo_rd_0),
	.rx_ptr_fifo_dout0(ptr_fifo_dout_0),
	.rx_ptr_fifo_rd0(ptr_fifo_rd_0),
	.rx_ptr_fifo_empty0(ptr_fifo_empty_0),  
	                                    
	.rx_data_fifo_dout1(data_fifo_dout_1),
	.rx_data_fifo_rd1(data_fifo_rd_1),
	.rx_ptr_fifo_dout1(ptr_fifo_dout_1),
	.rx_ptr_fifo_rd1(ptr_fifo_rd_1),
	.rx_ptr_fifo_empty1(ptr_fifo_empty_1),     
	
	.rx_data_fifo_dout2(data_fifo_dout_2),
	.rx_data_fifo_rd2(data_fifo_rd_2),
	.rx_ptr_fifo_dout2(ptr_fifo_dout_2),
	.rx_ptr_fifo_rd2(ptr_fifo_rd_2),
	.rx_ptr_fifo_empty2(ptr_fifo_empty_2),                                        

	.rx_data_fifo_dout3(data_fifo_dout_3),
	.rx_data_fifo_rd3(data_fifo_rd_3),
	.rx_ptr_fifo_dout3(ptr_fifo_dout_3),
	.rx_ptr_fifo_rd3(ptr_fifo_rd_3),
	.rx_ptr_fifo_empty3(ptr_fifo_empty_3), 
	
	.rx_data_fifo_dout4(data_fifo_dout_4),
	.rx_data_fifo_rd4(data_fifo_rd_4),
	.rx_ptr_fifo_dout4(ptr_fifo_dout_4),
	.rx_ptr_fifo_rd4(ptr_fifo_rd_4),
	.rx_ptr_fifo_empty4(ptr_fifo_empty_4), 
	                                     
	.rx_data_fifo_dout5(data_fifo_dout_5),
	.rx_data_fifo_rd5(data_fifo_rd_5),
	.rx_ptr_fifo_dout5(ptr_fifo_dout_5),
	.rx_ptr_fifo_rd5(ptr_fifo_rd_5),
	.rx_ptr_fifo_empty5(ptr_fifo_empty_5), 
	
	.rx_data_fifo_dout6(data_fifo_dout_6),
	.rx_data_fifo_rd6(data_fifo_rd_6),
	.rx_ptr_fifo_dout6(ptr_fifo_dout_6),
	.rx_ptr_fifo_rd6(ptr_fifo_rd_6),
	.rx_ptr_fifo_empty6(ptr_fifo_empty_6),                                        

	.rx_data_fifo_dout7(data_fifo_dout_7),
	.rx_data_fifo_rd7(data_fifo_rd_7),
	.rx_ptr_fifo_dout7(ptr_fifo_dout_7),
	.rx_ptr_fifo_rd7(ptr_fifo_rd_7),
	.rx_ptr_fifo_empty7(ptr_fifo_empty_7), 
                  
	.rx_data_fifo_dout8(data_fifo_dout_8),
	.rx_data_fifo_rd8(data_fifo_rd_8),
	.rx_ptr_fifo_dout8(ptr_fifo_dout_8),
	.rx_ptr_fifo_rd8(ptr_fifo_rd_8),
	.rx_ptr_fifo_empty8(ptr_fifo_empty_8),              
                                      
	.rx_data_fifo_dout9(data_fifo_dout_9),
	.rx_data_fifo_rd9(data_fifo_rd_9),
	.rx_ptr_fifo_dout9(ptr_fifo_dout_9),
	.rx_ptr_fifo_rd9(ptr_fifo_rd_9),
	.rx_ptr_fifo_empty9(ptr_fifo_empty_9),                                         

	.rx_data_fifo_dout10(data_fifo_dout_10),
	.rx_data_fifo_rd10(data_fifo_rd_10),
	.rx_ptr_fifo_dout10(ptr_fifo_dout_10),
	.rx_ptr_fifo_rd10(ptr_fifo_rd_10),
	.rx_ptr_fifo_empty10(ptr_fifo_empty_10), 
                  
	.rx_data_fifo_dout11(data_fifo_dout_11),
	.rx_data_fifo_rd11(data_fifo_rd_11),
	.rx_ptr_fifo_dout11(ptr_fifo_dout_11),
	.rx_ptr_fifo_rd11(ptr_fifo_rd_11),
	.rx_ptr_fifo_empty11(ptr_fifo_empty_11), 
	
	.rx_data_fifo_dout12(data_fifo_dout_12),
	.rx_data_fifo_rd12(data_fifo_rd_12),
	.rx_ptr_fifo_dout12(ptr_fifo_dout_12),
	.rx_ptr_fifo_rd12(ptr_fifo_rd_12),
	.rx_ptr_fifo_empty12(ptr_fifo_empty_12),             
                                      
	.rx_data_fifo_dout13(data_fifo_dout_13),
	.rx_data_fifo_rd13(data_fifo_rd_13),
	.rx_ptr_fifo_dout13(ptr_fifo_dout_13),
	.rx_ptr_fifo_rd13(ptr_fifo_rd_13),
	.rx_ptr_fifo_empty13(ptr_fifo_empty_13),                                        

	.rx_data_fifo_dout14(data_fifo_dout_14),
	.rx_data_fifo_rd14(data_fifo_rd_14),
	.rx_ptr_fifo_dout14(ptr_fifo_dout_14),
	.rx_ptr_fifo_rd14(ptr_fifo_rd_14),
	.rx_ptr_fifo_empty14(ptr_fifo_empty_14), 
                  
	.rx_data_fifo_dout15(data_fifo_dout_15),
	.rx_data_fifo_rd15(data_fifo_rd_15),
	.rx_ptr_fifo_dout15(ptr_fifo_dout_15),
	.rx_ptr_fifo_rd15(ptr_fifo_rd_15),
	.rx_ptr_fifo_empty15(ptr_fifo_empty_15),                                      
                                      
	.sfifo_rd(sfifo_rd),
	.sfifo_dout(sfifo_dout),
	.ptr_sfifo_rd(ptr_sfifo_rd),
	.ptr_sfifo_dout(ptr_sfifo_dout),
	.ptr_sfifo_empty(ptr_sfifo_empty)
	);                                
//填充模块
frame_process u_frame_process(
    .clk(clk),
	.rstn(rstn),
	.bp0(bp0),
	.bp1(bp1),
	.bp2(bp2),
	.bp3(bp3),
	.bp4(bp4),
	.bp5(bp5),
	.bp6(bp6),
	.bp7(bp7),
	.bp8(bp8),
	.bp9(bp9),
	.bp10(bp10),
	.bp11(bp11),
	.bp12(bp12),
	.bp13(bp13),
	.bp14(bp14),
	.bp15(bp15),
	.sfifo_dout(sfifo_dout),
	.sfifo_rd(sfifo_rd),
	.ptr_sfifo_rd(ptr_sfifo_rd),
	.ptr_sfifo_empty(ptr_sfifo_empty),
	.ptr_sfifo_dout(ptr_sfifo_dout),                                         
	.sof(sof),
	.dv(dv),
	.data(data)                                  
);         
//switch模块
switch_top uut (
	.clk(clk), 
	.rstn(rstn), 
	.sof(sof), 
	.dv(dv), 
	.din(data), 
	
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
