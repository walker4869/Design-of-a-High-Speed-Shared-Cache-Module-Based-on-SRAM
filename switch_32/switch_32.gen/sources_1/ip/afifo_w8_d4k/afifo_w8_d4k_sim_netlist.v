// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May 18 19:56:29 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_project/switch_32/switch_32.gen/sources_1/ip/afifo_w8_d4k/afifo_w8_d4k_sim_netlist.v
// Design      : afifo_w8_d4k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "afifo_w8_d4k,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module afifo_w8_d4k
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output [11:0]wr_data_count;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  afifo_w8_d4k_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module afifo_w8_d4k_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module afifo_w8_d4k_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_w8_d4k_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_w8_d4k_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module afifo_w8_d4k_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module afifo_w8_d4k_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 124976)
`pragma protect data_block
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
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
