// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May  4 14:37:05 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_project/switch/switch.gen/sources_1/ip/sram_w16_d512/sram_w16_d512_sim_netlist.v
// Design      : sram_w16_d512
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sram_w16_d512,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module sram_w16_d512
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "sram_w16_d512.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sram_w16_d512_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20320)
`pragma protect data_block
BVaghaGglJ/eiuF9gfaAMdVBcSrx50NZ9Yxjmzr7HykdlGFF81pghbwtKKo9M2D/kF5Jusqw+/vl
rF/iQGKZq2cZ9gcnuBN4Z/NfpPuLQTpWet0lrKbsjn4+S8SMPRC/f/PMNwOP1qKIEQueQUJISrr+
YDvSnUKdzbtFMPgyJ3vvP5fQOYjlu72IONaplO/kt8JE448qmxfPnzWpB6Ru6sVrbmdNQb7D0hW0
dTSflMGueCbzIS1Sz1q4nx+tFPm+MSgYvsBjVBsYz1na10ZWUovZABZA7Tts2Axnp7VwIznwCR/c
/+hWykCRCQZkE82yo50mf5w3Hjel/VU7d8V5F7OybtPS1nX4I25iCmaezFtyfDXJLDEyNrC2MnaE
FKPMhs59ob8qz+10nbRXApQ4Fw1k8USIKgRxhKZFKC3VhlOHIDgFREsUua99S6UrIV9SMfgwRG8i
ZLqFvixR/gFkqoo9020EaMarH63Q3eWdpajNnRr4cx2O6t90gRTK0AuhSVzN1J9vnZeCSj/arl8/
AURz+yGGgvoLEx2F8cYmNOEd3+NHzsT58uwHSto2VerqEfF/OBIWdXm+mfcwWDhpzIdqSKdU72Gv
UH/uDcdB87wKLmo6tquKFDQ80OnYLp6qGIrsldv1G4BAT3F7gJUxc0PdF9KdKbbVoIWYfoz647bI
mv2nycjpqoqdPZlDVGtQ8tPZWl2hU5dG2JjyFPmaVDo1FSg0NhWG3F5RvEEGxXGZxffUO30tuMCP
vxK48XR9SGQdRToJP8nKOWde1jbDuFI4nheISNI+0gK7P4rXL9CyTjM+9fewpU9tXPUZYLE2PRoH
1fafnUyReqw3Yl6+mzYzTp8IrQsXywNkEu1Rf8v8PfQ5kPe2dxXcJ5xiByW/honfFEPSbYLfwjEF
9aj27kpcrxZEP83VAB/lMlcVqedk/UTShHefTDi7vAHbf1jnjwVOjCWOGqBsqZc6OtXXp4bI9dYo
dliT7uUehdduyOGAGOqTckpDj2rtyc6gC4G1jkMhKLRwOmNXXDpHhiOvckDMQ8QWdVdxuIL/NteE
16dN+gu4V6T2fCsOcvMjJQfXrvoQtoGkZwdi56wL66FI7SyJlXj/Xb4PFldQ9xJhIq/0Myt7vPWy
8+rtwSG9OlzrHmwlpz5Cl8K/HmIsGsHCA1pVpcb/iZodNqSHoUQuJO7TDKmpGT5EO8X6CnkQ2yFN
hTr9EHrZdVut/x5tAJU/cPnZNfwFKRFhjIqmuil3hqmJ4Zv+7kQjYWHutvrYrr2yzGBAc6LEo2AT
iJiMPghLNXU9qcYppX/ztWq2DyNw0kdVt0iI46QLaK3SgRTHFG0LoEnR+eu/KV6sCfKMD3vREF5Q
K6S0p/4LQUz98ftiyobmSuZyJOcT6Rh3bbcDG/igZ3QSEM6NKORLHfmkYFwOunyJUmcTet/pBlN2
yP/ou8c0Uy5TV63fUaonwosDy4U3cmV17H28Wg+80xk00l/Ykz4UyM8K05XS6RCLAdQxuxHahLfp
sTxHgsnRE6OIVOG4HsUQn98vT7MANNvwzD0ymA3ITmPFbDeNKFyhYnOJ5wt9p4FwFL/QqESzqEET
5zGFZw/PDV519Zlvo6Sxf1Q99pyc6nNc303lUzmzN6Hfz083IBSPuP5sGYGjT87zaV0GjGeNTB4e
Gt7GyvKtflzXloENLt1afTi039tNk8atE7klJ+Wylx4mcMZ69IX3QWe4JN5UexnPmLzN5XvzQ8y9
rULjbStgbLqcgZWzTLcqsZ6hGQrl9tE3UHL6n1S1Q/oXFVq/uaK/+8OTsrNarpY6WTUPgFI8TxYs
rPQwf8pY4Ept3izH+PGP5kxmCpjS5wNo5UVHlmPwlaxyJo5exQsfSVXt7aNVoXl2mycKoIKTXqiE
wS7mQ3i1fbPQYT3tUOgovtl55b+oCoeYhrkHQtXpHArj3+WSFxB2Zg7CLmXD3vTX+tRUUaTrlhr1
ECGTIAt/tcg9omUkETMGen4SUdAiLkT+jseeDORVUifO90TGWEjzuSB6aJ9ZZ/L8NfhGLKhrS9fI
6KxAwudCYeH4+8CNHEpXPqxahSW10IyHN/R3hrGZe61wBJJKKpteT4bnDCfji8jzxqtPUPnUHtDs
p81Wow65n/8kZQzSfQx/TzPekGRkxoVGNy7ZmZINEoSjgBkix84BJBxbESxsvWgjnKmoAmbEX0Si
G1FIctaiymXqEOE0KuIYTBiPwSifU7kxyFf+zUi7jaWf2Eiok6diEZXZdE28Ck0OTRy4TuoNBF+4
DLx94V5QJaUS9QIqYho3bO11K2L3m0UR3VfnuyGRsTQwthq+6TfKmeOW8aN3h/zONb6qNT4KN46H
G72XELCgsurC5pbaNkT+LyszIaiWNb3nSTGEJ11b8Gqtzo8zcQYYutPPxibwjM7x1SAyEupAcKXS
3Ae9wxrvRwuPBO/fnUTPOVTsKt4AohUNhsyUQuSUtER6e6e0So3ilv8DhqcTdAFPZq7TyqWh9Ax4
bvhzTX26/a/K/hwbG8UFnjjLQX/VhqcL3Ei4OHpyUhEVbe6cckJTZN5LYZhqkpAwgolUXatWP24J
o0OyUp4/7w8Z+wgGiMAbquxs28VFlLfIP5ReD09+gkGwT4Cu4bE2jax/YkzaZ1wTkB4n2WFRo/7D
6DtMawqBVHEE303i3ZXwup74qmRwnjQutMRg2N1UbZOf0+MCNHPHqD+T0WQVa0GpEBWe8xFQ9lnb
1sUT7PtkVpPdwHMF01auzYeDfrWYvWykWfxeQyHB0OYbK93uEXLcYzKHzIHf3BlHi2AuWQdqPOOJ
8Y/dBH1juVK3d4jaiB1S+uazWR1PxKCQTDvBuA0REXbm+ms9uNoS1oZ1kzHg87a+B9UySUSdiysX
VHl1oxfKohro9B6VQuv/Q1UivYAVxrC+/hGaqg/0GGXwm7A5Yu7q5gCRykdhBqsZJUMLFn3ov14a
ap+JhoqE+5eZ7Y8BCAJfMFd3dKzzfsY/R9TpQkpduYy2P4fjhv3un3dBzDqD77NByZmFsV3Lgky4
NdqM+QTXi+HfDA2SyHRTjIH/hMrUOyGc1yxyvLkeA9RF1/3r+kGjj7E4VKwpv/vxFE9LcpEgh3wq
vIN7yz/gTzWeMtXqNo3Nxo/FJGOA764XzHC3SWVROwhf9FV+0KWYDNKAZhmrxoY3BTzZMTBeFAQT
YRt7jFKdjKk1KbWsUPsg4i356wb+WyQYvnGdcpoV8wfF9zwP4lLh6Ec3fA2eAoemmcjHoPeon6Pv
SkJD+ACJcRvXaKRyHpPMCmCqFq+LBZ04j71EIKvocMX5CdpVDjZQq9hwUsYIf7hdUptJGXZ9Lwyn
6q1/8mZZpPCgoHL1DFOEfa630kEB5gUKSmfjKu2jXHBenZislfdaeSmdB7SNK3WVRxRQ9KuhcVps
/4/Jb5EUJuOrhvVK6TS30ghEUwSIXFzwukZDgOzIDX/zGDHiWu4TpjGKM4oAY4k/v6Vb0WTSL9nz
oTs1VylvTASy52YTmlq9p/Co2uQjJirzSfYiTjcrARma9TWhn8Jp2DApgItp0AL1plgT7dvVogfh
Jpl1gyXxyRIwjM8zes8njZvm31ruOxoEJsJAK9MedtcN0xsDnALgRB75SKbGzwbNB7/KguFuZiTA
r5cSC1wXziDeaVlVDuaByjTLrKxk8snPOlllJGjpUtFiPpUBqt4OYtnecaA4Hu7nQKJSV0LadTaV
x2RrPLeS+TuSFpocsNh4zqxQz96597WWpmp0OycWUkVNz0QDU1f/0zglYE+87E08gwwDGfllfHVk
YHfkQW5jTUlWOe6bsE1Epm+Yf9LLGPVR6PEXfX1dKa/bg4xo9ij/qPBpD5QA2wLufpgmS0QU9K8N
uM07Ygi1j5gn48OOfqNAnNK7f3/qKYbekH2Zg4a9h7E6GpvksY0y/RIs24HvmhhFB6rH1Ve8uuzH
+7HzGaXmXJhYyZickdtGBJ9xj30VqLbLaY2bxPRJTZx+WEoe8Q0RUQC3hD6TRVtKrtzOHCV2/E7U
iHeYQW3Dsa6TTfrMIUybPgA0cUOEx3A0TizocJ+uhdCGBSHNMYLSCU6iQI0vBEqr8mZM3cK9+Cg/
z5JckOTGxE6qDOsIJkeHZtGPB8WAzowPgpWslED4nz+dfVKcNl/hlUrK2EloDfVPpVS9/TZGgnkt
b3UmpW/rrU/jj+oF2l4Z08MZl36qRKnq2QS6NTNcir2V3YzqBkyfx5CryaJnDEqaYufW+CRwHCe9
0LayyNwv80ZmWErr+bb+r5k8wVaSdPaYsREOFd11owivOO8tbixk11USqlG8EIDp26IpDYr5mfSl
1aePZI2wg+GcQBIWurIeZOigEKT8/wde1/6kbYHyQxnabZSQIewC8/IzKvjt2ju2mhJyZSkH249+
M3lI3kdgBsjKf/Dr0OgobpnWlLwQSPffW7tsvh3XYlekkw5IVfkHEkL3ADNH+1wDd4HVLqnvRsZy
9YOWEDEpGP66GUFz1INDuKQkYAGi7jBAtxqZyvARs1m3RCy/ACkRuCpwFF3h2nQ86v7nSc/QK+gE
RKR/urcBrylU4DfJqIEeYBFinmy8fUJiiLgQrEZlmZ5SAIoLDJPV6rH2rbquEHkM/F+wMRU+04Ff
nClIRobXsiN4yFxtdOTQsTr5iWPig8KQfI0oKuT0AsLkZMC1FNQAcjfIQx2waVdCti4JlZPFtI6q
BQl4TQOqTfW/2zHkk2+JMbe+Xogm+NRZd8nxvzirwIQmR00qTbt2nZITWSefDudSEhnVbW/UhDe9
emkdxAQctBmVi/Y1mZzaFlJmKW/Eqjz8Qzkuft+hEZ3i9nUYmjZIMZK2zco6KcT+KZAI5xtuARvs
W/vtJKbyMguCUnIQPDeAtd5QT5rcFQFsSsi9nIb+vsJcvfIAibzJ0pAvYsOLC3/lOIxlOP5V6SbR
XynGwfgdscaFfdHgb7qXIY1WskfkMdSWCnR0OY0t7JXsMM3CtHGlhaMRl4MBiUZAqaOYlOMBkRtR
agMdJQiBc/TgWrQrXBbVONpEqRYUJUA76bJ5dgKuHpvQImhQR4YKToZ5prSE4V9F/nx+n/K6FQtF
jmPv+wpXaOx5udXslnZNx9cgBni4FJvS/Do2XxS27F5gWDSCYktMOcNJroScPb264zyb12tMg1DX
VrZNl/iSQ3K4PQXGOdmkLNb3iX89s/o1l3q92g1gbRzeEUgbyWSIKyZiCcUnhdA0zr8rlwavFNcd
Nyo0DzoZXFSmZ2jppxiSshI/+w/JmqdhB4VTEjfsAg1KCuk1bFw3kYJywVazD9BVVs4oeX+L+a5w
iraAVDME5uqmzhdNFU9VEjXqhFKITNij/S1BF2T1Ya+s8Q5pc5VpSlRrSfs5dyRj95nbMj10yJzj
pf2IgHqeEyJBV2CaZGX2N6IVJOWnuco9puhq0nVdNg/1tutGDQZSaupf0G/fGPgg6wkaD2nHPTxd
J1zop2XANggxuER5G2VefeZJWMvqGvIqNLwyCgzcgffhdbT4gzZg+KaKLhaocKdzPaZyZoDJgK5q
caJtg2ylJszXGGsonoffkBdgUKCFUd02BbIvXhmCdxFdzKoFhNueXmwZa7aUKiC+BuiPYxW/JLJN
w9k0NBj77Yek0SmQmg0ikRr2IgCC1Ve2tYhV4XSrgJFxZvNn+zN4VmNM4Fc7CUMNWD+i2lVK21Dn
uRsf7rLhIp9WM3DOXG+FFmcX8+ImT4RwlSYlHfOQu2531EUIdcs4wzWOYExTNZQ/uq3vPfXUavWO
/ezvmMmd3aECMUiFneitzwBuwqp6/OCFhzisvpFd0bn29bO7mmCFrAaJ84MIlWN10LMCBq1e479f
Yt6jiayKPXvwS3B9MAuvjIv2VC6bJjef5nezdv8xpYXdhjzDNDEaPUbiCjh6jLg3n4rVFJ0ox2h0
2oQo+cORhblblEYDQaBsWeYF+Y7eOW7X3ikZ1LNrhoYN4un8I5ocCClELG31SIcLdHnKIvJEGEjb
KYSnCCDTzhK9fBBVzisrLQROteU7RG5VQr7z76MVTmaEYqe59kW6dZzTPE5nqOCHhlWfrycOcG20
i4KqeVkxix/zfIkuzGvOcADG94Qt/0K6Coz25QJKcuB2kKosg7N1ifWXDkSziPx4+SL3rqhf7mhh
/GgGYgSsIg2EKDszxId59V9buNj/OO2DjXnPVUEe4LU9EeNWWI5Df3n8aEkq2nIZ4rkYuDTXs5LI
izR7La48Bis5TAFqODU+xJKDCjXUN8qeE2EKjlGGELas/dbUUNxiDn2vN3F873/QVxu3BOAiFuLC
8fzmuSMG+LrfBJ/YSHWCZNPoS+WSMPMmi7NUVjEtiNyLjCzlbTramN6cB6eGdvsiOz8VXPIaz78L
DDLbBkULxkVpYgg+GaKGXFhwN+7TNBVwP+4nWiQ8xTx1kJago+wu0unwT2mp3YQyjRHdO2gLEBEF
mrl+L7ywjbNuVzQJSqtsEwLAcZHq771qgHfMXNqCzlFmX3yyNu4Xp5YSi3q7L9E6hxMCl6RZGWat
aNf4O7N8+4wqfwvnN+xEm/KqtrAUq++L6FbpdY3rsI+myOuj3l2Z4TCdKuebWbjG8LQpUohT8iod
8fM8FoKTOPTtMKK3iLf80qZArYDyfYTC5E1hga5X2HzLShHA26VdsOlVtvHt7iZ7HTSTjo79jz3F
ilpmm0+3S626+2iqm7C3uZJInnR2SDpNxM5d+bx/5VjbW5+wzG6VDEO3ICUsWB7cVPTCsa+/kEUB
OBFVZAyxXVYqD9NAe9A3oLTXcg56u/KQnRH44+kRVUWvYOUS1k+MkTNqHX0PbF6YmQVbkF64eEjA
v/w3OfsAtU6HJbsrX4v6rSCSkjx20gMMnPJS/GD2kbiWu5XindTLEiGagzvKj4mE8Te4JUSibRc5
OHd3vMlC1C+HYmD11oYNSUDf3WoYknlBreyelvsTA3yGx1hh/C9OaXN5i1ud+fLvA2sL3c1obflI
NyRXPet07KutRbGjl8YNcfqyXFdRWKzeKRO9Ehx9377qwnZfYIXMYd3IiS38zedE66+mNnWJAogZ
j1tc1agL0LsobW102Y1FW6RxVBz0p8Nco+DVimX17XOTXvWBfQtUNqLRL+M7ksVgBUIaQqe2jJiD
kyY75kGctDsRTol64sf10fXoOCYBBjifAYYmvGehKMQBcansNAqqevhVGMAzPY0HesncinjYxPQb
aW2pmB345GZNU2hAyD1OW1d0ylS3I5QUcQVt4s4ReAAvsK6Q3GIUPRrErV872nbl4sh5KFfjgPBh
TXbaz2a1ftMlyfXxVWTw3sO4kkn4c0fuhNGaEcHIlULa6ppHNwH8xDDFJfFTz/ijlyuxchbCmDlx
grt9krhpTDXtrgc6c9wt0LHYZFjy8Qf8GJP7Mi3qtDNEvE7YekJ/DqF7VbwKnHB9qVPR6qIjZWgb
iuSYvnUKspOERakV+JgLAsh6zjSVqaLVpLmaM7oRRXWPAPMy6NJSnyqeIcUCerQSZ60bZTIsM+Z5
6bCx8zDhUcnubtCiB4mFtOPBUlQBV14aXKnE4tZ9thkh2/0ATuDItTcn6Q38gEk7oC1bGLQeIm3O
rnRSInZp+iFk9hqrKW9yTOJwJGrkQ/XbRZYuNyd9Y2p8Wwxm3s9YkwK36xwiXTJXbFTzFs6RFcuw
bJVsXe61NfWY5mmwX2Eyani9GMbWXMfGO0KncvQYFiK+aS12PINecY3a6xqC1XO1pu2+S50kPcBB
nFotB7fC5ydTLONTasjZD/P87VM9ruAjEKSbHPq0yBZk7sk5kkLVEeoPMThQLhODGXnheqsdFYL9
aEOGxaEIKhD/KpS7UQ5CNtV1fHy2oDJvm/s/n/eK5X0HlMchvGj025S9p6O1UC+iIXzEPJP91d23
E1ehEwSEQIE+z/VTNp97ce9EMPvcl3ETXp+B8h/MvH/IKvlYuklxIQ2lSEYNwYY/awdgG0J6eDYw
20eb5tGiOxxrvY8WA6pRoKW7bughNE8o3551j9dDFV8IkOEfMPjQwKja/VlAFd+qOpkHiAgMk1BU
9m6Aaw1YO54a3JsD69FgkiY9qn9jCvBR4Ysl9prW1vC3/7MQXZZ3COTigGMknBv+piAC7CWPEr7r
ZxzZTakmWWgv7V5G6oxZGzLfrC/XqmZU+sbJsL9VevdH/4D0kNUYsc1IC1vJEbr1iUHrV1YIt78f
5AHAgxenDh+JYQp4F/kuUb8oBIvegzhH6Fr18dv/eGoWy5j7mn/Rwl+WiUyMX5gf18tv4hdcVmN/
w4QfpYnCd8lczYsqcLdelIcWFo7/d5VcS5y0bNVF6KPLUb0dniBhlkFUE9aKjSt3lDh14IAwO5nu
/eRAKX4ik/zchR681t99YbHIOgdxvDG/jDUbwZwZHnmlX1WlqO7p/u3PzTsbUfdf5FhEqqc6uAqp
aIKldAo0AgXlSOviRaqJQyPRF1WJ+Jv6U6kDB021Mj64O+kj8d4LYa/spIg/jZEgE/5vmYUV7ZK7
3cJeLkZJ88N3MHteIPyPt7NLCBDEQrTQdvuH8FgM6xg5sUlgMcEl5wDH2BBVra6OR7V63MTk7UJ3
rJs6mSVg2z83tauQgoakuwcTrZqUOvWP676tV9Lx5FB+jV+EZmwgmKZPDk9m8qy1RXUc+Y/ebh7c
O5OyGV26bmwLdUo4XEua61fSL8/FwTYZvhwW8XqX5WiOwRNCZqqUAy2chsTpSnmE0kdQiCzUvxV3
weTavu0pO3FgUmPjmMR7LXiQdLSeurp1tJshOxOsIa5AZ7IkxI1fYkNOmCKxQUKb3qhfD9eHYAFp
eAqXRXfayeZXNC0tIwg2xELtBYXiSdHb+z0i2Hx8VQicPk5j4y92mvoHE9M4VgTHBMfPBf6glwxK
e4bCEr2Z29sQ+h45bzdO+EENJDtJdRkCPLXjc2Dpyzofcqk5hIxTsLmnqsEy8BIX//0fj42FtCNx
rqJzR+W6O+u9xAkSuOr4LOFnA2qEvQWXNeKM30XrO8UxsuXPHgL+MxiI79/5DsFL3rvdjYLlkcxh
1LaX6enkSnHFsppQqdQexS5ECweAkgqd5v4+s8x81Rl0HxE1WQrQBl/aH7zaG/FkyLAm53QdZAjs
Z4svOwoqQ5horaewi6UU4xX9AcZ6S19HrA0yZQv7aUqNlrmiOSp3rjDVw6vI5tpZyVJm8ZEBMIzY
Jq4V4jbt64c89/hBYossywu3owDkaD4ynNZp5X5zk9pK2yxInh6wFPiGYO7EBg6EWuD9I+ODFDw5
wE6nM86tJZV2vja91uhAZle81hqogYYInY26/JKKHYOqZZRtzXFL8E5v+lwpxl9SPr5HHvjxyo2E
uziYOIUREZwlmbuUQPdD+KRj/Wj1YsCuJslpKzSodkKBoYDe+PFWqhtVCEEz7LjVi7MRnVJrjmxA
8p2e+gTi+IeLC3QdbZSGaE2trV0Lk2H2b2aTCI6HIayePc5VHmn43PI2C9vD8DoSYBWMAcTasuXw
RetITRm5Xy+kTuAlmRFDXrekhcvjstKF+80SnZf7Ndgcw4x19JcU4gQx5LzEaxzPr2RgDEisGEEe
6mZNmK+HMl8B+RnKr9nHTWTDb8K0T4nTvV9knM3uZQaJKx5x7PDEbHVMIIgJZiRW/F905836St+S
4XRXDOtPtWLlPpZw9J6A5wrPujqsDi/cjPmsVPUzRfy3rMGrAWVJ4gyBUGX+ww7ZNJB/KzGO/1XY
prPo9gorpMD5IvozBB52dhIQVvjJINijIYjAERjU2eoISVCkVhqhuLEH3/FfPVDfSSxQkN0q0uSR
ePouHkV8rMsXd86K9lB12lsHO+ig16pxp7MhjoTNXiPtYq/jbzcbzXOXtxu25iMrHYXyCwIC3VUi
5Uyn1vCJ/9hhij19uvszQ4GSmDPZq4IM6JUUuBmmBtq+rmYelKrRmb85CwaTCz5tQ7gX9mQy+GQU
8+wuOKGom5Ky7QAbw8f/qrlmkBmCD53pe7xk0TqY/BdOk/He2w2L15dtweBORAQNduqSYXXhOlhs
fkw6AV2JV9SqBbL911QfeAf1y40Ra8wNEkOl2ePDlOQvWBYOZcP6Va2QYKoIDlHEqXznFRLo2kif
3+lU/5RWWwXtvmUx5BoW+FB2CDQT8LxDPhzjDYPnuRFi0vxN4/hqPUuA7LLLfIF4z0hEGh6QSR2d
8+jsnB35lRDTqHfv9/jB4+Wlf8T6obtDAVAv0X778YGGZ+ZLwZp1COBxfUg07INgKaquRtGodGU+
Xc49kfqdVq0Wpu4xsj0JfO6AVtkl6OmsxWNA+GebU7ky5ncrrMxFnCapR1pfl7Csaj1xlrpzrSMx
P5KrsWax4pSNnlFr2OrfSPXzYCE3xbofoe/dGkcgzVLMJB/X6dVO4au7017OmY6Jgw1IzH9jfPed
lOSdrFlrOaiLb1o33F35ACPv8PB5oM2dzQ2y7dlbgf+k2V+7zdDL5Fpvvi+PqqyTnnQ4rJX0yQZO
rCzvrhoVLRsYJ3g5Y1ZcmaVi4Br1DzLdSiaEPZjbH8+1KF5Bm/iEgIj+Y9kG4H5AcluOsLoUnOid
XqEmSPYlXIf47djcmCPh1c4fTu8JhZWSoHCn7Tw7G8ZghO85mzCMP0XUgEajw8+Cb+YmXfPtqpM2
9LIinlUTttwjZp6/RhuX9Qi5AHxuQDBHtFFz66e1xnuz92MdLlp4jkAD3qQ4pJyLihBetg5eAP1J
zfnzUpVwQF76PjXfWntAM9FzNtTpeQ0Wb813M4Fnnip4mBSF7RZzaCunoVlm0DznUhks5T6ftVrd
6PK/LMaei7w60uWxomXLZfbLCnshXN1MtQpLavTxtsA8TIH82XP7xDTnaCivZ8dBRSXpSoPRpo/5
gw+Whso2ANGAFSnSXCpimr84IE8K3ESBmL8jz7Ha4TgqDtT8X3rj1YGIsD28Jwd3iPh2yQ/heti+
6Jn37lPMRpHw+ZhHIMRy+OeNNkb3i+9K0mrI73sAXC9MGLbnypS5mYX5seUH3TtP/27yI24m6bf4
V58Ayg6jQX56K4sTjgaZBIWg8enYOumkDoK3Hj0rbCrwTaSbOWuVXUOM6gTcC8RhIGVPi5GIOIRY
jaHnlt7fpg6JVSM30+Z8Mr8nJN0eoO6naKQnLTBWdssdNzqb5vAGSijsT9Az1Beb5Krn2d0b2vdx
5g4Yqs8Vnh7W22tATHuLLMd6uSaTjJy+zwFZxMHVgeCtmGqhTgXCDKV/LXU1d7QfFUw3LJoVCA+N
ImrO0Hi9FQY7eQbaV+kEmbVPLuJb2e4l6QrHub1lLM+HyqEDCzDl9TLhxQe/BFpYrZ7Vgr/r4+Kj
5g3pmW1UyRd6J/A2UnbrxGW1dDzY2OAzCn1F5XL7GYZWB3Ol95O0crr633lnkuxkwEyxWKUmDhBf
vhUDZnFsD6aL3gv70CF6UevNSBg2PTfGjIIokf724eYpZVC+d1mj2x9CzbALfqNNedwTKqD+JS8q
zddsFyGViIgo9eSBOMH3biFVHP9eku7O0TEeNHOH2pcyxxAdrXekSw2Tu0ZnQ9NrNpK9voq8rkAu
IjhgrwykDXOx9OeJFjVodZ4Iec1ze7eBqRXX70pgdZBb9uWqTod/lsOkXyTnKpmTkT57cDbGoAZd
79jHLc3i38FXboigFwXZQGwtv+oAS4kARwer3KeJSuXms4H7M19QQBfxGWMRa/bQ6niVkNtgywyN
Hb2/EVwKQoglPa/U0RFFuoSAbYeuUPbWdd3bPQXK5nJx8lIrveDxLR7x49cSOXMQWq6wLAqWjYzu
YgPnhmULUYCCkITMB3XlIQp1UpcCGl73sI9FZ6DpB6O7DPrPsUDEsd+hK2ofEzPt2AOlzkDQ3Vx1
jcJ6mQphd6WWbEnBz3nVadwSebFaplOAnFuIPPrjkUdvUTGt2R0O8wba+/ureVFU3C9HGk9FBtqP
tKiFi7K63rL6NdrzTSITHAfICxS6ZZnDOvPz0fiXB6F+xJk1ndfDP3NxEf8ng2LGgwSWRBF8EIFT
h6qKrWLKCWfuPJc+PLgsTgYAadw4aThBitcnzsWI97Dq/LzNWnj9vnYQ2Q/hMmSttctsmzmENq8a
Jl9EMwrTXq4NHYf9dFpIlVOnvxIr71fzzDFKK04eo4/4AS00U9eNgiF4Huuu3rTs5Dn2Ub6ZIC7N
R8KNmuDdPTNqU3sy136L6kk3M4eyhICde1e7ZXXp/cNjgWBZcuTjh2MJ9fBKg/QSueGktNU+DDW4
qJ+P5uu93kqDoaInW4pcZqPZZhYfraz+h1o47v8zjbPiuQY2vygpO2/1zvunpbr8Ml5h2y898GEr
rzER37FWLbU2/osO2nDJsr+t5zkEGInTdiJZhjrce30cVGKKInOtdsdV1wgENdJAXEhzrfqwsdWW
Q9asvLq3Z23XMcqyAM/V2D/JQ440xjGTyaS7Vbr7TzQcAwVzAhsZMloKzwWkav6bLhajSYHKvcaw
PGtG+V9cRahcjmRgYNVjMXlvvepWV89xl2LADSBTND8yRM6eZQQxRSFqShGbBlsW81SyhwVV51xC
74lXtHi8kP44Le5XGHj9gz/5Nwb8/rXsRywwm1M1+soWtx2cOCqCnABSaIGGvlfxaecw8S2n9eZ6
Y6mO0wApUG7RDeketsj/VkefLvWkwh5WovdfSxXSyRLDwE23CrJKJG36gU1zs9C8xspQftgxNlwP
YaPa2eYHSX/7Kw3HVPmkSksq7HQLNow6v2fTwxJJjaAlUH9cNUIKaiT7l/s4BEyW7h9+CDX4BdL0
NylMo99R13hviTZb/vF9bJ5NakZadbVvzA5sE41IbtOUUdSyYJ/Jkz/myyctGCqHPV7CB6qm+6Wk
zk9d3yQefZOzWcSn8tzA0o/WM338bKVP+KwN64priQDrjIAXFgQenPt6//JfsXheny7jmSZMKfAy
7lWCLrczPJB+qdACxNScQ6evNywpASY/BguH2VsSKDLHRB+arkJyYbuBv8I6jqeSWeXulqFZ7BCq
Zdb5MO4Bku6nNa3QwBlS4TH77DYhH4crK5a7nj2ajqRs+BoEXtXlLRWrx0svtX7EF5Cl5qGWxLdV
d+Cq7E9qxhsKbv7hc29MRWME9I2EmGj7+pD1IKTMU84ij6rWfOGEW0e3lR/aP3v6wYNokNwUvVmH
Gbve++Lugy7mrTKEr7WXAZCN/3BVW+wKdCpuiYlzYAwsWC0x2WFQ8ZWnJs3+Q6XPsbs/N1m7tCwh
Cz8hQbCsTGtXIOq9e/fFOQo06SWU0RJWGWOhHbuKtes9Y1fNOihSTGsUC6Pl/2B7gePLC7u0aClm
opVti/c+KrVoAxMQSiHCy2yEAaIO73sOj8OyEmOhtTRZ6fhGaYs5ykzR7fPw8dnrjLRBJY7H8FsY
45wbNXRakMdzqibv4Q6mCGrsj+V2a5YrvXN/loO0qcrCiMV0zixcFoNfvxeFedABssvG5b0VUwTd
/IfP0j+ixj5SkJjDWrxerUnq1dIM/aXmbwZrffzfeGXg3QgWhsS9lo7td7UtHzNGmM8XUfl7g17/
w+kxLQ0eolRg4PSqrglv/c+lvP2p/uxocTrGFAmTrXltudVVtAjzwuhMdf1Tt0hH0UF9rItsaq/H
NkO+5qnHfLE7jgjIuyQZKQ7+b/X4I9g5WiNigt46056jBjiYrK9cAb4n3Bpp/N7gPK8OcYsg3e2E
WyAmydUDopwcEuTGw6vJtFNB4pIEtxpnNcZCfDePy3nreFi3ok37ICFaymgELW8krf52AOLDoWv0
d11nwZWcK6O6U4aKnPfo1lHvYNlmb3kC/W0yXIl0rS20bmoK0HVSwBmHj+vdSRFR2a0mZbc8hn+b
WI6QyNKgOSQ6k89BR2zxIfvPhsAgWy5DwX5TTQPhrJ+QTTcyM2aS9KkNJlPKW40E945w62245DP6
MSuF+LUbyOTeE0HD1bH9yPj2iZIyyn+i4yffkHhgK0L5Hzmb829B3rc8soghbJYJCcjZFUIKYDba
xnYjFTL8M74NAI9/+d2vQBd2xIoIdHl6B7hO/HQZOU6lhR/1CYKFsGrCkYocWlqzL1UOWZaoI7Kj
XlgEJ3k1G4RAtWtfivfdFEXE6RXoQK+DDCwk/fFw29lpkpGGqyYyVdn76vkYZTieEUYKud0i+fiq
tozEM1B7hej2aHA6RwhvQcXWWPibqtqU5FRG56cUHafMWCBvPALq6S6YJRmkQc9iff4zeAyZB9Mj
bw/6YMhRschNqxj6wqEn23bR2NpXuZSBBX8LyFPL+KsS3gQqBeJKnG78eioRBDVSBMy1dFoxDRqL
iD1gG867KBEtBoPTQyav+xAJdZuM1cgrK1oHSR83G3bOLROaS0jxlG7nTfNQPsEgGmcxIml97MUP
sibOzbDfwpMQkSuj1zezY2APjfd0aSY2I6JOYscjtltouaqUta+a4cqXs30i0fJHCT5l1sOWdAp2
vFldF5JhpZhxPcZOoSqKRvP/JpG9chWaNJUw7xGWHrlMczDA0TSaumSXZEZC3iWwowVlOeErpW2V
fJxS+tgddfT14pmi2agarhUeNsj/J6ijhzyXWko3g475CAl4lXempg4P+g2OQFacyIVt2k61Xk5w
c8MwmlHuR/nyk2to2/M7vi3+BkQeYc1p3kRDUoUALddJiKSsSS0tR98Vsfqv0rQh7nPtnI3HLJzv
Nil80MTafV9tdzEtDVyeAIhkQcuRKZKacU1kl4KAgnj3eUFQYgRk7S31l/PlupgOYOEVq24DsqUP
QHKxxAvoE9fKvI5JwFH5fDXmmSjZfAM/avQgJU/tOsO4RGDOoPYmjueBnRYvX8mAUqs4ht3z99Tu
HyvtV4SV1wbRSHK7kzT21pLAjLXjLmgOSmRBmOz95zTqsRMyKCXjX0y14lFoIH7ebNaJNF5QQ9IY
MTuWq/fCLW0lc9yw6iPoO2AELiY9Ku9xSGdgCrpOoVZ+ZBaQLVKPhMwsiYos4gMziB0wAf6iv7ai
8SVR2icgCqXIAJGBd4GEV5rPZVP5Qq53wtge+5dD8P41Lfl6kxvPTInJXqqPEIWsyznuAj6u94Fq
yRoZ2p3f0vwEdgTiy8OL8qBPYdo9PUiH7cTczP9s4dWTgA6FRSyM0HvO4NdUo6POJCVuoOaEZXzr
yedgp9OPwhL/6S4S4xhbW7WFYKCRoXbRwiPUi3is8H6FztxnhWxytxqdPodce+Psi4+fHsqsbgw2
MuqQ9mkGJMELeojyqgkod2tm408aLGv4KWHnmsCDhPblXaY4UUcM3uCB8NGj4Bnmhc+TKObV0qxd
k6TFPMLbinJ/KVimSJHpcjy28QQ/ey1rDudOgTGwfiy1oaSct31lmCmdokref3tLK8fNCqaO6BHa
IZ6ojpSmckacctmiqOD+xTJTt9ApzfboEBfE+1v39F8TnDK/xBke9VvFiigYHfKxNJfNyOC/g03p
P9qu5dLPxUpSEjZXdSvMU3vxkXTt7XdzTYvXRLcIPADnr7ZbyrbSx2/ceydUi6Lp/nChvKBauJLW
VF9Q/MSJ6uObIQGEKt0CF9RI1PG8xGs4PSOnXwyFSpmIDe2KIFHYBw4fjdOQoUYKeb9HfRBZonOy
omiDoWipaXwzGRgN2MKJkJc7y7ScYdQQ31yhYGpYGCjb8Pc6KKj6yXhuyDMj/o7ZuCJlnn+itjY+
1ZFixljIquq8b25EfpHEX5qUDiAVAJLKyVkAsym+FsmoBpJem+tNuy0lxK6FK0x78wWmRKi9+Itv
WWwUVAP2hAfrG3VBlcFermSSSgiIqZBF8bVTCOiFnJITTyXciZNQih2TiFWYd53NEdXMxV7hwFqh
fEBY23rjQMTHLpCktROQtfpD55aXojdRw+fTM2TzXa6+DfTpINhalcUQkDF8oATwX0NZ8/dPaaAO
MHcYQUNKGUSpXvkIoe/vgai+eXSsD3TTzMTYulma/KD6K5vaaRYZyeQq42hoyrKqilRo59RDq5ZM
wiFLTH4KrspZ1+PVLinxNMzSL/HYGMpUF48Y3/a61fqhkb/n9iecv/Ncq7hvLrg04Fnv01Scar2t
jY8F04p6FwuhNE3DnRmwzwc1gjWK4MJHHezOVVpQ1r9S5yj664dlJNc8Ps8N9qB+zL0YgqO1g8MN
D8p2DauAsMVUX1RSZ454JzHVabSPRr6bnqicbGN6RgCQz5fCarApyKxgGft4zWGoELcQd2scoy/i
TbF8IlP+wQ+13DB0t2MXMzA5Na5bgz6nzd4oVaoCd7AnVuD2kMitTDQAzUivB16cUhVG4mEJ78lK
C+ofzR8D/PlgVkxW/v69kpnZxmpalGE02hZ2MvBaRLyVc4nlXj6nQ+xsh7c+kncI2WIOC9mgrLzH
gWoBAnnwd5x6nA0Jt4ww3S/fjE8do3ghYAqGgLadyUeFu+NJJYGPN9KI0ZcfdT7Yw5o/3NY99BrX
o3IrfQ9OI++QwbDz5ajOgtzYBbSqZ6sNIcvCO3jxcTWfpZSW0ZstAfgo6ify23LoNSgqM7C/xvtp
q+vLyPQDXVkEy52s2dUMmh49LFJT5Hru12d7jIG3bmFR0NgZSHa4Ck4r8wHLJQZWhPIuFW22SriW
BbswmALav7B47DRXKZ6rcO4VZCRjg4dptc6a3u8ihrkjl/tMjpO4eII5GJtrXiMGhLOYLxH6l7n4
ocPfRrG9GMTiwmjrfbtmF1lAmJNV/rkzpVEM6LZm5FWtTaUf2SzhiuAy42M8YWLxTRaPMoEEtm2z
Ui3iwwzKde+Q6lQBAq9Ko1Pmt9XiZNRyUBPZBkh9BkvzeE+gajebP7PEbGxCFs7e3uCPZSHEN27f
B8Hk85N+LEGJxcQhC3aaWv0W9Wvy4plSGKvn9vC/pLiuzix3+i1K3qeVjkXggYdmhDbIz86eKcvg
/1cB92ZfAmUZK9ZhRCPYyYD0ukPj2LYsvlHAvZDCtaXFFRmCVPZH/meho5kjb+fh6dFHkxqojTKL
4a97A8ET3z7E4CUEooYPrF12pxEROJlhe3ZSD3Nd83Mfbwt0brwnBOB+1qVHQCvcXwHOSuGgxLIc
JW+9rCSV6kBlPx2UuCP6UrkeYmGyBAxiN2sSOvDHGZ20UICbDYojn7/0+IknFxMpxEKq2YclLUiW
BwJk2j3jX3D003/QqvzsHR6p+Qc34vQz/L35K+tFdkeFU2t7llz7RAxSvhnRQjqSzGi6JOo/qoo3
iYjxgIL4XgbwSVOprkeS4dG5tEMVtYnDtEzCVeVBdHQJDoOdWNnXe8Wk96Gs67zV+ZFEAFEQb/KX
62m3h7CfIP6NkCc7IvDamIH2VkirpXT4hbvSZi9uJmLuGksugOjOjAhXhON4Yj02WaRUTfgQ/j81
e2wIz4tuo7IW8YRXASoV7FIqGQTgG5fCOOqMxhZ8yncDiTv2kc3IbEz9dZI0UByct2bBIOmY2WvN
zRhO8sJFKemg+118N9oNagXW6OrREcbcfJi4kz4V8fRmskIdhwB/tz1plku3gNEJjS1NWbifnkOr
1ccM2cC4qlBeVYlck4KAaiCqstsMGSOuRJMGSG98gf3p3RoQLQpK0UAqKN/qZYYwp5GO75aRgMRc
H1d5q4ELl4P/8cpIHEGUQh0G441pHnTt9Om1Fxkulp7bpxiYSn3tzsCCi+jZsvSnNLMDRIW+xj6U
em75ZLDLCx7FoQSJoY6B2GhEzwbJuXqZxW/QNqoLrMKQ2so45lLE9yCog1d0YXioRnMWoEq1DgB0
VuKFRJKY1bgslY+2odUdSrbalqSD04avxNah169IGkXqaG4/dbgjpIV5ysZCr77pb2YlCQ7xfiLb
bdE/a9VSQVpK5jw/CuWjEKancC+IHHBc+DsGGA4ZkqZFKUARGWTs2uxyfSCxDKX2M2q7X65ANYcT
7RaPUb4YrWf7Hh/wmzCFgDddt4aoTniZLxo9RaXKsO39hRcUETV9YkIcLVXn5rsgyIt3eo+tFvuE
BuSFerjPTPE89A1buv3cZ9pphQFw+wKnyrPrcVOYgKa3ha+ajZ2zSXGCuW6QhKzy4I9u4GUIjPW8
gHfLoLzy5Ax7QkUsWCt1FVW/TLCAbe/Y2mEAKLfi9jnFIh5OJdYMEuszLPziJQnrwUYjYATDrRFL
pNyaizHyOdMxA1MVx22zs+p+fwwArqHSYentlwlGe3/goe0z1FwqZZ0KT7Tu7sL1ODWmnuQevTMv
yUUl7K2L6Ym5hcj3oh24wDe84D0daAACrhb2Owx12it0T80vGSwpjwelVfnT2MIrf1YiV9pEcO7x
ITmqVN60/EnFilXhRB6Es8dEcRSOJl1YwXqRfnmZAfhGQkKE7J+hLmlRUVoewewbJoiOiX0p/SB7
V2cbZkOFkOS4Ya2tvmWmxNVKNXDMJEXN5PFAuXRCR+JP/KnAHwnsH0vARndQXNa1W8QIXH2dHpi7
r6oPekDsnijOOva0VtxOrcDTe6asmM29YvVWlzSadVRNlgP6sBynbgjYfZEf1sm9fF+DA/YNeC8d
YSZDWkrrceGqsnJd7p89p/wQZFLQf5IJ9sgzY+JGryHyXANMMXGzPr6GP7RJ3Mrl9eS4yYmBu9Hp
ntABZx0EH6gWN1FY1/67gECnJSJUK6O9OvzPfdMpt7kJMDS1HRDWShueNEJHjvOeKhHA07YJH3Fw
KBDnY69lz+1FplG+YorPf9LdOfFA7IwGbDR1ctDmL8LgA2Xm8wzMuvPUVMtvaPC4S7JZeclik5KB
dBzyu/59sdeMVerMhuISs/Ujx+7jD6RHeHvVbHVV1ngH9QkpR71gJW5zgdAIxYvrwqqAHUuauqBz
fXRwGDhNIoyAm2a6E1ZWwkZleFRwWU2YO2Lrp87Fg2i44gveIVUOigyaG7kdFgHtXzYzc/Hevkm0
oaBvCTS+v/THZmecRx9dUvAlf/BKRsSgKK3U1HVP2XjSRCrsistDSgUM54t9W1vSdnKdW4q7E5zN
7IesgY2hCLCrYUrm2SS9JPhoNr/gMWCBx7suN9WDny/N1Juut/O3ryt0yjNZ+trNek/WDdPEVqSr
nyUA6UwlhOu7UegWX0HtYItqAY4VC8UCuGfj6wQeMZJnWyUDsjxWf/xa6iYsHNBn+0ezHP2aWb7P
RWxlg63FEbAt5NQ07IIM4eBQciOn2wi6ue7vHif3+ossZZB+zKYVWcCyD9a2xLd9b+T3v8151E39
oFyjt4EY9+py9k5gGyFx9nnknkWzTPFbUAJsocFv9WkViE86aue5xL+pnlx6EycGtwbgEHD+D6qn
iBisGfC9FEjDLHvqUBPcBea0fqfagHpGvBBX2eXCjBkCMFDwoptnVAqOU1HkqtC9XLsVU2gnSERU
endtz2TrZtJQryxSwJphFxJmLGbaJyPOR8ueFoGYVJbqG7M2qnE6zMLwP+qgEtawuAjeuEEIZFyi
3sWFvbUeL1QQ0Z1p1UgeZ1fd1oYCTFIjHkGwY6VJONEQutkoKV/MXh7Rp8fXPeEG9HNScDf80ptF
/Onyrm1o/boUHkYOUQj0UsRuYsuqVu5XzDflgqqtP7jRjzuFUcbbHGLvSoeUlZHjMortDFod3avh
DZ6HS/KNW5iupLDCiog+pn+5POIVWv6BeMeHL7tPG9waI1AVASWg/UyExD1EKjuTj15jrxsO3Yoc
Cr2WX5w9paOY7kPkhSRAFHGEnAyvzmtVbL6GVvh8rlofH0Z5JbnkGZNQ/oo75ghMgplqIT/Ryijj
3RqlMwIu91CLzXu4Tki1oSKFXCYccwVELPtk9qP5CiZgf7SS5LkZR7yCNf3Y5LfYANHrmrFd/1Hb
tR0v+eC70bo3sqJwI2ayf4ZkbS2AHgekZsUV6UIwfnQj91/TYA6gF7SRHPoeX9SkCzd/OOGneZDB
dvfyy0UC5Ax292PqLZ2kyenU0sApXgJ3FaGdisDOuRv1kiLowsqWxU3r8XKg4/o3PGgwRbU2dILi
nzlRd4vf5lkVGXbpGh2T4qu8IBJlbwX5YA2yLvNACbc6VzTZZida/BL9K2xbMuwmUvnbRxjBXr5t
WViIp3UcA3NtrvMNrFv4UUNLEWnRW16b8U7s2fWP5vekXJPXWdZ8/CoOyP8UeyGkSAdiMLguqRQ+
WLavJpnWGCXOXZnpUZQ9rqRlfhxDL0uSHz0Bx2qhQLvkjbmNMMUsKIsBPS8TcHee7+qwx6cQ1RQt
xLE1xg9f12C3GFFy/LAvpItlC1V+dT2+Nvo2hgdtJ6d3jJf6Uz4zG7s6QmFML6W1iymUbtFApmpv
DJwPIRFjSPaLL7ExeL8igAqb0wa2MMRvoHMyA1iXowurGt/r4stlYnTNRXvkO1qikhhm7iAXdkvQ
n7/OdgDPjPQXskqwVjku3oc5Lcjmk3LxNzyRItnHG3HlSawz+pgdwlym9X7w8Or2qCCv8E2CXDWa
w1cB8X1VoBR9L7ijc/jVX/kHBgYUyyhn8GhSH/9Wccbw9PhYnzUUxwdvUp2R9t1qintK/Obnp0Ff
mwA6J84Iee5raTLDmJ3hpMzeAFZtdUX4pBZp0VZGKC4z24QCOj8PaTCL9TGx9BnEy0xJg2Xa3fTE
bs724/7PeSweUHqjC088oqDjDWDiO5hG+xHtWO12lWSzfWHgjjdgd+ZBD17mnQn7WYCE+VxhSwkF
PEoHSbF6WzD6TWNSEjnUXbJtV+Casy0StxfKEJ3ixWSN6chdnpGce6/3C3eKsCZ0Pdo8vQlWP6eP
eb1Wgo7pC8AqVr5BIr6NYgaYcUFqu/Xq8XkbXdZgI2mwRXvgiboxTRIlNQtJxSoDRFq8ns3nVrq+
LD1jcexjiczxeA1cV/AbLrClPNKY4Et1CgITpNPeFaxb3prXnzIv+REXM/M/oPo9LX9fn1TQc85E
yRvdhilHEV3l63mzXMQh+AQKN3kLlEK1Bjua/y76ZJ23nMmUpzza2GvYAerjG2gexMFXlYKWko87
dQ/A+U0prumcINo+BxzIEOa8LmvRFw51Jx0cVC8fWne06fX77a3iXq2cZVNPXgSthGkypyIOZgDl
N04oVuDcecNlZsn3McoSS4GGoSzzYTO1KHgOm4ZX2ND5pTHMGM2WguMjCvDrTPd/YpBbWkaAmo+i
LZ6o48/HZj433J6GG6bFEstaseSRNe48EmAC1j0lwzqFyvAqCub/h60vI9hp0K1TAgNJBj+wEOcO
hbkElQNGfJsA0FmrDqDgFGp0WMWTXsD8bJcRQ2KF72qDTmkRzq0f/epqD79w+3sHVANpiRJSCOxY
9iALkGtloyQLR8KCJ9o9G4Ql/ahPqGJoKlDQtFoU1NPXTzWj8s/h16sL8P3fw+QiJfbjkTYmJMm0
uDOskqLjNDvORcvXDQAUb2DJU+LR8tmicLPU3EBZ97CfvVxdvSev6e3WpQkjczemU7JC/fwHeNfh
XR62LInh4g1xWPDj6CghGdyLfqZ5xXhoYXrizXtPiKDc01n4YOorbzJ1RLQMn5FzXockmCoGKKlK
VXS9o0ebCj+qx+PgnO5HyZVUaMOmCIaWk2Eg+1fcqaXSmWVdHqaUE09OunKkptQH6SCBIE0Rwupx
J2XQFZASrtj0NXMlw2soujYnzuMKvaAUN8THmMyBFaADT4xQhntb/xI78B9zLXhTWBidDh0pWAKj
5/hAexCTZpGNwRA2o+2U1fl9f3uxj9zjMtDQ6pPD3ypSTPq3Q66jKtr5eFN2h+OnL+fl87qhRL+P
QbWSb5UlfDB+TBaa/iE/sL7vz6caFZXIM7QoeXKRyIXipww1T8OPVWCJz8hYEwqpm2S6+7LL3DBo
Euv0rL43e2IcK48yYoX8rZjbLSgd21xXRjez9hSCRfJAPDTvvFw1RJKX3tQV1jJviHOSSjIEPvX2
Z1MFzEpfc+TEZhy/KKRIH65IYb2nxSzbmiVe9+U+ge2N9fpkB/JkXD8OOrozcA6DMrJNOnooFeiQ
ehukNjCAfJWtM0chG1vBKlMyLus9QSkbEUZDljtARzYQZYxW5XFwF3egaWMTJJUoTl/OLQauV182
n7k4UlOW8tLmNPro/MXvizCBQzQYQAlQI1ONIscEDAUtKPe9KY15rB9agmeTGMccyXQAmdRBm8X7
IAYAkiTW35fMqiueiTQmMkpYRLk80GtuIVLbCbPp7cC51LxIVdPpxQV0uDpBubbMX3WDrNjAztTZ
ZxB+hJwQwYsJ+U1hBG7Fgp4dlPafVYUTFpsacazZxvO3MFqPImrNJPPtDx9jbRkvuHRjSrgdrQjE
nGNHkCVLJINh9jwk7QnRXANXW80nrAFyimpESDzxNbOUh9KCc/TjAIEBX+k3/gqJTLxgOIQYPijg
eDlyrV3fMb4FoRWFdu6Jx4noLkb72tI/i/yMlYFXzOSyHVZwc93zUZ+91f7sYDNli8KqiYHOJowR
O5G8rrhorTVkW8jixE3+g/aVm65Sk4uQG5olR8dRQ3EEB+KVoMm/4Op4iMHk+JZsWfc5Vri77qPj
rXTZ0OyOr3CnUHDhKTelz3iUSM6SjjYQ53+G9a+LGprOyEMmcLP2UGCQKN+yOw6blHrBuQU2isT2
Voqk2Crlxe/K4xy+GtSLeLpMMJbx1CHaEBgdCQekAxiNJFZSR4MJbdsxCgz/WaODiJ9MaAJcwLHv
yU0kkqTJJcPfZqzCR3KWlvdUGZjrq0dqqx+UhpKYjCMVc0LRBnHCaxILl5hsMrEqS4ezTVHEPHzx
3vLTYXVRwWnfNq6FlSr0svm09RzKbdJ0R8rUBb7pquU+9L0F4+8nc8mPxOblaGezXM9NfpDWSf7c
dMnS6F4F8Wru1OjqHasaIExlmZyz7tRnDhjTQ1Kn1Jy0WGFTGIRL2s+VqsM6yND5fuhh942GMoTa
xE7obig0qnce4ExBvw1OF9YIfogGwvXayDT5Fz3YzNg1LM1G2+tarWXMf07DsEEOGIF1H840+LyT
Egx8horoD6cMA6e2Rf0idnJ8PyZPBkeVFGq4HTgvuSDuGjDFFVKgl91li2xF4IKsqWMpc/17gKe8
fHQf79IgmHrDdxNu6imiBsrxIc5DK6d6qbvj6e5jtOm9TD0ZCIYRC4uL2morRr3K0jACFvpePZvB
TF1RfLR9MgF7JUo98bJzH6CgJN+HiqVHWtIYpraGX8BXAj2G71oyoS/qekxtOxiPq2O4eGMnCUnb
TcHzZ4L2Q2c5x2/YDNAxN/lfnvUxLyYoI4vwVQYnLBFMN3h0GrxDlrsLMb4puZTMdksYq2qPT7B2
D8OlVpmfuEHJdgvQKNy9nPPz0gtbYvELns+gDR+0JxPPttNoAp0i74HEbyKvxjIChnLHar8b0oej
X9roceUtlHngxl9wzfdFwT3pZYev77f3kPataaFpPuZaq6qaicSnveeoHESbPoksP1XG0+DiH73i
UAONPbIXPlR0PAhasLfhR8GBpmPW/avWxSHKaaP+EHgLhG0aFIE86kGWAXG0EFzifdadB9G3xzCk
cbFW6VYiJXgiP1fC9JSiLQwV+vEWRwAzTeO2YfHijzofSLBz9HkIEdI26jtR2gB+c/2osBP2VdGi
JkoAbGHz2s7KehVjOEf20/euZn828IdQl68Iy0UVpGgbsVyiBTdUlMs2QCysntBd25faBYq6cCYg
UpQrai+Z8o6Ze/AJdySgCwmYmp1u2KOA8ayOzCTiDlDmgHg9Mb7POpBFkFRbPMReyune0GQHH3wL
ELB6tUkljD4Qsbk6QHpqewU84ue+rZUbtKEdn7B1e3F801nsUj3wQ39QgDuAHg21hcEW2SvH8fnX
4fNabthJ4+4YsVlD0oMEqOqai51vFAesTs36thDeCgnI4N9UXuyZYJoUPr3rKzFERUzNjNVhCp2b
+izAn/M+RsTHFYDd5+a0Git5G9sybfWDefVyDrl94h83K76aUWcKabUl4Zs4s8Q0537rGD/X3Zek
xnXY/ugOHZZN2X5txPEnjfwkbnUVdwtwp+uPjGZUu95tLj6B/Aspth3LCbiMPHQFVM+49Y40/sJG
uOF7PZg9nzm30W0PJZ0zWDauEXIOBfpUqOQoPUPy5ZsErOxiMy+K6RViF6numjj++B0xGoLPHN3H
wbFe26eH5vc5Y25FgKK3GzTK5UsGRDu/DS0AXaykh4ntLLjOj8OBbyzCCMXn8wFJiu7jTjrLABQD
ORZ+S1ssUk8z4gaOH/blZM51SLesQ/JjQyJXVzqs6v4xdoJ2jE4s1ncG8I59vAxxbDETGh5s4kLJ
sfVbTsqVZJn8Qg3VYQQB1XG9qAhwWV7WPL286qN24LL2Tsde8tLKRx1+JCetu7+v1zh9k7JtymlK
wdRomfSHsx2NsWAkbcX+Zk8vzbUdUeOjtg2OfbXXMYT1GLWw00909VzBIqBKkMhRkN3wNL7W7qM9
WGZFaAc8XJ09afkRcYy7nz+GewXVK7z6s34DM+zVgpSFxhn3OeWY3HOwqkl4LjHqfunfetugF9vh
TOzVKJEPEmWs7oLREHYuDJUPV478gQRoXeMyfTGqew5f4YRZyKArp/pG/Fiv+quQOHy8dtyTMOVP
kTtYZf/FlP7Kxcqo5EXWKwVkCB9SEFUdkD7+9RIDp4udZLlAzkG+RcsYLoz256KeNON5BaSUyfnw
FmMATqgBmmt0SuEiIaEkaJXAdPQBFOujlnZsCrKoppx8dtCfbfp0TISMUkFUmKOkpTGg/gC9G8w/
+iOxq9nAUhgS7Pp5Gqhs6TM8QWBJIpPESTJgUoJsjaeuPUpNLuDH8vjvHqAmao5vHipBg5LIijFB
L70/I+TPESyrsfCcY0DROcyubaW6ja9xGtM6viQTnzEB7m5fXGkArUyDKaoN/6NyIkoacItlb5xl
FsjvXQMOwJ7qCXLCv2kAIZfs5yg+85Iv3DLfNTMWYe3fThqqVvJn+MXzpg1YVuntA2bLW0r59k8e
Q3XkJxzLh8yBCPFyjBrHTREMlKhB4ZYfuslBhic+LXWCDEv9rbw5tijSqLYVxeM/ytQwuMGCCq1u
DabuEaCTainzwItvm8OImA5Vb/ok7h/6DdK8ziQKdeqNa3/Atjv0ayuYr8YoICZyLc+eH9aMvhin
f2kuqcPHqx06Uwv3YeKPkX5QqHXGeblElXtiYMwaRnqbaGXY04lBYDQxR50Dr6cyj01fzjX8Q2Ho
e5W/m93Imf56KEoqZ2G9Yhf0tToq1kjPJxr32x+yDpVraYgoHHG/AYABCxYqwavRSLVj5/p2bXXO
sLyfRZHyFg5SoevcL+tMUzO261pyFYQzLjL33FrH0oYMcfe73N3OwvG4nFGThSkT8BEQ4GRSUbNP
TXmriG+m7nir+sWBytGxNaR4CbuyO8auWKKBkwLmoZfz9qSpc/o3Ohi6F5ToNWVWzObhWUm89QrY
FAcWIIfVukZoDnRg8TWijH9qlIS5oiYkSKBYF41W3XtnsvmRn8MHuXC7n9h0w2bk/+oRdTF6lpPR
52NFKjH+3xJM9Bf6NegWGOURFRAYKQbuZwbr9MWs/va3S1KxDCDXxpmdvu5YVBN3f7HpL4ILubm4
fGp9WBd9JlL1w0C0GyWo/+CgFJrhLuXG6SwUsveykNVvwYdvU7VmDWnYvBptDGzG0nZNBspMnW60
ZFAqou8rS59MlDrCC3JwlyCAOcb8Kfb2EH7pJFIs/8JHg4C6K3CxuypgrXvhi7Y9yLYn7wO83Lwt
QZ741zCAVqqiq/4WozfzjounQdDTsk8ZazmEILgerB+E3nmg/QYj4oKO1f4QuSdpTHxeMp/Cyvzy
Fw+u9CUmKKIv3iOdHEE1WP3wKSM3fMY7ON0gYSfRB8Wu6yTrhkhxInxJJ69r0K9JtQIgVwOrevEM
QaZaK3wxi9iKWn73j78TBXmwV+0IMKZSDbhzruTOiFbsXN0u/Sy9zLU1ef6gqlHnOXLAu65iEkWH
VMLMJykeCTiCX1NYj6RjS4gnmVl0RuHat/hQoS5RhWEb9FUs7nM5dfFLdcswYCeaifRllKfjbvzi
MT5K5YWyNHvOAw+c4pOK/VdIfR3fbzJy9ruUTA0Hs7eQsFDntQcEFt2PFxIJKYGpScTtU0BymYwF
+ktplOSu2nO+ix0+HC7aozJQmFBeMd7N1K8Kfmjfa9j11Dkztu6vwQ7aHOsTQ84Epj+r4tzttz7T
zF794bEYrQYglLmW1To3aYk8DzlVYpjNhKwPTnwoDYXuVohaJavER5bPg1Qf6sc7DfYEcrRGhdy7
juMjWi98MUyPOUfXQw9DVwDpMZziiwnW2CVryrPBmEBFInpEPooIiv3Ro32TR7jk96pRuAbo1EIb
AGVas0sqYWYvW88Oug4vBhiMtuEvCaQ3Kx6mDZ9O2GWkDdbqrtInIABLFImyM5qQNC3xO7pEDLvj
EriSiJFeG1CakeKaj+fkFTOEkF4IhG+SCae5C3QGPQUN9p+w8oYk3ee3erULwl9pVC7NbUwr0PDb
ooubl+rOBky03ebl9E+wT9y6Rd5fcR0BxcHvZ9bhU5CdTm6iMWuLCMJ0qRvnBmrJ+V8hAeQSb6xb
ccRFVaDfVP7joP1oW6zDCGNHXVslpB5j3AGzxmx6TeNSbB8twHK2wkliYcuB7fZntO0OI0BZfYD1
1IA+vRAlKN9vo+vsSaxprnEvogOnz6kg4YcaHfmXuQeD2tIV4bKYK7thh4M3ovNKu0BciQMOByQ2
Fs9WiSfj8s8lxI+wolN3o8IOR2fYg96dPmMTaAGpk1eRJxA3PyTaVbSg6JUPp1DbX5G15YI81FeE
qTNhHyHhwuoZA+5V53i+H5TMJJOSZeFPEcs2KYZlFp9uDycJwjYIiEA+0RJ/stpMyQ6HxB39JIvH
AuWmWLvekg+EN60TGLEmzceSQB8g00YVoSzHvU8xVNF+Eg1va39XOq0mM/ylQp2+qtGgK8eMRWlh
rE0Y1y65WVyzzkA+LQMQOSNezZipzqX4mrhG+oEm5ihQmpYg6g+edyw5LHfVZJvfjBmLyhEbnK9C
3mW6LnBWgqxjFxF6XEUATFia0MMjYHss4Sb+546fR/yPbMy3w6S5yAc9nIkHHgA0s2oHVgvued0C
FLOY8h8V++TH6hfS1JD44znN9p2cRN/MUDVYMuyBFkrO2B686el/9wuYbAtEvl0rQFX3YdogY6tH
2yE+89t5qZ/ZBPzvR1tZLavD+jOV3q0WR7unrg==
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
