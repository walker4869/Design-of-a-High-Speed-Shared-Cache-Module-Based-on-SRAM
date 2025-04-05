// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu May 16 21:42:05 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado_project/switch_32/switch_32.gen/sources_1/ip/sfifo_ft_w14_d1024/sfifo_ft_w14_d1024_stub.v
// Design      : sfifo_ft_w14_d1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *)
module sfifo_ft_w14_d1024(clk, srst, din, wr_en, rd_en, dout, full, empty, 
  data_count)
/* synthesis syn_black_box black_box_pad_pin="srst,din[13:0],wr_en,rd_en,dout[13:0],full,empty,data_count[10:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input srst;
  input [13:0]din;
  input wr_en;
  input rd_en;
  output [13:0]dout;
  output full;
  output empty;
  output [10:0]data_count;
endmodule
