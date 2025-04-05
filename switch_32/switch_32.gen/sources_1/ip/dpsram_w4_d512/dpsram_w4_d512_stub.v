// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May  4 14:57:07 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado_project/switch/switch.gen/sources_1/ip/dpsram_w4_d512/dpsram_w4_d512_stub.v
// Design      : dpsram_w4_d512
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *)
module dpsram_w4_d512(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="wea[0:0],addra[8:0],dina[3:0],douta[3:0],web[0:0],addrb[8:0],dinb[3:0],doutb[3:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [0:0]wea;
  input [8:0]addra;
  input [3:0]dina;
  output [3:0]douta;
  input clkb /* synthesis syn_isclock = 1 */;
  input [0:0]web;
  input [8:0]addrb;
  input [3:0]dinb;
  output [3:0]doutb;
endmodule
