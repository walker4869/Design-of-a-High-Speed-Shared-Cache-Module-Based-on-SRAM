`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/15 22:20:55
// Design Name: 
// Module Name: switch_sram
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


module switch_sram(
    input					clk,
    //写入端口
    input		            sram_wr_a,	//使能信号
    input					[15:0] sram_addr_a,	//写入地址
    input				    [127:0]sram_din_a, //写入数据
    //读出端口
    input					[15:0] sram_addr_b,	//读出地址
    output				    [127:0]sram_dout_b //读出数据
    );
    //reg [31:0] ohw;
reg [31:0] ohr;
//写模块
wire sram_wr_a0;
wire sram_wr_a1;
wire sram_wr_a2;
wire sram_wr_a3;
wire sram_wr_a4;
wire sram_wr_a5;
wire sram_wr_a6;
wire sram_wr_a7;
wire sram_wr_a8;
wire sram_wr_a9;
wire sram_wr_a10;
wire sram_wr_a11;
wire sram_wr_a12;
wire sram_wr_a13;
wire sram_wr_a14;
wire sram_wr_a15;
wire sram_wr_a16;
wire sram_wr_a17;
wire sram_wr_a18;
wire sram_wr_a19;
wire sram_wr_a20;
wire sram_wr_a21;
wire sram_wr_a22;
wire sram_wr_a23;
wire sram_wr_a24;
wire sram_wr_a25;
wire sram_wr_a26;
wire sram_wr_a27;
wire sram_wr_a28;
wire sram_wr_a29;
wire sram_wr_a30;
wire sram_wr_a31;
//使能
assign sram_wr_a0=sram_wr_a&(sram_addr_a[15:11]==0);
assign sram_wr_a1=sram_wr_a&(sram_addr_a[15:11]==1);
assign sram_wr_a2=sram_wr_a&(sram_addr_a[15:11]==2);
assign sram_wr_a3=sram_wr_a&(sram_addr_a[15:11]==3);
assign sram_wr_a4=sram_wr_a&(sram_addr_a[15:11]==4);
assign sram_wr_a5=sram_wr_a&(sram_addr_a[15:11]==5);
assign sram_wr_a6=sram_wr_a&(sram_addr_a[15:11]==6);
assign sram_wr_a7=sram_wr_a&(sram_addr_a[15:11]==7);
assign sram_wr_a8=sram_wr_a&(sram_addr_a[15:11]==8);
assign sram_wr_a9=sram_wr_a&(sram_addr_a[15:11]==9);
assign sram_wr_a10=sram_wr_a&(sram_addr_a[15:11]==10);
assign sram_wr_a11=sram_wr_a&(sram_addr_a[15:11]==11);
assign sram_wr_a12=sram_wr_a&(sram_addr_a[15:11]==12);
assign sram_wr_a13=sram_wr_a&(sram_addr_a[15:11]==13);
assign sram_wr_a14=sram_wr_a&(sram_addr_a[15:11]==14);
assign sram_wr_a15=sram_wr_a&(sram_addr_a[15:11]==15);
assign sram_wr_a16=sram_wr_a&(sram_addr_a[15:11]==16);
assign sram_wr_a17=sram_wr_a&(sram_addr_a[15:11]==17);
assign sram_wr_a18=sram_wr_a&(sram_addr_a[15:11]==18);
assign sram_wr_a19=sram_wr_a&(sram_addr_a[15:11]==19);
assign sram_wr_a20=sram_wr_a&(sram_addr_a[15:11]==20);
assign sram_wr_a21=sram_wr_a&(sram_addr_a[15:11]==21);
assign sram_wr_a22=sram_wr_a&(sram_addr_a[15:11]==22);
assign sram_wr_a23=sram_wr_a&(sram_addr_a[15:11]==23);
assign sram_wr_a24=sram_wr_a&(sram_addr_a[15:11]==24);
assign sram_wr_a25=sram_wr_a&(sram_addr_a[15:11]==25);
assign sram_wr_a26=sram_wr_a&(sram_addr_a[15:11]==26);
assign sram_wr_a27=sram_wr_a&(sram_addr_a[15:11]==27);
assign sram_wr_a28=sram_wr_a&(sram_addr_a[15:11]==28);
assign sram_wr_a29=sram_wr_a&(sram_addr_a[15:11]==29);
assign sram_wr_a30=sram_wr_a&(sram_addr_a[15:11]==30);
assign sram_wr_a31=sram_wr_a&(sram_addr_a[15:11]==31);

//读模块
wire sram_wr_b0;
wire sram_wr_b1;
wire sram_wr_b2;
wire sram_wr_b3;
wire sram_wr_b4;
wire sram_wr_b5;
wire sram_wr_b6;
wire sram_wr_b7;
wire sram_wr_b8;
wire sram_wr_b9;
wire sram_wr_b10;
wire sram_wr_b11;
wire sram_wr_b12;
wire sram_wr_b13;
wire sram_wr_b14;
wire sram_wr_b15;
wire sram_wr_b16;
wire sram_wr_b17;
wire sram_wr_b18;
wire sram_wr_b19;
wire sram_wr_b20;
wire sram_wr_b21;
wire sram_wr_b22;
wire sram_wr_b23;
wire sram_wr_b24;
wire sram_wr_b25;
wire sram_wr_b26;
wire sram_wr_b27;
wire sram_wr_b28;
wire sram_wr_b29;
wire sram_wr_b30;
wire sram_wr_b31;

wire [127:0] sram_dout_b0;
wire [127:0] sram_dout_b1;
wire [127:0] sram_dout_b2;
wire [127:0] sram_dout_b3;
wire [127:0] sram_dout_b4;
wire [127:0] sram_dout_b5;
wire [127:0] sram_dout_b6;
wire [127:0] sram_dout_b7;
wire [127:0] sram_dout_b8;
wire [127:0] sram_dout_b9;
wire [127:0] sram_dout_b10;
wire [127:0] sram_dout_b11;
wire [127:0] sram_dout_b12;
wire [127:0] sram_dout_b13;
wire [127:0] sram_dout_b14;
wire [127:0] sram_dout_b15;
wire [127:0] sram_dout_b16;
wire [127:0] sram_dout_b17;
wire [127:0] sram_dout_b18;
wire [127:0] sram_dout_b19;
wire [127:0] sram_dout_b20;
wire [127:0] sram_dout_b21;
wire [127:0] sram_dout_b22;
wire [127:0] sram_dout_b23;
wire [127:0] sram_dout_b24;
wire [127:0] sram_dout_b25;
wire [127:0] sram_dout_b26;
wire [127:0] sram_dout_b27;
wire [127:0] sram_dout_b28;
wire [127:0] sram_dout_b29;
wire [127:0] sram_dout_b30;
wire [127:0] sram_dout_b31;

//对应使能信号
assign sram_wr_b0=(sram_addr_b[15:11]==0);
assign sram_wr_b1=(sram_addr_b[15:11]==1);
assign sram_wr_b2=(sram_addr_b[15:11]==2);
assign sram_wr_b3=(sram_addr_b[15:11]==3);
assign sram_wr_b4=(sram_addr_b[15:11]==4);
assign sram_wr_b5=(sram_addr_b[15:11]==5);
assign sram_wr_b6=(sram_addr_b[15:11]==6);
assign sram_wr_b7=(sram_addr_b[15:11]==7);
assign sram_wr_b8=(sram_addr_b[15:11]==8);
assign sram_wr_b9=(sram_addr_b[15:11]==9);
assign sram_wr_b10=(sram_addr_b[15:11]==10);
assign sram_wr_b11=(sram_addr_b[15:11]==11);
assign sram_wr_b12=(sram_addr_b[15:11]==12);
assign sram_wr_b13=(sram_addr_b[15:11]==13);
assign sram_wr_b14=(sram_addr_b[15:11]==14);
assign sram_wr_b15=(sram_addr_b[15:11]==15);
assign sram_wr_b16=(sram_addr_b[15:11]==16);
assign sram_wr_b17=(sram_addr_b[15:11]==17);
assign sram_wr_b18=(sram_addr_b[15:11]==18);
assign sram_wr_b19=(sram_addr_b[15:11]==19);
assign sram_wr_b20=(sram_addr_b[15:11]==20);
assign sram_wr_b21=(sram_addr_b[15:11]==21);
assign sram_wr_b22=(sram_addr_b[15:11]==22);
assign sram_wr_b23=(sram_addr_b[15:11]==23);
assign sram_wr_b24=(sram_addr_b[15:11]==24);
assign sram_wr_b25=(sram_addr_b[15:11]==25);
assign sram_wr_b26=(sram_addr_b[15:11]==26);
assign sram_wr_b27=(sram_addr_b[15:11]==27);
assign sram_wr_b28=(sram_addr_b[15:11]==28);
assign sram_wr_b29=(sram_addr_b[15:11]==29);
assign sram_wr_b30=(sram_addr_b[15:11]==30);
assign sram_wr_b31=(sram_addr_b[15:11]==31);


assign sram_dout_b=(sram_addr_b[15:11]==0)?sram_dout_b0:
                   ((sram_addr_b[15:11]==1)?sram_dout_b1:
                   ((sram_addr_b[15:11]==2)?sram_dout_b2:
                   ((sram_addr_b[15:11]==3)?sram_dout_b3:
                   ((sram_addr_b[15:11]==4)?sram_dout_b4:
                   ((sram_addr_b[15:11]==5)?sram_dout_b5:
                   ((sram_addr_b[15:11]==6)?sram_dout_b6:
                   ((sram_addr_b[15:11]==7)?sram_dout_b7:
                   ((sram_addr_b[15:11]==8)?sram_dout_b8:
                   ((sram_addr_b[15:11]==9)?sram_dout_b9:
                   ((sram_addr_b[15:11]==10)?sram_dout_b10:
                   ((sram_addr_b[15:11]==11)?sram_dout_b11:
                   ((sram_addr_b[15:11]==12)?sram_dout_b12:
                   ((sram_addr_b[15:11]==13)?sram_dout_b13:
                   ((sram_addr_b[15:11]==14)?sram_dout_b14:
                   ((sram_addr_b[15:11]==15)?sram_dout_b15:
                   ((sram_addr_b[15:11]==16)?sram_dout_b16:
                   ((sram_addr_b[15:11]==17)?sram_dout_b17:
                   ((sram_addr_b[15:11]==18)?sram_dout_b18:
                   ((sram_addr_b[15:11]==19)?sram_dout_b19:
                   ((sram_addr_b[15:11]==20)?sram_dout_b20:
                   ((sram_addr_b[15:11]==21)?sram_dout_b21:
                   ((sram_addr_b[15:11]==22)?sram_dout_b22:
                   ((sram_addr_b[15:11]==23)?sram_dout_b23:
                   ((sram_addr_b[15:11]==24)?sram_dout_b24:
                   ((sram_addr_b[15:11]==25)?sram_dout_b25:
                   ((sram_addr_b[15:11]==26)?sram_dout_b26:
                   ((sram_addr_b[15:11]==27)?sram_dout_b27:
                   ((sram_addr_b[15:11]==28)?sram_dout_b28:
                   ((sram_addr_b[15:11]==29)?sram_dout_b29:
                   ((sram_addr_b[15:11]==30)?sram_dout_b30:sram_dout_b31
                   ))))))))))))))))))))))))))))));


sram_w128_d2k sram0 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a0),      // input wire ena
  .wea(sram_wr_a0),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b0),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b0)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram1 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a1),      // input wire ena
  .wea(sram_wr_a1),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b1),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b1)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram2 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a2),      // input wire ena
  .wea(sram_wr_a2),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b2),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b2)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram3 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a3),      // input wire ena
  .wea(sram_wr_a3),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b3),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b3)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram4 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a4),      // input wire ena
  .wea(sram_wr_a4),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b4),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b4)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram5 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a5),      // input wire ena
  .wea(sram_wr_a5),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b5),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b5)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram6 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a6),      // input wire ena
  .wea(sram_wr_a6),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b6),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b6)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram7 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a7),      // input wire ena
  .wea(sram_wr_a7),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b7),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b7)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram8 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a8),      // input wire ena
  .wea(sram_wr_a8),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b8),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b8)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram9 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a9),      // input wire ena
  .wea(sram_wr_a9),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b9),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b9)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram10 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a10),      // input wire ena
  .wea(sram_wr_a10),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b10),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b10)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram11 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a11),      // input wire ena
  .wea(sram_wr_a11),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b11),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b11)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram12 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a12),      // input wire ena
  .wea(sram_wr_a12),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b12),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b12)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram13 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a13),      // input wire ena
  .wea(sram_wr_a13),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b13),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b13)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram14 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a14),      // input wire ena
  .wea(sram_wr_a14),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b14),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b14)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram15 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a15),      // input wire ena
  .wea(sram_wr_a15),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b15),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b15)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram16 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a16),      // input wire ena
  .wea(sram_wr_a16),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b16),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b16)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram17 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a17),      // input wire ena
  .wea(sram_wr_a17),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b17),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b17)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram18 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a18),      // input wire ena
  .wea(sram_wr_a18),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b18),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b18)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram19 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a19),      // input wire ena
  .wea(sram_wr_a19),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b19),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b19)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram20 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a20),      // input wire ena
  .wea(sram_wr_a20),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b20),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b20)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram21 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a21),      // input wire ena
  .wea(sram_wr_a21),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b21),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b21)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram22 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a22),      // input wire ena
  .wea(sram_wr_a22),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b22),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b22)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram23 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a23),      // input wire ena
  .wea(sram_wr_a23),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b23),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b23)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram24 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a24),      // input wire ena
  .wea(sram_wr_a24),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b24),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b24)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram25 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a25),      // input wire ena
  .wea(sram_wr_a25),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b25),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b25)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram26 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a26),      // input wire ena
  .wea(sram_wr_a26),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b26),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b26)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram27 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a27),      // input wire ena
  .wea(sram_wr_a27),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b27),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b27)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram28 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a28),      // input wire ena
  .wea(sram_wr_a28),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b28),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b28)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram29 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a29),      // input wire ena
  .wea(sram_wr_a29),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b29),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b29)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram30 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a30),      // input wire ena
  .wea(sram_wr_a30),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b30),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b30)  // output wire [127 : 0] doutb
);
sram_w128_d2k sram31 (
  .clka(clk),    // input wire clka
  .ena(sram_wr_a31),      // input wire ena
  .wea(sram_wr_a31),      // input wire [0 : 0] wea
  .addra(sram_addr_a[10:0]),  // input wire [10 : 0] addra
  .dina(sram_din_a),    // input wire [127 : 0] dina
  .clkb(clk),    // input wire clkb
  .enb(sram_wr_b31),      // input wire enb
  .addrb(sram_addr_b[10:0]),  // input wire [10 : 0] addrb
  .doutb(sram_dout_b31)  // output wire [127 : 0] doutb
);
endmodule
