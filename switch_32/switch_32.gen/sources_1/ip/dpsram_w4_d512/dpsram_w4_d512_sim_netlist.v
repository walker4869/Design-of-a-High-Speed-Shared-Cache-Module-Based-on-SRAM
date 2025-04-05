// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May  4 14:57:07 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_project/switch/switch.gen/sources_1/ip/dpsram_w4_d512/dpsram_w4_d512_sim_netlist.v
// Design      : dpsram_w4_d512
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpsram_w4_d512,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dpsram_w4_d512
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5369 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "dpsram_w4_d512.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpsram_w4_d512_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22416)
`pragma protect data_block
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
zJOEPLE39dKl2POWHt4L
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
