// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May  4 14:37:05 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado_project/switch/switch.gen/sources_1/ip/sram_w16_d512/sram_w16_d512_stub.v
// Design      : sram_w16_d512
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *)
module sram_w16_d512(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="wea[0:0],addra[8:0],dina[15:0],douta[15:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [0:0]wea;
  input [8:0]addra;
  input [15:0]dina;
  output [15:0]douta;
endmodule
