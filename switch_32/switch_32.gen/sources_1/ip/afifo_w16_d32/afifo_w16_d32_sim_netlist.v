// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat May 18 19:58:00 2024
// Host        : Sherlock running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_project/switch_32/switch_32.gen/sources_1/ip/afifo_w16_d32/afifo_w16_d32_sim_netlist.v
// Design      : afifo_w16_d32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "afifo_w16_d32,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module afifo_w16_d32
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [4:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire [4:0]wr_data_count;
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
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
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
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  afifo_w16_d32_fifo_generator_v13_2_8 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
module afifo_w16_d32_xpm_cdc_async_rst
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
module afifo_w16_d32_xpm_cdc_async_rst__1
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
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_w16_d32_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module afifo_w16_d32_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
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
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module afifo_w16_d32_xpm_cdc_single
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
module afifo_w16_d32_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 95216)
`pragma protect data_block
fu6cs2XkMPQ3eBlCRVbvFIZxsrAfen8ca1tu13j1C43Q5itlNGy13BuoXjgVQxGdDMxE+MxEVYdZ
ufWVCDtZ0t3gF0oOBVXpQXAP8eiVJm3gTr2BrtsR43gnv9sVZ50PhLY6pz0avbba5xfKRLeyWp+J
MlZ+OQ/uBCh85/6tZGmrTHIEeobNMRTGLtvmU3LammhHVwvVAoRKDNgpaeUXM7EdyjSTey94JikM
gJC7oOU1+BlalFWpmL9K45TZkQuNyyWPr+o5rvqPh5kmUzf+k2MNCVC+SujrwkgfvTPY2e44Tb5b
Mzk+GVkOCY8al+peQ/3ni0NblU5XOEoj90djCVf5Cz5mutgF0kF2U+rnvoWqgpC33gUbR2xv82rL
bmRnWnQvF6BLSG2d1Lu3YENkvJIFjv3sqs/v1M3aEDKkuExpGTzQjtVxrBRJkMxXhe+KlF5UZ3el
q2Q1kIKNgc6NTwiQtWo1J9BIsINgWJidb4/xiRKvn56n2TvmwF5rioyPw0+PcT2MljXVbYNHk9xA
5uhQn3QWjI1xKedFLBOfI6r8Vw3NCbg9TO7mdkTgdk0I4Eq15JKIm5JlZpPG/bEEwP7JgjxLDi0h
lH+4/+zzLM3+wN3pzi+q9E956zBo36YgK4P0hD9vCa+tleWp7pBCiNgpIpWdHCMRnNezqfG872nq
lrFBW8iZyh9eqHGeP4HzqFkiGfVgeauVqNEUmr8jXfNDpv9UTpIvpTmopqWV/SG20MgzuIftIWxM
yaT408U+roVgROHqPPzQ1rz5MbqwVNihMpf+x+qX1RuMwLaBaqVQ+qIbW5VERHAJJrxSEa/W1v9d
r/Mypk0KN8I+2dnfeO9nRm8t6gTa7Rwa0oU40iUnv0LyDSmsHlNMGqu98yRDTHjfSu1OrgUXIq00
qKQA0kaJjbmBMUABamoYDmmND15O7a3Pkp6TZMGFgE/tDzKLMhtXCe1FWFpdWgykWmLjD+uahgOs
fq4lkihyOFqPPRdbxQYa4zzQh6kLyY8dJomnZgBADxo1y+BPLZIbensyT7WJLbU2jEWvOwJ3cuU+
u0+pQqz1xHLbFglxnyiad2O3Xvfk6c3sywNWwF05ME+Kh3o3cp9VMhplk84yybBYMa7huExdmdPR
/oErlfIKMpGnBLhkeA/T7IKm0zY1/DvZnQR6/ZT/kfbEj9/+2cqSbv8TNRBarCpvunGF19kDSt13
eXJtPwyDnVDjI0k59FMh34VAI4t/eejJrQijq/8tgCTEYen8Yclp9CGJIlqT3jrs9gqMMh4kRmTb
XyzfiifkskzOyJsnJAM57KTWjEAWh+NG8AvdM9tR7VUGXDXVv3A2u968FD8HFd/1rIj1a5uwu187
mvrle5/OIuE/3pHWYgsiWrE1cR5MAYoincGIHzev6s6VIatrd8ZJjGM0AmC2jhBpSnHicYDysL0V
FLb5Qsts5dLpp6MqU61YJUVP6CAWGOogqWH64CEY3zCVwK06eaJOetm9Go+ZlfwfNRvL9xpA8WTh
RvEQKBpCxtlBfYudAgDD5PtpDJ2K9ro8znXJJvaDGPZJMfOiFrEV1EEGOqw6HKdLZsn3MdAuyjF7
2IyN8A/5wuSjPVctBhHxqCmI1dQ5fWsVGSqFQCCb+1gtA7c5DnIoSGuiHDDAh5RIUSIP4ybdomH3
kWTuBO4bRTa+n+Jo31xP593G9BriwgiK1MamCHagHZW4ti9nrZONwEX2VhgJys39czvU3/Z2cN8J
R/UPvVepVASXazynDHWtPb7sKjxk3C6nkl//3KSaj0PFCRja9krZyuSLfh4QxJkWs4EyihWrQ5hs
mjxVi645F+xI7P9/ELyvvSKP0lg1cFuTfvaT4uVK3Hem5bsBf+xLJa98TwkuP3HlQ6L6HxgUPMV+
LlkCMs7HP/CD74/Mp35dQf6q+4E7H9UgWEuxdm5hiS0MdCuBAxj8yJbu16KgCMnXzKH0icaFyVjv
Hn/9e2SldzTekMdiFu68piTE/xbaVX807M/HRUEWNXY3LWJiqkVwvRJWLQJbsfigepfE4LbKDLBT
ow3cEJBaKdZdgIMgbs94+aaG+0mdHUso+PdvgQNEpeM/CxmjeUH+UUuU8rwYqAhIJV8YJzEG76rA
yfX80W2ANonumzz9eToLBtwnVS2+65xhQhOvdrI0fJpOUuzzXt/zbdLohGP40uj1B//wdTzzQmT7
7yeE4nya8jc6z1OZ7IXicaFcilmU9nF0Rh1cHW7pFMLYheJVRt8X0AuBS+sIuirmMjvjyPq5jTXk
+YkMJHlulao9XZdSIWRuE95QwVQ3dSV3SJ6bSSRisqPC+xAXdNUh+kX9wP5TiZI17DA1E9CWrvOV
RRcDQSEZX9tZUnGKOuY2yWXWZFGz8nVMGl/l83L+qud/tVr38LWK84OgPtDIqxErBNSHjn0EOSiN
AdQFTtuacBvXl+F4GpixC+M1+gnq8c9G0NU2WTU27t+RfJEywGC3amK3GPXnDiIUFN6ueL4AiP5X
DDNVjrTET/ce+/mdGKAathz9BqEncaUNXU/gx5i4hchM460PcKhfIEgfTkuv1laQHmeNj0PUKve6
2PYgaGC34YxYYKvLVseXMmSXtyfNx9X6jQ2ABKlBYroKDUJmX0A8axZgIGtVmNroz9Og0fxIVdCE
3N/XvGDvi6LinZOyXw1CwwQ8eME3OLh/Vdss62NNlw/DBNKu1Vha8KFd/9CKfZX88PcxxlUm3hKL
mlbJRvm2TpJpcbhL96qRqfisQ1FYlE41MisytDYbz8bZpQOibqCsa0CCjdTqlGNiui95C5SJDxSV
xopQDrmNRp48SK4zqT45/CW6xOlnOoHmiVY1v+djimJdsV1Lw0P5nWj9981EJprbn8uUYS38/UC+
+Di2VUbgjVSyConhAve7SRYaX24LaCKO1cUzEoTLYwYqtvaA53ozmZsv3RBvIbsm3xYK8QNB8fQP
XYs50fqsLVO8yxszowkHSUvodrNq1BfGI7Gkxx1vDm0u2lAyCgJTWMAuXqj2Kgyg9rDVA19r5MEc
dPQfrck7jKPxqmsK97C8EBLZbQ0pU5HEKM10PQAGFsGRk2Gy5kqvDxNAweVSZCyhUJgolgaDnh/6
StOoMj0QzEbKKjvEZj0VccgQN1J8vj5ZJAewi+M064rkHmG0DSHOBMRGgNqwPAIDVkd1/gAgy5IG
FQSszJWbPexNOWL+Jvh6yxy7fCjxCjM68SUNMqD6csLa8FTWmkOpzVEo4e/utNBxbx5aKJytY3oF
QLfAHgv0SRtUvw5OWW6/1woL26B4myrjkbJmfByIFy2/5u3bG0NWK/YMtomztQPJaQfMOxeNlRP/
qrIk+MkC51iq56/HKHgBcjVeF67F+i8hyDK82ij5K8H+ziPPNYc/Q36G+vHeWVTG2Jv2AGpMNPrK
zTLguD87aVzOsUlWl4EOW28eLeQoMkWRdtpBoFujDwoqY0SuXhvfSoxrxPaK16FsY17bj8lmXUC9
ghhxhWU3yIehncI0tBJ2F7wal7CvanziP+c/Jblbn+up21LWGaH+UkqqYPWFIViNGR+19tX2r4Fr
ZGHsJhredKqmLmy1+baBoRBPiW1Bs/jV2vmJA7BG9LDNMeZ2ijoW8Yit+kJlxZHNQZyhMYn9V7Zs
5x0sdFR/R4ulXWISRq0xEEX2SrhM+2sS6VpxJqJpW/EoGeEGzoN2c9+01JT2zxyaB+0khorjE2QG
6fF9YomkwHPkANnZ0ddLe6rGDRq9oZCF/azZSHg+9UZCycXogzV+lJkK8oje/xvIVM0fgD7Kk3hs
v3gP+q7aGiHypkcgx5xGkFFTV63fPZy4QfT04IuC3p0IM41KewjhKxFQDB9wlpwRVAId3xo3ljLx
MqamS45GpoA7jR6YOyRrovckX8cB8+LvYj/YItjcAOpvHS0TGn070b7HWqsRnvswBIk2/l2pz7X1
TgPSBu6WDLda2T210StCbAt50QpnzgH2R5OVsxTK4Wy81oQrRd+NwEL5Ok0c/PmXLzdD9weKNnGK
UpjnRh8TKC4HwZrneIV2KdKJaIpJMKCCcXvySRjGjdSSGau0D+bxeqqywFBVOvxGP4EIClD6cQkK
KhheomzEkKSn2h9IYGu9wNCAmvOUhp3AmnimWKD9JKxnhHVBInt7HNhC72lmg+A16qhVSGT8wuhX
im7bTKCRzjzzKDK2En62WM4mObm7xG6nhPEOSFunYJurP7IDqOp6APVeIeUy7Ni3ZpudDY3kQ+s0
l3DGAe3qUrat0sot2T3guFAH2aQ07N9WBvYAqGOLY6JlGjJkW7zqn17a5T+GA8QvIj7YbItPtT9k
1b5fV4hqormJL4ceWZ+acNqdqeiyXHN+S8oKE962xtkSly4jwi5BsLXeC3iyyxaFVP4d+zsD5UO7
7waUmmxPcyL4CIDBwhkfNyX+WafCIBVHmagtLg/+0MNM/7jjrHOZ0L1rIhI8jkvvfYZpSe3AMRCL
AKVBy4bBKhSM/mRqM+whqpzUMT9pkeNsPGuz0svFAsq3KyHeWGSgihZzTj7cmxMkbw3wXE/Ffofl
xe+YED7uVtO61LBjem4zee3mRo7WTHtL5z+xeFpsRiRL2yHm8DCc9cZ46ohyugp6aia1ArP+dNvX
5hWZRvPvJGWVp4dMH3MBGI4hihNaHM6lkvcSCHZTTh3iU0T0B1Oeql7vRUKg+Yn4tJVYbNQiziiB
sGH9IJIuHo2GFiYGzFS+Ze39CBeU7YXX7elR+6BL8KlS3Yo8qfAqt3em+yF+NWy6spIuVzarCUyv
4s9KiqyrqgDHb1GQYM09RY1XJaePbu7/YYDHRaVRMEd18xAlxGbFu0HWJNofx3cdW4HSMPMoWgyS
LYAY5mVW+istmi1UVUGmEUQEZtHhhtYoxnpNZ6vzeQkhM1OZha9Q+xgMSoF89IrmNQ5lpuIZJgFe
lBNONURnycYiDXKtFwM9rhAy+RvxVvUi++xYZXc7NMs3lQzb6sR7vyyZWdlYLpmyYtywMz/oi0Q6
5vZ4Y5v4peMRb9Cw7MGip1eALfdwnuaGYTkjzUTTTMfKUmtRc2b9OTZCC+S7dk17fzIx0Ggqq//l
VdqqWH+TmmqVjgueAxc0uhv3Ss/iOEIB00ltGlVQuMg1vuBRNOKiyYjJ4LvwMYwqLb0xKyrBtNpX
8u00CyfZcH/SXzyGaEMxKNtfXq36LOW/CcN6h3bXTARXqN4UKynNsn7OLy2LGXtspjjgsRmarWcT
vkGRF9mbNs1YdfyCo2cPSUSWn0BqXp61aczEsLzOLjI5uqMsDt+FzRsY+OaTKiuxD39JI2MIl2fX
77biS7DRln2FiqBJBm6bzUxdss6yGCwtfMRLiZvxeztyjH186gUF3gg5bKOzW5KBg6eLU3jpiaAI
PGkRnllkEtAiVcdHxxNujF1wfdBwK4Z8hygERYOvi51NQzdazrIzlfu5LdZf2iNX/CI7acci5PT+
hYXregtw36jaTlL++pL0Ww36FiqQEnwHYX04FZSprgBQa19iQ3kZvGeguoj+xmRqI+S8cJz8Tarw
miHg9mFYcqkjQlbQB/6F60G6vkgtJLKn6jvcafy2wuf6W6ZiiRWk+sLWZiK0XgDR+ETmhN2uwjWA
tGm3RE2iy/Q95jUL4qyvUfC/qKzxzV41Jlmbt4YDjKm3DGG3MD4demQvPvK3mZRfp/i2gojAnCex
KEqzF/zRjhBa+f+zSHRHuWhmiHPsByZjoX1FKw7Wk2J5Gr5+vohHv4RHTbFE0QhthrC7Wdf49tcX
LvW0GbfxUW51ddvJkg3U1ZjBEsOw5kz0PGLDj3H3fl0vIk+4LvvmaS/SQRt0rfKcGKqGmbzzskOu
nUUGQ8qCUWOTkaK4Xh4+Ow3BdscXqa1KA17PYFLmPckWXnbfSQkwceQZYZYGWpHkHcFsQVdYeG2/
7CKJ7F9ePTwhlHbYFLK6MOuFNaaTJdrQ2eE1yBUhIWZ349Ec4W0wIfxKcnyrmwbsuyc1wAvOpqCe
O5Wks3A4LmoxuaS00oOs7vemm4BWm6DOuE8cz4ekz/7/8v9NmMTnSXoFifsmPxsftLpJR457+yTX
8Tzn8oi3tSiBhysW/4Q/oEdt68vdDn4h9fO5v2F7Baz/lKmM96wTenbexcLMedup98PbAzQyEehB
qU4VLJw2oUI25OXlbTj8R5uLaLsXdKX4vKx18Wu5qB92RQgt2wIKHzjwykEExE++JxyR7fmo5iM3
5tbBYaBScGwq2cbEQN57UVuq927COb2PFAsrN3C9rjp9eDyImR3HkODfRz9uyQfe8lyxpkAi15SO
Z4qfEgQKKJLRoo1NSxa7rq6g44R7Yo+YehQo/asPoLgl7tLyIO5tjNo1te8h1m7r9AGOYxGmL/Z7
5oxMuVDcHYTiwdjAAC91mOK0pg4K5Hjjw60y8o3aaNP9jSetiY+5wiLhtbR2JsB/coHCD3QI1IBJ
rd1P12JLvo2wP9VURb5q/TfWCXlHF/5YEi/PHjX8b+3/tKmlPpiGX6ypzzL7gbyaNTpQMX+wDMb9
iE33Iy/z7LxCOhReGmbo9bGxJFJ/A7IBbLEU1ABy3xsfVYGYgO/dCE2S6mAM0C2tSQ/cJOitA6eK
hNU/Boq+McDcEaW1v6Ci9UyCZNMGkreEBAkZFxaghx18+Ixyhdth03QRrTQHadICOX4Yj3NcuPyG
tLd/q4afSsAJCvODSm80+TYlLwbaNEaPVqw70SXPcRYJbzx/5R5KX/rb2wDmaO+Ndx+QAgaNSIDL
Hf1KrYUvFSNZkYmF7Y6pts/BQXIMJEscESZeLyMweZZtafq8f9lDMOUDO8Vtw2H1QnWKzzD3db9U
mzo3scVbn1jWt/fnj+22dzhvGdJLC1W/dWLuNFnA58iduLAlTp/kuKDr0H/wIKcGDcyT6fVbRfD9
X5piw/R5TcX5gSHpDV4D+mmQVWODR9/V3W78gCeQ4Y2cWNcpid2YbFHvoiBbIIfjjTXQVgYa3pu/
bqG7eJ809AtnE90uTTsrlOjvi5IC6BBvXetDB7Vei4N6cbS9U+mRu+VrBqzLyoFFdmqUvHJFMjD6
4RnrJ2xlPEXjjhfv6HVGqsrnj5o+A0WFoSJXYcr8ZOGyCjXUpwLXpAQLvxUudBmBGPxY473frOFU
fL9HtoA0ou5LYgnnyVXNm1Ra/ZBKuR+yRlB7IWlygy2tMghAD7feObvG1TQEHnFbUI6QwENfBo5P
u/ObSAxTk52hGoM9IssYCtofFzZ/PFXFPC9l2fuy+zLt5H3+4tlQk0w1wpzKjYF0QruxP71SybS+
7Ld0HcQ+sWXGmhONg45dneTDGocsifQIZBlW2L0YPej/LKi0QsYGTibKnIt4bP2rbFrTPE4a3BEy
+TsI6emTfiCVeHTdwgN/I/4RHpBWP0EZNXua/qnAp16XZmqqrVDqatDiJIvGASC/0NeSD4k3Cp40
vx4wx1cPab4rsPuPgoFf1NGlKcgWnR6lTPLkeK2wjOPRfg0Ze5J6pqXEBRm6bCI75WSW7Czz3pTd
5/WhfN0tcMrLKyPFhk24b6/PPskrVwuaRPMgECtx2PAXGjgPoEGGrtwwC1Gehggm+ZZDc7i484AA
pTlwEnBeWTt77pm6UjPXlYVGGd1QlVGfUzoB5NF+hXx1H/CI3CTn0djku3BCDoj1c2YUMURLHWoO
pu18/CiA0KX/9/D56SGuF4Xa9c2Hzr+IdI2hw5+tltBualvdDEPL9tLm1ULIfhHz2pB574C7XO2M
3NpIwSNo5gZMzzpMVzawYwYtjoFol14K3hn5KHsdj5B0kn2RfiWGyobcMYnNsDQm2leuxDYYE8Qw
MvG6g1Up10dnnTIloNSfwjh4qa+RGfC1LZvxqevJjn0W05v6L8yHOat6HWN1trpg7N/9Njx+OO5i
EQnUD3Llc3ckFYwb3fPNsktslhB8cKGC5Ly3gQ6H/B82+Mb0wTvfVy4vNXFPJrfG/81JHiUNI/TU
597iGK+YYYWg5sZTwhTKTbYLTok9ZfdzGyTyMMzNVTSXWGiCDmRLsz7+grW5yaFOofrTc8Ev+Wfb
/lFcicJ7lN+lYmH62vU/4K7mwSVDzXMkpswFu181nfe+mRyz1gVfIQZxr+CxufNdUkNwRaEkLma0
BY3OXmHU8V5wxOGZxA4frBf4p3Iim2aAg3AcJcS+ETgq/1lDbcXNmLhAXyLQn8naieToALCgp2Hh
gjRZFkx7x2E0+7Jl7arV/Xyb9bQRaOCjUvL1CqTxLax/v7nRLhkStkOOauHAaWOxLzpigTCIMUpG
V2PWaVtsH3oY7/M3l7+gjkUfaHI21JVwnwiZUHbaACSj4W1aJG1beoR10tB5jAYUxdWr2MzZ9GIP
XpO1ZKm9LbiwooiPTKpLlLfgfqSQsOvuUrlFnmYMgI3wTHXLpYQowyP91Qfk3HAUzlSLGpot0fdj
WvxtOHZj5ATRWOHQRFbN2QyF1n90In/90H5QTiAZMYH/fXi8ODoeqj5genvBgpG2xx+bwxvhIKBF
cLN2iirAp2bFfVWLp3LWbDf37dWH2BBfUYXUAUxIm5zz7DzsylddVoYOz+kCV7NtDqmGKvkk4ePF
np2rr3TFZajjBgI4eah6nOt0OrMh4yKvopvaQx6C7+BmZBMqzs20r3IzTf93bktCgP4H1ELdCrBH
b1+8m1VstyQhA3ROP1+zD74MV/uwaHlhRpG2XLpgVIWE8XfvhPZCw0uSApX7enVTI+3JWGD95riW
rAE4b9XMvJcfmgTQlw/oB57wtjSWinOly7VAIGXR1DzJQT7Xmjxa6RFNkQSm+uMXTIvVvhYAcn2k
GwkqBdJCmJQm8cmd8mM84nX3CA64ToxqMi0qbdt1WZJxj7Zxsi4ymxtPhtXnJy9t7NOanAjSHZOP
2NxAQn7XeWE1Nh/FoL3kMRU83krS971lrYLrVGrelQlbSvwtcEiE+/sj0LRHYcBIB9Yrw7K1IpPz
NcYYY3L6RjtTeYo93eetiAeO/mC9s41NDgkMyHdog5UsZt3P4dNEqoC7BRMC99IBKGmNBDOLY0TA
Z1UwPo7KAWi0sGW0Q9r1S04TPIT/FeHjvRMcl1IjFf/syWtMkx+Ps2j+uYNz49BVXZm1CMGrGLQr
IfZzIT2JjK4fQKnJesPn0nRCglXLEwfvbiQnF/NLtAnIffqMsnvtX4B64dmwaZL0qYL/1i3BsNBU
tStiG6FtO9WHgbq0DmRlmbjoVZAP3msAT7ACkK8JTOmJh/oiHe/H+k/FuxNGkRIfz/uDQ5UHf7ik
6IYhzk6jAwWYH/8Ni4ckFVVm1E759PZBCnb+zpCSOLflim/t7kyUg2eL2mOFc39/W4/Rw3m8enpY
pbZAK1mdfubwp7oh1qzAMP70LzSLn0Xvtj+8IPHtzfTdvrSeVMq5Tm1vJFUYegTZc38+GJv2FNOB
Bz0v7vYxRWB3abXgyvZXHS/qAAaM5VJgXEUWzYKrS0GGpkw8TgccAZt6yYZuU1adk2FLK2cWfhjN
8/R32IJnyy+pTA+/QgSb3dZSNV9XU5JvEuua6tLveY/XdK5f2Q/MYYppKoYIEr7HhFSlMGBo3s5R
0qUk783+xwVG7HyFyzByzzp+sOUyP/UM9eGt9bE+4xzp4q0XJwxaMMlgkFIBkzIagq63dIzadH9w
o+EpasAz2VrrKtHQCbeLvUsg9rKO3uEVUFSJCax/wvDJIGLoLboROLAzlP2FOkayoxOkq6Xq6goe
/YIxH3z66TFFQl0rLvxDjFz58nHTCwLD0K+52jSrHoTCD7gCr793cx8dpf2arlLlpeRSxDUbar+8
3Rc0CAXvHBbvIUc5rX60nwqTugaCHY7FLJp4bxMLeGxolipr7IOjYXyeY3FnAnMfNvu06i0LmK6P
L8OjTxw72uD3nE0jxtT7fkHVTo5h2Jlg4iEye5bqxFtoFSmUIeo+eb/VRbIYEaaG3AW8p10NulT9
Q1TrPqv6dyoLKW+CAm/DfugP+wh61953rkBLCui0p91tLulw++yZec0c4/jjcHmBk6eLfDWUbUUN
N7fcLGleOW1VoNd/tOrbZYtmuhpXqB4fxI0Rtre6oDn3VOVBGrGKGxjx2xXqwnNqJSmF1Qzr7tgA
fJ3yZIQ5HqcG0uk9DsFphTKqy4kZBEis6LWjrq5N76jyGfvyEa6/JneARVfEcfJoePDMfTScgBW/
aV6Z5KdvAWQBW1By97K0twiqpfQi1SvJ2sPkNTy+rBWULMopae0XPvQKOacidQPui2mrpCg9EW5z
Rf6xPnER6TWJiEkA7y1g9zI1385PmZWPPNFgnjMPUxhqgBLLBl9wLlfXicRXgssLtOgSZfloFHZm
MRwmHlttmUR+69I4sJlkqI/tVOUcsJ5YYjKcfj/RXZnMWEKwVcrnPLAgnZYyMWfmm7VtTGZZGQ5P
rNBIaBZKvXIsgC0gJmZlIkTmO3aamfVFX3YJ9mXF4PPR4gTkfOohKapGPvrOAuc/DtTJgyqk+OVu
XCm3Tkww6qwan5JlGlZ/h0+sUk1rddGJ9n04/H8rr2g62DF+5rfn7Igxm2LOHn6PiMAeJqJkxSyd
6gw1Coty6w7eXbLu1OsInIWXVjPF1Nxvb7sMx1qYZhq+Jhf0x3e64iUMlg7ICVZ5/844LAlc7AAB
OtMqzuYwvE9YfJNCCuQ8G0UXIEmMmbL1fKcHQscaFT8W3hPxuscWFpecigqzBnhNXOsj/EoUzKXg
s3d5yeu5L8FXgRyYtY+KA6+SKJnkrYPVD165ZLSc4k6X5zHyBkwBC7SLdLp7cli/HQYqTYuMUTV3
+9YRVSPtstKdSw2U2XeRsI8fExK8ItCn4wzj3wY6A4jA7fWWUSIeSqCaq9YdCRubOOrhSEobuIhQ
rAx24rAivp/aMH1GvYDQ6d49STGuvoTcQBEejjWq45SxAQhXYZsy3JkbWr1NY5RrYoAvNGW4oHLi
UHCGSntnqrjsJu+qgwRaDZXYg81Y/4nIlR0txexB/VJFeonjuvJ3sF0qa0VDbHOcmix13Me20tv1
BzQ9bn00eDI+VCd+rdBFDIdvknQUQS/hQ/wUOYNeUgUtgveV6LDihRAkEdUgxEJOB2bJv3jANyoY
GX+Trn1FlHGbJ328ZyDqaDLaRh1nxHknBF3ocACixwMA7CtUuKLXQ/nA68TyTf+7g0vPQf9WZt8b
Z56i9Kjqjb8VzupkDMKGKw83d7iRMdfyLFv/CpwJlOs0YvA6rpTgN2w934vl5Qk7lbSOhi5rfy21
LTGliewDjkxF8DvDaQKaYTw3dy+TSLvBv8NDYQA2UuoRkhesm+0SdNjR8n5q+1uelXrwxAnWSXqb
NLiFZ5vC3rtTgcFvm0g8uwN3jeGsvJsCUd9QSPgY/hequN9YxBHYImzKlSxmgw4/+6ih4CBFB6Gx
L+FBrILcs+gi9RTbUmERZMS5HKDnHFHIw9o3td+WXlwdM3Alt1fevsQCmNV80go73SCA4QdC0Vgl
A1X37uDRFp5OIerDxn6aYDgcDwzu9fG5gLIUC2yIgOl4zxSFdvvpIGguehWZCSx7gDmHk8wMbMGq
Mk3sOaIy37F2H19nFawBL1mFOTWhXrz42LfWl3ubsYhB0cKuYM+GP0A9f2ZW+TrAdTD2XpdQyfIm
fpPvkXR6WQ5sgJRCMFO/0G+EpRlpgvRLSxPmxztJS3QghMxPKAB39Npnv4yqr4yzu7Mt+wibNM3I
wrx9JnFoshxwCXj1rZy5nei1pv2wXkHVvNLBaHBl635qbEfdJiblHfBtZ/h/7M8jmGuWMXUBRfME
XZtlxGRaPwYgFi5+5omT1yonmncG1PUQRFrF0XRd1UpCkGfM3j0vgQ9JtRP6o9J4uVb0ncWlJNzn
7U4YFDxHdH6jaw67f5lKyyxuz6c2V385/KMBqgz5TTVYCFeG0XDeKgZ3XyIsXsMW6uIg++3QaPJG
cFhv5ABCyWsQlxIPXQIFsJ+0fQGqLfvya6tmu1U0bCeT2OnlrXN2zHnGxvuiSgXytiZEnmOdHJtL
A84EtZJAfWbOniycy4AmsO+ImQybmqt+jZcUr8V/pimWqkH4mc4eRnLh5wGr9HtOscXunDcIvrPp
zryJYf7pebPiRcZCGAoBUEFkTa0P+Yn92XgRBT/vqVoeaviNYVBsdt6gyta+64xw46UUQF4rXIVL
j/MDI6ijPC+kimYttpA2eGl7BHFfxHAiScY9jwbmxsEeM/dIFApJ31GJRZlWMEk35c7TCrJ3kFN7
bhJJdFYUooCvpB/jo6MzdgtZsw/rrTvqjnYXLPwtuPfp+3dWoNJlRdwJA4JFrpnpHhtIAWvFBsSo
+4N15nZ2bjLxLUvCk+w/9bve4Vj/dQne0wcn1yA0MBYxCydLE4Jm++63JcdxvzFoEfHuVMJipE57
zSCwx9+NOcXfD8BCuoTBkYJnoGsXIAlojBWhDeOxqaqZTUJWnWTbcsMGdNMdh00K31IVkweewtyX
UXC+T+Da8Cie61918ji/pZRypHF8DoavRnT2DGT+aEdtxfp8S/E1HpLDdE7PeW7pJeFou8ChSEVG
vFv3XSB7TuUAKohZX9bRjgRrKDhvor7cxmtrPgJ0n1NU9Qwok+t3orMU/o7Sz+OofcremWBNAJj+
O6Be0nQUHaEG6CRkCzJlz9iCZAQvbLEblvnVsqOcEfHypFDgEMt2k7bHVXUSFrmq4cm2DJ2ON5b9
SumLnuN3MTy70eTESEVDvesWRZHnUByqQOgSJ2oHWJ6XXxetwR0M9f47wSXSQPE4cZe4bjjR4r84
VjhKIcRO96EstjF2w4hJZRwPtG/2Byueyl07+fDS46DIzKOBaTaT8JhUKYdP7UxcX3g4oRqxsdv8
LhJ57/3lu8VLg7alfki5nKcm5GCYwM3zl5BanJaBG0P1lI1Uub8tKdYZw6Q4DaTTNOKaRGgM395R
rYjNQFoPB8B/ibYsrNLWeqQE6AwCXyq4XWrsgl0T3Mu2UU9qH7mE3U1wKBMzuGmPt33X15INeplf
q4QR1RAd0GQ+MN7uZkW0uHEtOP+ydORbW63pQZaWuJhl4jn9A3KQxzWGH74403el6hMW6pyjL0p+
4B0fPYZn9XGkpf6Vq7sOX8Np23PpKfmUSrASpiKHbtQqXZrmqJF9/fk+Dn/eMAFtmFCD8GXLDfFi
GN/3k8liOvjmTOiT4XtseUm0nm+kR0MPmXoWxjOiTv6X13r93yV8dXoYKQQQZxPX33vgfTMSbaEj
fYjsOuuuuEQRes66GqpJms8DGYUhxLI8vhAEPO4MltdsJyDGzP2NHLi8C9rmWy1/oH+bKn1Gf3L6
1q6wxZROs7+T6QzO0cbRPjQfqCubguX46xMb5MvN0mlFCXRPc5CCB72KZEITJU/541F6/379WZk7
gPZ4jnjXzWQOsdciiwGYazlx1HBLiWesKfmCDDxjC9pqGfCEShPAL9d+ZhG4kAnbiSil8yoOVSNt
IlirJr2iZvP1lHiZqawv9lm8y0yMllXSnKPdMug2mDvj1f1lq4CJqBab7s50udTpIEUwVoapBTj7
WSEEsMnY+KDEJxGbee6kF83NK8wuBiE7egS4M6rzL/E6Sg9oSrSsyOqxHemZ+3vwoSsXW2c32pqz
qeWuo36dhIJ+KRxeunL5Mu59g6sgqc9gSdA76QLYVYBSzZICunzuV+zSnCjIBw/BJjMKc766KAr2
cVjW+cdmsmcUZC/iHk5TGF/kXazMRflKw4IY+DPwTs4Kv90krLv9tz9UAxPq/d9f6NOJbd5DQ5jr
XHB2h+QzTZAqmWJOqz0XcrUdtkiZ44ULbPa/y/GnRvUPL2ri0iy1acVnAXiBMz2cPkte4oFkPx/Q
xnlZmP/IE81rUzoV7jW8vMr9HSQwe7vrWcO0XprhxQq+mbxAWzxagjE9QeHz5Ds+aBzqAGuVtuTr
icVXPtwYXR2DhYsqJfiJOeSphfS6CiSj/FeYPSMTHKvsO62s187Vz3XyOmWgk2zLL4zvGvGWpcqM
cPZCchYsBqxSK36KZN/1QMfLH0V6AFluMRLV6o6LrVf8Jd2uThQqNlq+N9tKgm6pCLdnYK8qCxNn
lvEyQjfrgNYGONGJh+sHGfER1siRra8SvfIDLZxAybcNAcy6+UCscy5q/uGAitCt/60GCoJRWsPI
BqlZR8uVDF1qEJjgk3pS5QjTVV50jhtKKoJxzGVfi7m/R6LxIypEPvjELlPHLO30EL469yX5ZcGu
hLk+8AE34OIsoBQbit8x7726dhdn0u4m/P0k3YkO0p58XQCEAWEP+4HEVPLUeM5+ePvKf4Bbyl/p
M513suzi02W9h1H2OlMZ98W7iX2hRD6IesZfMI1dV+m6BHhCNMj0/xisemFJF0IXXpdISQglDtM5
KZ4tvzTPnJ8EUx+/hi3PXRzzPc7lBdlea4cnKqk15RC9TcGvmKfEGDjG6nXPcGhjSD50HmUVd8Ko
pMYB7Ns1uwbAJ9acp5+6LjDoeHVGqLCyCZ5XAaAEkQUDFwD4zQf/RavYJKsQGSyW5/hHrcuzd2KK
IWzYjsZNgM/SlaFl55TnTYfwnWKIodoGnYgRwJ/teJaO53CnqtFQrHsj5g+5QPc4ZkCFGJxBFi/n
20hfSz9Kf8ULFfZYlU4NpHiHV/dcoj9EO+de2W2gTqoaKcXsv60mvb2i5bYkIL8fqA7b8qtvnljG
iKV1kegeKAmyZOsCbeSokBTvM5kz0rxYFQvOAfBRXUpx48Jsvuw3hrk+3Ln3Tj//l6eiR8XGbkbN
HSsvoa2133SXITE7vPo/TQuidf3hiOHEHLRG4Qrn6WL2dO8PhdKzAeqD2bTopjHA3/QTnIHhRMFz
8w5scCbdkAJM0U+GzSpsdO2IUv8KT0KRlb787eC0XATwrulsZECmWreXO1WkQ1Bjq7ziIsHCtILT
ecn1kw94JgPO8jQa9K5TXPhfA6DtFOFqjoTgLyj4aOQQoXzJpc9Bj78koNyHrej94X7J583enD6D
IlN6TuKhpnSd4mJybOGdzjvU9Av8Y6Uwb3ZOBxWWpXZoPdXEbdOoTTKY7Wq6b1QIqQPcCxy9kpzW
vWNwahZ5K2oTLf3O7CIVRfjM4GbUu3w8KwU69NO6H/2lfioQQTq64LUafXQqWPeUA5zXiPD651AM
8CnNDr+425Z30WZU1p3tOEKt4hGx5gDlva41XzrIgNbwo7aJC8S5kqfElCqNtJiB61kjBxk3N+ap
HDIWMAcDj79EcnIEiP0vQOAkGxkHrgqSHIErF9TuNrujS9izl7jqUnJqyP++galPHFFCXcLs0d0P
1sYAfxTL1HJMllhtsO3DEkSrt66GPpMVVJ6Fbo5dIboC6wlRjLr+5obSe/WqvWTqTgnfcj5WEGFz
LGJlRMylHSdnOKtK4bvs3e5jYDTS+gD5oJI2byVXsofbNzHq03Sanh7TVg//WY8KfdSMKk6J3WIQ
NAJ+krYUDRHAcMAv5xYVKKQxuSGz8m3G15glWpedE4V3jFKtsod7JsRetItO5BrC1SIfGL5hBf8C
CtkZ1WaGMRtg4ssvx5tdKmSXwUK46ymE3HN7n7w7K/ISqS8EwYD+82s9cDELz1ki1SgIbngOkZ7L
gobp90Zx3LidsWWpQmqG0VGromW5zHqQv5v2nyOXkLWc/XwXHsUISJIzbWlAtcgvCUZWXhbqDkxt
5ypMpx4H8k+pUa4WR99hjCJCCv+nuZAKE8O7fRqOd32IndW+Wzi1sT/58jrLjpoVzl5bgu1OlWK1
F73Zu6ZplK+OjbNNGQrRiOf0CWDvHhgZB3KS+F6fgQ57mfnJMuiKWjXnaONb0jKxQBIVIlcanuSi
JOfvDpjrJr6IsgwUyRgh+mTi1REBMvsRvvCXvALdInjOHe9oPckKW6p30F5kYdm/bbk+5jsgO8ED
D/2RwGflVDZ0qEmsnwwyJZPaehY0DtxJuuK4GaZhDo06tfazxWe1GaQwXY/U9Tc9ko4OySGpT23N
9p8TzcFMElVfvVOvWUARbwSnWQSvWfbr4MgtH+f8jQkVj+ZNztNqYDl/ECuX88T3FuNpH3lgNWlX
PVqcSSch96KclCx+0E5Y2uQ2+/cftRx+iZJokXxJdDmYY4otlTAO8ZX5OJx3tEUQu7AMm6NUb0Lj
dAoPfMg2WYvRQgSeMTVunXBta4YfLbRzE1/DaXcSrSxjilNEAv6HrYD+E2uZpRhEgdYlWD8BwsAM
TgkbMjD0BOLGqOdD3QqtRQxnRYAiNlt+a6lUj5+bikU6gj2/yC5RerVsRG92IISTk+f8okNFXeE4
j4uSC3SSJOWcCR6Xn94G38dEPCIt7uONX+YG9uDdw16jPjYXwQIVqj4GluRgT2fWuY8YJ0k7anpc
3AaXTCeFMjSnM7bo3/qA+s7idxStRYikdaItfY5MMVY9lT7ySv6uxDQZRs6YznGoqqah7LprhG3A
gIvFt3yuhw005QKZMXJwzstH6bcSm3AerYafwMKuRucDa2aqDAT7UYYl5ZZbCXs4O4YsIQFdjvP6
i3zZ41ENlk/gS/k+YoaUbDKU+Iv56MuFspA5Tw/6GuGh2GiGZJLK/P0Z9WVVGV1T7vmbFXEbGcBe
oXhyeQPpLbaoh5G5etS+fQO+fa7nytFCBNsnSPzkx2DOIRWwPUkOzRwI7Kl2PveQx/mdSORWwaqk
6e1hsrUkc3+0V5qFtqCUXfcZXG6oSywbdSJAMGalOKwJwJIurAd29cPzaPF97Yx7ZfvZLsGMRPJq
BrkEhcTpFrOB0BeJ1+imxnJVsy+MPUjfAXvzoaVp47kF5Yon9Y+Cp7V9kUhbE6NrW+R/dnLJy/EV
+UXkwZLHSL4svJ7KsHDspLV2N+92W6ZR0cVplJ+PSP3vmsj9ZwqGQS1FCGo+6/C67lzBNyZu34wg
S82I8g9ZFcYrODpnIjpBmU6rP0uekCJyyGCMVNkCi1CcP8FLEEAmOlLUi1n92XF2dPHvTOBYHq2q
1f+IV3fh/6wsFdxvVnl7douBgkrzV9lNdGnbHiyeyPHbUQLHgz2ZYpHGV47eIM3P0b8/i+TtrXGR
F30hzn8ify5NT2EzqYEvDZNj+xuzXeabuifiLur75qj4KK48gRQNpHx3OFSCwlp3Bahw7tdV4Nam
wlntMetHcJhYSNaX2x0H6PBpsmyUpo08CNWqMk6h4+6c6gMI+h3kdMMHxXu7z5xWERRzG5VMUYte
HTGAI2DtxCHPYZgU2FjlE52GHh3rxax5wuEPEajpjRDGszOWUuEmm/4LB8yi2VfWJ3HORnVWEq3l
faGeRh7HdNE1lmhu8P5y9fwQXjuDt4CzwK8EuvAjkeLuc3erlBEANcMX19IxY4+RD+l61uVhU1Bi
o9pGFY2y8bBhO4cKxrSfgaeZOTBltuVO+36zidDTvToo51HJTETtytdcQGLpyOokdnT2ofn9+zyg
0XcM/zg36DeD6+DtVQHNHRaDpjTYnoxovJ2hevOcjPvECNiHNtDsuQBwS9K/o7R8GY4lAaL1z27e
w6bcb/1B9/ThSXhZOV3acoFXhva5p9IO5TfXf8baXzz2M9NAPmvM6hQNMI0fTlKuWB++7vr2/1n9
2Dro1esXZMDFVElChyRWHPSx336A6UD7fI43EAoDgPZcMAeOT/3yLtsI6C+zaCy+wcNZR9VcLgiA
Gb7xMjAw6KJ53cFDgPKQEF1BSOoNlOLMRBTGXL9Kh2/kxdQTvVjAWGZdoz59wM2q+OPI2kfWGBRX
6OTwWaVd+kDoSkR43Av4CoMh950UjXP2AtW/ZHG/TOD/kjw8e3jc8fYIunZzfNiZJgOe4kh/I3GZ
GFGs9J7jNvqOlchziMg12ZCLL9vJNvxGlak6xcegQvNfh6WYpQzpit/nCcqGWG/a0B1X3I0PSwwC
1r8AGXArYSeOJfoCruRuPvHsbKGfx2u8NvN78nBEjBiL3H9yqyx4CT4yjbWGgHyCLyLsXg9xUxj5
GawjEgbQ88Zjd5NqTMuLVId1l3yuUKhuma7liqd5GZaYkb8m0MiVvatAdk+GVgqlzr5cx83/uoj+
V2XqTwY7K+zStVOdSIHDD0Tsu4P8HjxQ7JgOcI4p5YRe5AmswgExqq2fmVA5y6jPl+wIcwBnHn8x
AOpE5+YskMafgihpXzgKhdhQsaUEXne0MvTIlVGtYGTJylzp37pkI/kSPnEfIZYTDjMX2mMmVElM
V1DXI1Ir3lLZX73DVxM5bQ/x5lhaO/yQ8aibruHG7NYa6vjCtunANrSJ9PFc+kgvwttcTvgymyku
pMIR9s1xA+lMaaJ0QGfqRtetdnx8fJBCUCc2PPhAe91W21/LIUX5Z8wzjgV5JsJFPhiKkEibCFnG
Obgr9GMPmhblgrJeUgwGYuowjohgIiTjrIwU+VAOz3+N3IyhfjJ6+YH/c8k0to0VuoCm5iqPGnYx
1gdBnaBShpDCAz/6TM8P2ks+S0C196ys/xF0XYOAdY+wcsbvVYpeCvuFlhddXzZyeOzZgYN0LRXi
FEkQQfqHlYY+6x5SbCwVX4XkHBz7OYOeXkflrmBEcgJdDKNQhUbwCZjU8U8W1EMjUfDWU030u4vn
55Hl8fa68YHH3zZi+LzzsDCdRjljQ6yZcQCOvr+ed49/jSxfVoPFCQGPfWSKKgwmp5UyulPhCByw
j1u8iKGw1wnCnkUxObqSAQRZVf0iSUcST5/74a2xMhRQWwydVNfjkEP8ORWC9/+PpTiI42BwoQlU
XX/wrCbW+bi8+tYptUyYEiq1DOcRG5BmnJWbUkrVEHGpOw3WQsoll+bgYGvWR4+S6EuUM6lNk+NK
2YsYbTnvZ3n+bB4ZtWskvipaMxc1ck5CpEYQ1CBhjD8Ey14ODVXAF2x1F9S3qyYR4XbxqeOLz5Fb
kvMlwKoEdXyFIkiITSeIz7gM45+iJX5PpmtGe8ORKdghATAk4Ev68NbWxlcaonArf6ibn3qsshvM
Mu5mDNUWeuMsf5USJnRmfAnpJUVuaMswMd0k6c5ajC3A/7mCYbrkWa9lsV6LU3S53f8GAxELnG2n
1qBvzvtr0a7dNB1dFZcns8jilpt+Nwzl2mJtEvVkGTwmMUNjYeFeXkhTRom8wdE3mhhB2ZIxSLpa
BacrgZld99uIKLBHes08985oCeTa13PpG8noYDsFQAzodw33fT3vNqbbhwiz4LnPkRghf2mvNzEf
kmexnPm03tz2yUnePssTBoFvfFzYB/48n7p0euzD6GwYrFbxavICxsWB7e2lPvOd3UsJnhC/yWQV
CsXxCqzkdbs7l7VA2MHPvihZreoFhQBHwqH1dxUUgLJEYHmxSlFit1jOg63VkQRt4x2B2vAX7l5v
IF6UgR9fwWFzLL0WRQqS81H3NdIar5TJnwtzgEvVuJE8mJMsh/lrrZAsobJs9vy5deDQbpGXxpCM
pIXWIQFOss5aI4cpRkvBmrVQDSdyOuaG2rRB4RHfLOJuGZONuqp0sCwRmfOXppyvKRu7HsEXK1Qt
7hWZOV9atDiWqDcKhNa2+kfb2ANeKPbarKMWMhGaLRYP2Hz3JTutWLz2wFa2DD/AKPmBqLjmQvv3
Jn/6mIbTXBMESkHRMjnM/rSj2P302qD5tjByH+Ca8DHp1NLlloeqZTNwdI8KifrfCEOzIAGLJgMk
5XluA0646cnxDDOhvm4sLITMH8pZbi+FaFffExpdB/DroAot8XLG4941NXfasT8BFBgKfYkS/HFX
JcGFiknJP/u5U+vNOUQNrHmMB58/GyEkeD6ZzwbOQwgmTr5sxPVHyHaB5kkPZJGlK/ZQxrqX/0lj
Kjq5c+d4mcnZzw1anJ6CVQWnDzSuQOws4bvG+ZAdUw+xqnh3uqeOj0EXQG/lcYlCPoblzd0NjN83
1z7d+p0cVF9zYPGvgYW7OGq6T5FEbI7Wf4k4Fgg89wLIArJAtq2IeaR5nPsBcz7+hNi6rDsuo21H
vJAyblkWvA5sYzNme+/LZKAvQuaJfRCmosGaeBVLMgT7vQ6T9QUfeg2hqrj6edIUBJOli/zKs9zV
byALTIjjKs3Lm/es8TirrOr+yhXgmrNlbuxzcGIAwI0qPiK00+3qGaXLv0avrn3L6Qv4Mlk/WFH8
UWegiqC8/foj1tULSSXm+dcqcHvgY6NvYAKHBFtdQo3gbaseSQGNvhtKJnVx2nG7fZtyR4vydPhr
hWlvhPb1NkcLJnY64hy88AH+dk2nVkQQib7iLzlhgWgSj6K04esmx3pZVy2P8RITwmwAk89iUdgW
DwnctN4AcdUqHI7uUZe69LpUijIDwjpYNOPsV9bsQbC8Wdo8RcLUCOO2zb4LhZ9sFkO9mv5SPSiF
0ZLJ5NKa2a6kI34o7JauWaosymp4gfVzEVHZA/81QgvXHP7/oDg/OwyRiIm3WlYJi2hVtakDEtu+
MyMvPVIuE/jWr8w2WyqAZvlYY6Sr/Yhe1MgPx+M6j+EwG27iygJ5/7sZxy/I9CxSoBA/pmt/QRq/
jGHSsJfSXTLY+s8rpfEcTryVpSaa2ZhLsvTj6YGsi5jZxlGdN532yJ1WJqqKw/4Lya3nPF27U3E5
ZW7H4+m+6BYrLArVwAxpvMizyjldMsltlzYGMl5zpm8Z5XaT4jfcibw3+2o0T6G32udRbZ6U7UBk
b7pZNHMM5JeU4VB2nPU6h8gayb/pJSYwuwRfjHsnGwBjmnJhjvu5Rize54cr8IcuwS5u293B8sj2
f/pi8qHi6Mf/i0roMFCBxbd5wlggCCvrtwQa1mDMgm1y1a9qpSY1fSGawWzUomGSC3AlAmEhqiWX
30cKUhl1ZTrD/YA/gGophywN9cAYXzjLUkMMU58TKdaamPFyY3iMLIeqzDmncE2mE8w8TsawBOrx
ctcpBdw67U9saFBadrKQ9nUmajyPOobQ6SWUANuv2cQmKIZec8Lw9q1TQonut7GLkDYmCf+bxJH1
35Y9EBsGYgJNwcArfVwDkNR7geU1hL1IOOXTfeVmK5puBbI7uBUQVlbZJkIjkEg1B4mqbbmWL9O6
qC69t2vsXOVsIS7FYzEVW8mFzM/hhKdwvqkfpZSdGFwjDGZ5Se8Zn1n7yGeAlUbgMKt/6KY59WWZ
9wMLMaYP8U+VnRK2dtc3HzLQBuKtdss79h53Der+KXbYvj1mXitE+wz2V/7TXogDpS1aJXhC9VuF
eZF2s4++Zux7Ec/UhQhk5xOG0/1Fjmum6NzlLJxrEdmqq1ycaI7+qIAu3OtGsZbjs6Lz8lfqpkb2
BJUqR7Ip9YgC1Nc7FZ1+3thu7aafOT4GYTJGfQEpbyvA7OSirO2MwRW7ndT2BjjzL+OLOKd2iaC1
w8CqQvAUgtM4o82F2KAU3DxDMSMsC9tJxbLEJIKD3YPKXMDGPqMQHEp8oE4pDFkdaQ3yIVOnRJ6x
FIjG4ztRsAST5q6WRMDj3c6oSSmdE/6EQQ0eO8HbdoKFiucUEKdgf+hjBgT5OUtyQrkvdllnl/nQ
+l9YrL90ybLL1BdyxRxufG08F75m6UvkXmoGCEJv7arEHHZRKSYtRgjFn/pdUYjcpMCgOqJU6KMX
44qhe2p8aKhXJ+YsZTmug7lidK6A5+fS0MdrM9ZDt3zLU5UsduYkxJPjzRqbk1LxeTB0A9crwqpx
38CfmGKiqb1YfzrA9nw4f52Qs8i6LKwKg/Yk0wCy37Y4N4JHGfrGfgWmCmkXGzLoSEgG7WtSRDYX
BdLtTSwOU86mrv/c7m9jPZ924rHAye1uNXjieRzrivyU27biXwSpsKBvTMwiCzPaz4vG6YDqB1wM
c9qrt+bBOpNil2XR51EF3yg+DxbfcLuWMTtDVSNA2seWGfoCT3V8OKwv/SIdFyKoSPs+vXhDZhgY
+HxDjKP5eGiM9hr3UroXmk7cozBztyUqDgc/bcIhUzpR3f4HTgeSJkqNSTsS0sc16B1tYcRuDefk
m5xu7s+bPjqUcgH9esykPTx8AoeC+PbuHnH5kv04yCYXJXA5u+77lHXRFX8jgUgIBedI8mdkf6wp
KBNJJ1pktl7a6xD2jhUkgdgUtf/73Mc8OpsjZl754dgew6kSbuM3VaWO4QtTk08g/tVYaWgWOi6M
4RRzqeR6lLf5VsoZjt78WZiEj7h9tG/FezLSX+pa2K8UDPyb5Hik90+2SOOzwUwsSlrmacJSWLCW
ZVFPVVURbj6Hxd76Yx9ewiySXj/T4Aas6ZLqIIlfENfiI0aDgYsQAykvk2YbYQEY+Dqe554hjzmJ
AkU2ZakZSrCXaA1FsGDxKqPcRH5pDsL1zZtj3gyIsNQvKNKuKl/7SB7q6IMJOJ5FN0HWwm7qDKCT
P6x3HIldnWalpfdvwb2S2gnYdgeD65vKMpyN4Pb+Q6fLDiFUcpdgbpcx2SKCAD+Kous6quSfqQcz
NC/k1/t5Jr3M45NfjZa7ibkJHa8I4GSFT0EJT3EWjr2WeQslPsShF3jz8NhKdePmeuMTswHpGxZK
vXLRnsxPj+HXyW/BuIxz5l6rpmCTKTgycXkbAFNDgZCNKPftY0HC3YePxvNNbDdT9xmryk/DurNt
gfhVXV4S76QDBWwHSATTP+LX2ZCChthZenO3E8xxPEYaMoB2JWXImAaoayHIkhCDYSJXORG9IHgW
7nLcQPQd7Zrl5/u8NT23+LHTW7fLWQZcsapl0UHF9ElGzLknrrOgSXlDGBHTN4DMzuWMfPdEvsTw
QB4DGaFyTy1koBB8QPa+586heIfCIjGy8SaoEDBptDJsZRf8f5XZkZpmQ1zPltBSGlpYNAsG44aY
mZXRIP5fuWOARDNI/ezmjFCyxiQgl8k83mt98gQLoDElis03vN6/EWIrq6MwUeA3587xgiWX8A75
qWm3rmU9h2H988lUZkyqN51+1UKlrnvqNk1rU14Ergs0xkg/3UG7stpQCutjxf1YBtckYFhfefuQ
Bkg/RuQ7k5hl+yzWYfN0DABMiUC/LzeBBVic+OTc/4K2zwFOWt9sfPRN+fvTVNe0uctdacwaHzS9
K4q8PcNwjdnHu5z7qB/+6uSBEPsdTe67Rwa7+5WUpCJdkpLCO2ZUU8oG9j7OcxQy5/sEgnEHNEQZ
wrg1CkpTbWtEl2ogvJ1r93ItcVBCR1Y7Dm1JT6JwesBKij/5IsE/YdSIBAXuGP9djwDg/NfMMTfy
sIrUegNw5nzrL9TQx57OXUlBl1TCkKDXk070HG5alfMuu1QRkctXz5DOX3T7WBRv2HaAIz24aOPj
ItW5ifzwGY2Sv3LJqwiOLxaVKh8KzUFtCkGstGN7bSKP94By0htqv29GSQOiSkW+Jbj4p0YSVwGn
08xw3xVLLBwvjXTMXJ5ppE4yvi42Wd7TNQb+NwE/tKcKAKWKXE+VkQw0cFMTHpgPyRcZUukULdpB
61MhohZQj7v5y9e05nfZsS/8nWw2lPS5hgLn/gEkBQOdtlUNIplMXn/192PoCtwBd9PHAnMud2lz
wN0k1/0lPqdZ2xNFB2u3oF1EuBt4oih+bKRa/kNKYAapXci8swgWfVen9Ulo8bF+8PL4Tgs53x+l
qCpmxSHPWF180kE9PkBJuJ7yDWbYf8yVzMh6dQQfZvNhbDy926/h9k2VyvVxa2ynhc2bCrdcDrQ8
FVwqObiPwOjHT9xTV4JxxSU0lcgU2hbd/kgxrUPhnYswLUcC4QKKLcHGdOpuzbr+H5L32eXH7BIo
+3U1In+4Sn0pfdfbvMgI+cDXMeta2p9RSbw+HeLTAfqQLOggIonvjYziRIF/e8kiwBSkSgBuhC2G
BZCxEUe6AEZQGI8H3KdZdTuCUxovXpXIdm+dCIm+ZgkCS4Yy+rxEDX0+9XfLgSCep9qCtLM8j8Al
/tT0rqRWF3GgVv4bpa8XDwM4KOYUWR2GAv38F6kpQsLXaCxBt6tfyKtyoM4LE0nluKW076e7wV7P
3IgSYT1FjUErzwHboS2a6N3moHH4pdmpdj5YvwlirrcnWbb+nkl9dU87IVWofbNxIO9XTipMbLra
QgAVIszXZpcQ7se+HJH0imCisZyoEHWTsKWUJ2NvbSDEv9O+nDMEmHDTwbbyhCpDS/tM5iw5QnIG
cMc0vGZlyWBOK2Qt9uIf6ir+kxATAlmXaw1Mq7KCPML73JXtU5aMjg+NeBji9I9Ig1mUJJaMwCMz
a/DrNVOoqLsoqe5lPMy5DgPPWRh3O3gA+hh6UwdXTPI34Z4Z8qgbrywaqNWV5ZLBtiIexEZdiV/h
GJNbT5YTdJAykDPip7MuxcWDWbHMR6uc9hWsYIXTHZLkVNDbFkw8AtDx4f4Z3o0XJGYzQSitkQnR
MiSgmeMrkzdqyBDyhWfd2VdUxgNXG9oQIF0Ha4fVh2LxcAPD/fk+eqiqkgBGxGoot5umUTYI142I
/iFV56OTao9ouFvGEnPcUGDf9xOsjS5JoezpcHDqMlfUE8TxqhxTS62ZnOB5kofrDk7H9GhR5lvG
/5T3KslhYql3RSnvs2P2ycT8xjIucQ0wW2mV2k1kbzS1t0Rwb88VosWU5AnnuaM86R/473faydHS
Kv3P3i+ce+63RAcDGMc9hWyoTI7UnFx7cpPJB4jjKl5P8SzVHAGssXSjNSXMOCyLPtJO7AEg1Z9g
LtHhxNrxSKvdL7YtKgSU7rpEdCk1NdO1HE8ocFx18gHG2tR+Ye9ObcfRas82BgZUUn68X9WBG/ye
okS578RZZDb6Jvsjq7APaNeazeWNg1422+4s+ZU5t0REpMnGJotFETBuiniyfqEXdeP9E0SeL5c4
xjusON749fc5ENcZvBgqGWI4ReXUU674Tdrwdn2ysmkd+HrRD4Ui78VN3GqdX37u6A8IOtXTbn+X
rN3VTUem+hqHchsFp28kVoUiZrNC6xLFRpKk53s0WLLnWc6Mm5xsQEYnh/NUp81GF/2YYsApNhgj
kXOIDOkZfucbcHOS8Lu24aUds14aq6L869c20jep39DcVK1ov2Y3kymwPK0mqXh1c0AEHR1lKN/e
cudVcONluqAdv8Grbg3hay0hXniPByM2/CMMJZNVdjNNZaAq9w0VXaPdnxcnYqZ37qN5ajETwp9s
9OIOEopoLwKXJE6wjS6LwqiKYovfH+FClO9kgLJeFSfNVF5XBC1vgQUkruGDblcXcecSmnn1NVQ1
tvDUbMMp1/g+UOeYlusUvza9MI5Dl4Btw+zFzPHn4vSlfmONkFyxSvO4WyjGhc0lbhEdJZkzkIpk
bRmF5hMBiBzZ2htYsW19qpKHnZ76pkOEP3Mc8WjbmL5mhp99n+w3BBW3jaHfO20nh7ISeVEipB++
MQ+CBcatP24ThwFRaGdifGnfrqLjQBmEnTxDGU1AMGzMoDy+DrLhLcH9lx6RfJl4G3L9h9FehG4W
GQAoR6NOAa3AkbjcykoiMyj6te/qmtOsD4hbpvpiSKav5KwGJvbnNxtQJPDsTpbIn16bsEArxA7C
xzG2fETYvmden+vJl+v6qA9wLlZvh/hNLBKhHvrSKcGXDK0ierOsBGIVvJbVS7yVKnOycf2Iw+34
yw1FE83I8Pu2G1nlE9JlKWj8AoGlQxnPLkp9BNcJmFVz0uK6OJLMwl0GIJpoc/I07J92TgjPIelD
Blu6wUQMAXldZPxTh+xnQMgInk/YQhuzJfIfzZ+CTSM8C5IwMgOv8tMdYxjTNs7ZdwjZaOmw38Ze
dq5BpNsHjv48/ZVa8QOU+BAcvwC8BB7+aNQkXkGyy1FDDcsFlhH1jHKTvJzin7MsCqNbt3NGrom4
Y5V4CbjZENaRSbhnA9qZUjCWaof+F5NjAVbKuAfkrp0PH2OrM7EYEeu88lzlFvlOC6n8sf8T330E
VZ0XtgIOcdkL7bADxjMPgc6FMkHDbW64sqsz/9f4D2Jyq648LCGcBHaVRD8/cumVAPTIyQWJgnit
wv+slkOLJqK5mOLdmB224aX69ZTkthAk2nL+bF3u84D9aYxC0yvOLdyZiYZ++2q9GQRai5vQqnhb
XZBewfeSExiE4j1KKgMLXnsLcQq3CBGvqIGdBD5Znh4f+dFvUSdAeObW0OVe6zkrRG1K7Yh2E0Kx
CVN8V2EiNYKsor8L5i/EfMH7MijWG+T0rCSE2z4VBBI2HucAmFcwVpdRGobqdQ2lUWk/iqvgl6zB
8+mH+9fgdfMmTVmxCSsVK/3lyhO7GEPJ+9Mt0aUmjHN0BIJyf2tcd5NU0XwnmqLUdKSi7PaU6T0+
6yhSkNOHk9lbstL4r/fG0/U4CBf3GBaRL2Uz7wqf55cWLyU4dnJDYflC7oiy8gkd+8WiDdqd4+Um
dkuC7PJxrijJQxz4dVrttJ+faVWNVNEevgMKQSEdB8ELIpGggIW9ogk8z8zArJ+tNKGegVmByoT1
if22/Dm0yElC7hk2rHpcC8Z/TBqQNJRxu8+0HBJPkMK+X+QRSsnTp2fq+gOEVRqxdLK9frJVUnzK
9BQmFom95DfgkOj5mRdAbRRznV+Bq/3L/uIFuqDjehYjDDzFSHgGpTCNOPOXCu5p96bduDB1Xird
QKwUY43SBI8J6Z8d1dH8ftav0VyRJg/FdmAoffZjfzG0tll0o5HBIQTPF47I+bTCbrTFQ2B7kvKk
OVB4rzvNkMRziW6l4y43JgCknoh6HDC3ty3zG4/h7iDoULeFC8B97g4eJUftKQLL9IDg4ORZRUd1
tuXyjSfm9ZptGnNn3zUsrpv5vf3/V69sEWw0BCHhTbil3/gh+mamVJg2N8NQR7Qf0DzEv8yTI9fX
iVj31Qlpzo72S5psUt+OVp8r+zIayGqvpeaUi4Jj5hvoNy4LltXc7O+mB8OPQiGgRCFFR+1y73iB
3wnP5p2wrfpRzK9hDvpwiWHeYXTCupcAjUUXBkKFWq8sFPSx7SWG4GHcEFKdvSQA30dttBLl4ggX
hhbaefZQYccruBr1y/N8SG4EQxEbQXiSR5bN3aGoilIzoLgRPbxo2HCo9AQiVLM8chtUgKaIZf4G
o+ydxK/Xm/47ADx/4gzylbnJWAJO8pfSha6RWYDWTJmTBYGpORXs5phwBgk1rEKSw4+d2i6osYEV
0wVqMehRIIxy0njew6TK/RXXHTiHx7V4IeBXkMeih50H7+WDyWFTxVihlsHvUYB0p3RYj3wkJ20P
i5KuOKLSCbJA5yPCzM2mXnMuuU6Mo1IYyJleg/qEX4yfqUsRMklpgbOoWHQsiM958d9/+2lUcyD1
WwrQ+FvRB+rwC/5+2Tw8o/J8Gs5HphXzHG3SLHfPemLxFIa0iTJPfDHpFwCeZ+XpLu6nWUrBbHQI
uiUwCi9SEHt9bam0i2tGR4kP8+erqiCS0SmAecyNEB2/UNRIGx3l1pYUyFSmD5CvtfiAnCCuMTIL
hEt2JbQ63C+42eS7kzx2jNkM9sUi4OskfM+NbtQZ6YuSBoyeBiUzfukIBcMLUOavtL4ONm85K6GG
fPCYIb+/s7IHNNm8rHJN//RayOvje04IYuWWuFz3gP3xmtrVSwG1NrHzcVrQbc+7Z4XXYFVTees/
0iBXWYHTkBA/EtvivJ9MDXjld+Ah1PbBH1MW++eLKqrlmfufYDpotjKkvAiZvVMwiJm1GgKJil8X
MjscWhIw2SZyfW1I8OYxTOpxR0yWEx65fBdmiFDpFfK6/pYnPiq+Qg0cunA+JeLo9IVRTwik8qDg
gkTfNEG9yRP9nv24MF6c78+rZdPVAPu5bkxG/n29gtw48LYgvwPbC1VtfaUltRV78Ojke13Uiefg
4wzuwCIAgm5Cff40CQ+ysqTXln6BcV+skhbYBwVQ5+s0A4u99eUFdwLRShNUu4+1LYPLQzV10Ri0
9cSFQNWdtCiW3BAeFDy0+h1lkmh4iAVnUS7RuocVJGiJFCOW19j8/YSNo3m0ymG8xaqUOgKf2xEy
r2nqO4wgdhUztD4z+XTGRmlj4Tq9sKweVTOhh9DdL7h3gsP8w7V5FKkc6VGzmIEYffXFAYu1r8RR
t/QeQaemILZN9BiSWDdOAE0NmwJRya/cSnFWwu4jpz/wM3EpCAZZWgWiT2KD+apekwd7Z/zpnHPc
hS61AXoNsN1G2juLKuy8rLfsPLco+BWAxF3p4e2udGy8RIiJFOu52Per0GLwybSF9BjGs9cxFdZO
fR3wStiqTTMUVdcLrMdVJWj2Uy9snSXdXPR8CJ43n1mlANg0oCkQo5k+mCtVkQGP8qSF8Dh+/L+b
H8O/Qu5VJGg0C0ZGWE4tHJPmKDHRohp+zHjzqZq7AiGxOK+T8Amf2eArwQtCkwQ6mza2JuRf5z3y
xzUgQBTZmQPrUGTsU0bdpyVfmOHstKXAKxoIQFOiFwfpqkoTRdVbVNFXv8JyLH4nH/p48WW9VMq7
y90+Qat2mxPqw2UaQu+r2rb6cwkgWXDeAmqlR7ZqXoQlCRZ/FQG+uSkmAS8pKyHAvREglyThngni
o9rCwStFwpkNrWGcxpq4p9Ixb/TuHWiqwuFFqWrIoPic90OlMM8hreFNSC5WUjowjSEfyM0MThpd
66okFMPcRQweXWY9k8+l6x9ACbsWXdlsxajgESCAGbjYR1UoXfZVzWxf/z45/4DB4/Qr4T7mNHxL
Pbj9YvQ1jvhZBl2DFLNKe731NlW9f0utuVLJBWcBMM5FBzT0uanu8yAXAcIC4ZNBTYcwNF+t+mjl
/gAx81g46TtdZ1Dhd4u7h5u4qYBq82faIToeys7NRAGBNx0tn71GyyOEKWVQnXC1CNzThCJWPvt4
m375AAeH0V5/a7QC7kzGTbF3XAq7I1pKo9jv17wRRLOcWH799CdoxFGrHVZQw5KsLSRheqiOn3ez
lMbu2Uno/OYS8f2VsfBEP6a6jq+02CoWoSWOsH5bmI5uNJeUB+CPXgr5DTKlAiQcQamUuYBiI/Cb
9dmxfKgNoNGSWlJH8yVh94IsF44E45tU2uXjBdWa98FWSW5dduZkwo5qAaeT6Cn9pyzlJDiCzTch
DREiTyt5nsc3td8LrrzRJXiDN9frdEzRPBkscxBmFiF50eKZ1mJ2yf635LCnD4qSb+UPctX66ns/
G5Wu9mL0SBlh4C0/oEDH+M6NU4PJYXAWNhacIMTIKKu+ECR8xbe/IfDcHMcwPzpGyeKbFE7qw0AN
GZ6ONW+HxpfI7XxkT/4jzPBYT8lfvpvMR+GVrIrFXMRNuO+0/zt9YjFuiJ02C6EgtV42UzLvb0Q6
N+vchQc3dZCIyKkQqvLNDMIZFzy0Fl9XSva880d1El9rmSlon38VSYSnGfdWXN0XiUKRkr4FU16l
8UviQGlv7G8bnt4RcG1vo4TUCEAZPbt718EsDVmNWW3KwBHOeBjToOG5X/eISAu0YnsGwSIGYV20
4NFEGUzUojCgUbH5sgDlFlX6Kfmwkp3K8bve4qJtjPcKNkyqe6d8ITSEvSsoTgmmMJZ0vTr4XQgu
hBZaNFJgGIqEnov3Em4W+jOq7+GBFvJPGGQ4aeaPGxuO4HDE8WGaKf7OIY/nSbY3nWLzdN9qoqeZ
wtH3EPpWpP/1MrCqzSXoE8dboaexzYZIxBTWEsiDwU40/YQH7aL7Nz/NdxHn/7XYbfbP0sIg3Xdn
KTIojZoE/Io/4EtK3I+hNva9arQZZTbeO4uo4MbG/qrFhpoYe2s4utoQMZf0XhGTP6JObYLBGhsb
VQ37gx7Qnouw1Jzol8O/O54ZA2Vk+/2l3VLID43cpjErD+lvKT7PdarXBxtRzMnzESeSJGIDB6pu
6HtHKV8h6Lm6AnMq1/t3Ew2c4ck5Jw0R1zohChBNh7g4aikVaBafZ1qOV3LWJIfa55eEHJNQqzZr
WTe4DbNgFOfeJsh+hBBhDCXcSJ03UUc9ljF+rTDxxNjEyo0jZ4Uo0tvt4WEobOipwWwN25/INqF5
31qnmUyWwqchsYg7hWYJzmxU8qkfoYSvZxTk/1YdirFXniCzJFAst8TvkTDrToKr5AkqKzd3xhs8
xKbjNtqLg5Rb/DqYfgTnd5nCbNFwWdCrTXPfVI3DAhjsuZHhBWv747HDw1aMFYEDrZpnas5XT2UV
UbniTdQy14QbmdPq/f2MLegVVhdMwBG2dkPMjwRzukGcRApbqbFsqOU3WXuj5LVYDCcDUH76xhxt
I3CVihGVWP5UFmkz9BnRTBSab8P3Sb6e8uFZhlyi3DHTE4t4pyEiuJvKZIT/pW7CNmyfb2uNpFQa
pi1RS3IhfYWRD//qyqxUFyfK1hRI4eSxqRXDQs21GMpvdX4JlS8R9dmgADe5ndbUeNYjxGY9ceSe
KEsS3HUwQ5+KLhEkB9c0xOJVTXhLojlKsAoITdcZgN0c3Q1L+t1tMUqsFpYy1QO2EoUhZ14Fkx9y
am75VhGyil7uQ3OIFigWQoWkdAuusiDtla32FPZI1h2Edsv3Ltc77fy+K8ghJyoEAM4Mz7QzH4y3
+rOca8fGz8fuwI+q/Bj6qJM7Q00sNa5wFe3qfpUWMdLh2ELBURGvIxDwu+aIkxW3p7ukQVzwMd2M
qrS8BmwjZBAtmucd8I3jAIWqfhUjb/mAUgVkJOVEXiJg3BlMLupyx1xiFndtXlN9Ha8aEO2gmUDR
ZD4sXnaMboXNmXian/0SUOS3n03wV+7pyizzSHuno3hH32QlO7K54k5Sn4xKMiX2bO4gT9ovOpho
xj+u8ktOSTjVZ4en0d67FgKimGUq0xSEIwR0fUMyWUHoHrH94zvaOhGFBH4LOpybh8+Dpgg9h4KC
yt5U2J076zQsMSawVaHIevK+/GLOD5c55DF7ZkwXpzMBehvM1ohLRSaFGv0DIta2ARTxqIixnsmx
feA2yq6VLpnbuFpFslot/1xHQMMdhwKR1CXeTHdUsgFRmuoweGNwr1IQO4b5dlVtK9PHBeGvwJ2s
cPdZwKRkxZ2r7cH+YkRyWvoMTqXqJgJ/xoHSqvEUqOi2n2/mEQsLWOLf5wdR9FiBtVU1ld3QBwlN
aJThA0gfzIYF7TmK9hWOMIKZtli0ZvYimH5vdQt8AffIV6MFz3WlWhB+W3t1iPRFp6yTjK2sctw5
EAY3xzZ+b94ToaGE4pCbndnR3FxSReYPleis/jkSZNetCvaIENxWpPU0J6QbOeVY7vrx5Pqx3Au/
0syj4lSQM0gz1QwM4u9RSgxmY677iJ0pXjhAMfhTgDLjo5P4s12+ezqmsjVTy0hYqtwKe5B84Xrq
ErHMc5jZsBnDh6f/iVkDTIhmevwgwBSRqjI+051k+bPV8VIPYlColj1NigEQi4l47ZraFdhXLG5d
BSAh5MVc/5ytOupv2O5HjpEO035JiHivMbd+ukMOvwqVaVUxgvkRX3o++hKUGB0tQsgk/MuEPdMR
saXnGbZ2wED2cUs+fZoq5PgFdbxy+eWyrxs70oMv+GI9rd1ZPF2nXFdLm9vL6zESRrp2SODQVLKg
/CXl2SwqVyAIX5+bFnzkBjg9BO7par5c2ziS27lM3Nj91J+gOI9cvUKabyvoUqIwKBCol/5NfcvJ
n+ux71KBw8vh0lfS0TXA1HWsThLvX7sMVmpoS51pF58Rt39twzEoAlyg2Tmj/IQmhlbuZ/v7I5K5
NMlXuJDtykKO6P4ePH2TFKdiy7nmYgaVNuJQ3k/UmX78O6EHcVq7E3Ue+U3c/tz+O7aps16Wezjx
4Mlti4T+X09AnY8pBumDEZVJXzAFrLX6VphbEzfLddzW+daz6EUG6u0EIfY1zRyuQjn6S2uozgGl
ygC3ftcCYYHrGe3/JVJp21GBUTunKpyO+KfqP6ur/9mC9kCPtNn81X96RwJA5yjknvVIZNBaTrQQ
PLZcZuooMljSC0vh+dx6HD0YYJBldvNAu9MWoGDGRj+o5rKSIPEuTP6fDqH3xVvNwkXxCkVCFCCB
EVZ/OV7pq6m73p/Jd9PKbGOOl3FZS3qOI3KDhFs3JK44hNbUZoST2hLFccIWEblCQvbpICa/EJ2C
FuwrL6dZmvp5cD4c0JWaMt5OyBLKpobjqAFwajUSwTKFlGqfs8ebA9vqGcH9rZ+8PAJpiUA9vEcH
0sCYVmddptJcJG30Jb4W6ltW5E49l0lJfbh1TA804R1jL0fAsIl+AwtJLUk9Uf0akcoLoGcACVu6
zR+2ATJCA1zV7GVIyPpvGplrNEvWCX/zpdsJVJj/yiztaeCvBWZtxtUaNQWrUxtcVlpJR9HiN8e2
lGs+6F9thMUtDhssAbwgAJFxt7qdKtQwzTuTBAljdBiXY8fTJ4ax0vI4TzRcs+tgccFlrkyU1roE
ccvSVnHRNJYLNXrXHo3nQEAIjCr0YpnOAVbaPEwnLx8Xor3Ue2KKxisqEzMbaq20+b5HxXHHUrUQ
8H5i9RiZKM67lXbTOfAqNgu6QNuCsVXw9z7+kCZECtLWDpTpnJ7bZeEJF7/n1UB3UAUg85LY5b5F
wnGVrFyo+jFEL23vxsa+ga9SqinXTq5fG+T2Ozmdfn8P3Bk/V4HRy8JzYWMAU8vFPF9xzS9sascp
9hRSF0revh1c4I7ln6NIDV1vy/PInB+BX7duTTbTien/qPbdtoIMOQdUUXIymhtlrOjS9OObhr7t
3LTMBLn3L0QSi6J7mFMCbDxKU0CIlvgGVwGetRap5cz7lqLdtMyVPA8owckeBnpWNGCNjnkeXwfv
GY8bUUaFDfGujQuZDjzkj2B/ILC/cKMsIy1VHERarpPkj2oUBzEyXe9NkujTY6N1dD+/huCdhROr
dNGPZocGxJQW460Zvd9lNMdtAn6HgOCY9VdLwkcTmQs8Xs2uDJ2I2bpZoenQpEj6v1EHuXu3NIMI
kSNEl3KK/a3k5l4ITbmUv2Xa52cozh8lZErvzw2Xi/1H05matIEmmpP+MYkxglQBe61jSufydhnf
rKpS9nDWk91JHkPkSJcQyc2Cc2aEEfi72C6UXpI+1sB0tBV7B7VU3wOaya2Z5vE/uqPtYHxEPhuC
MLJ2qev2X05pyeerA+ioMTFx1dh0l9KnhaDn++6UahM3Gk8Ueifaf9W9mo2fz7uOaK1n6mj9B+3B
Gd6zLuiifx0CYJjql2fZdVVGzlLz9mC61hHBYMWSIrihFfCMU+v9+9qgiNufu3ro171JKPDlpsDH
G84AWD8S2dsH6cp6J3k4pxFy2ZcsvUr/XXUMHu9GyjbSJ7vm5mEXslTVDRqi+rvWo++VZ5m0h/Sc
DRNwFO1vTkhmzDdVbDA1iUsxuglADiuy1rDa25m4tXfMnQ6ROhs6eMjFdQbjtmQ70o0KBiH07P5X
SHUJP38zGcXFWk+VJJzwccUfZFhKkrT2dTpGu5ehkg6Fuki9M15SjcIO/rg5UsGdrpYvi8scfHMz
FpnpX4zAvITP6+F8xTj/Y5v1H0oCViO6cb795SzaLTv5dK/d2XUcdCuuQzMs2f0aBVhzUzNPlLHI
y0d0xENCQkdzryCywDSsZWsmrFcmyfaZtDqNf6+2fHGkly0xpYB5YSnElcsIu3+e7ztT5uY5EKDS
NCH1n5NS8Mxb8r/tlwVCb+2gfqKz2Wq8sFj4RBK+xul4k7STmrfAWGqBpeevrLdpUlWd4Ed9N8xP
6a3gvmjO9nZUjPnXx7vaCo/86RWigEy5wZ7SO9ezhJQvDLzhtjUjNjqMwxMFeviMBcV9z1S1P6wi
twGBZz3zFzvbiHhIZYSVaIpoAvqNL7lGgFNzPbV+UHnt/RmzldDLzovEW4YwfC+BjK0NfOCCjv8f
mpAGm714NpTrk/uQO53voE4YVOXv8ugruaJmcSD18SOSR4WvuVkUe/L9QfjlyTOuMGe9z2FDB9Dr
gUOZnOMzzL7/ctsKt92lKPbfGDRswnBa5Tm5nVPGxLe+v9UAdDqds7UhuBgiabImkNW40EG8V6nb
j9WZs3T2OhiNXHGTTk6+spWn7x9OyXhoz6lrWFb4aOCEAsGxGJGvsfyAZrDPl3LsdWnGDPnhrnbP
frSQt7KrBG7/AWZbZ8gd0deNrthWe1Hh4zNWkvMeyN2LQ2EiOPS/7ULAvKytaBzHaIfZpvwnOgCv
Y2y46QaPXdC+75wt/VAlpVlD6P7LC2jmJo+nGnYVjalwPsGP9n0nwd6HBpRLaEpF2g4e100KEUnT
j+25LkBBHTvJH8zBryB0DO4L66ZiY++eijrjbfdGoxB4Cwykjo5skMgBBX/uNON84iVD4OtTtElk
PJ32f1KQPLo1GuE0oj6hnwBiNf1fLr04gy+tqIf7nle7nTBYAPWAJapAzMi7MZ8BUdlB3x/OAoS/
yVzNhF8s9UoDicsaTTPrs5CWfpf8xlow3LmGogEYYbz3yzQcmNW7FNNgae5ha0f+0eJuW+tZm4C5
AfSYALd8+aUw4jjzYRn7s0GmVJIilk4KdzsI+RcR00Wz/jzaYU4pRwzmGjhOgYn2ZPEhhbq9cIpo
bASW3XCq3BZ8kNq2piNL+zpxuYCENLH9Hp7ihEFRiuBoNAYKWO6X807F3N3LsP/1KzR018EvFcFI
EdfqzOJa1mcMS+Xr8OTuW3Wbq+2Rd13WZYMAJvBp4puib+Don8mX9Sc6qThhRj6sAWpOEe12O7C4
l6GSP3Jex1tFyZYK0LT6xwNs6ERSCV5a8+vkLh+Cqpqw5qCQ2XERUGayceySznBsoAwfhiPQSx8a
DKgJeXeN79C4zNtNI8HNucs7Te76xpPtg7JmqaN+b+2PQtvrdpjw6aFAR4LY3IgFRgSYHv+OtS8s
yI05egyeNYgzXCryTYJNCxqAlOq7aHiVk9u4T9H/k8hAZfSUUQtpur4keRzhymad3GwE7bw042c7
WPbjMP0N/BItqRNIKQ37EYkTpQEntHc66wcM8GrYAhfKbRdIP0nxTatCUA/7vMgO2rVuTMZOVcDw
WsTV1+Pb974MOedM629bGY7ZwB/49VNMlEGwuzR7e7Md8FgmvCSwTQMuEu2gf24mYB+1ASQ6TJP8
fwF4E7/OunWT1N3pE1M5KQ+esodR8Rf8+0qB4C542E8VTtKNbbgjpNb3KbJuACfnoSsVff4ZHuPv
oyPEkP4EPMWDbLrGT15nmQ0+7YFUBHLGZqoYeo1jAPqGO7yogAhnx4kROYFT7+fofGoAR4rb4DiR
/98s1NcywhmbO+X5uwDOprl20uMLjRlUwhRH+eNwGw42NOit9Fa180jLa2UzzpkPBPtfaIzYauVb
CRMb+PnEoBK/rqeN2TYfPynRvNo+QedBdC5GBBfQ4m2RYlsaTw9VR+7GdmTb2WVxYSB625LyYPTB
Ieqd/lrMDFP409tvcgsLICuaAsY2bLL4alc4DDG0AYCmfjinywuo5MVMytH91kqg78lOoqgqIHXl
mwrY1Eo0y2IsinktlpyQ6R0Kuprs7pyvT5ApY60RCZy15Q5PyTNi7dQE5u368GRM3Q98tTpbWyk5
2eIfmaqo/DuRtQAr8ycawVZEx/TZ9QZxWIiV8TxAE40KqdaX9xEnhmkDkyyK0sni7IcA2H8he/rv
goT+kOIyq16+gHNHJfH9zvIckuYLwXSlZOM9uH224GquCP/Lh6aahr7XVHojZ3co/KOPx2XR3MQx
BtyIjpBXVV711a0itSFPD2+0QpTvD9182QWCXy4uXszSA2OJwDBhjqEAYGZqpTKNlPgwmMh2ktTD
wuAmYV/3tB2N3913Xon7aseVxOCMS5V3exvWiSsFzYHIPSFQ6K+nTXaJf0LsVyclhYT2mb1cmd3s
5ifdqOzdM5kpgWoImX4jH/ngNry3A841G87TEQX6fqIhz7LXbZLQcsQTF23cVRtVG/mc493UsVuE
zxTD2uwOqH1yddH1Qf1U84hU+dd4AxC9FiOwwXNaXH9spMehuexKIkw7w4jU/QTH2fflCr4k6+cn
KBwjSz3r5vPbinAGVzjQ/6SfwZOwSmKkW5EikDZE/zTLogp5DF6R1kLMWk6cFQ7QwXpaGEPFPy69
auvh5ytyioUQ70VhgxVjxP0z8pD4IdRf8OU5fd4sCulJCDGkCj81aOd14pd/106a9cZWf0pDODa4
Oow57bOCpLbzA+lnv9/0rWdspWTy7ZVSAvqlVPA1I7eTo8nPDGMGjkhf8uPV4V+gR9jqKxBw1idX
h49Hp4ez5N8iyeA9s6OP5Mdo/VeTZx3XERkCrZeSqZlQrtnrQ8/Zh4t+KmvR6kWOQQpMEAXn4oJL
Crxv3auLc5wX+eNlgqhiFAAzgGQ4bonrttR0iSoAeYmZ+CA9PWgLgcPmUiVaQPbnrCe5Etx9dS5W
4mnAWF9WJtaWfrEHZWdxOQG4zvUae9AuOcnivnc4TQST33gEyO/t+NEvXkEOyoAYIChAaod+cmks
0V33tSBz0YVe0cu0aAz5iapYASbvvlDZdv96Lv8y0W2lib6uUI2NBmoJc9pgv+FELbB8Yn9K88lO
nFC1ve9t4IkDFTnBmGzcBsygPgIf+uBEIdcra8l4TrN4a3iM7HVbxJfv6WmA4wSYcbKM4s05xpcd
3/SVabkZsA40XWDRFzpP3+FHv7wOEMmiL7vZdllP6RtwbrQWGy38zIbiRtYPWjKN8FG3Uz7Sbl1C
yejKWOxRmR63ox7YapCQQS6E0oNCQ6fIiQvB3wOmO69747MqrhTpswdoqQrmj0UGbHgNoq3Os33v
VaS1MMgDDj0g9lD/Q24IXLzsqMavxM0KGZMXVS2IQ0MOFMybkUfDzj7d+gHSdks6rGPbNFAroPq+
7rXhAx29gYqC4zWYxuXDCmspZgb4esbH2cQr3WT6vCpJebmi5pHOb/UcGsMI7F7gwkk3Ll43V8SD
HmqZaPH5jbuK0v1ZyPmhosyfiL6BxWEKDPe9h8iCtVvlZ3dTeroAj48V3Xr58BBa8ymnaoUk1xdL
H7wOca6MAWNHtWtT+zkXoGVP1L/teQPhTUg4+VrlzgLRIRJw+528busYes9J1zrSOmUf8Nc0FjY7
FU2MNxIrnsKN2R92PsVMYB6cuplMtxwjf/Cam/5vJO1RfAj4/XZUgrj8s+6mXXDygQo+8XeM8Bp6
l1lA51wIovTkqFWigOAb+Qy4IVg9CDg55wL+geRd0PUIdXJQpGRLtm3tDAKH0/wkkkdI2RwyddW7
b+AeCAvr+OgkTvNqAtlQxi+stYn+/JhcjcCrcMTiXRo6Y+LfYel5WNd4zmQcMdXws8wcoKuEaC/s
XEpDWTE4SC0iKSQEdV8B+uEnfB0Rsy5n3MHP4Ir3SD64DW76PfG7LRQ9b/6E9wkaNLoWDMYFJdgn
fraifj1uCyoVsUegU8UD3+sjVk3VaGO0aiF91uJS+a+fZ1V4kdqgRpsc9feLwmbxXjwXOvN/2IvV
gGeF6UXDHKao3qev6EG2dPAc75Et29kT3RQ+fF3/z2pWkx2V17dvAzDSs+vZOdQcbpjJJwjqDtnx
kXE3fmcXqYSP16AJcNnCSf8UhTsM3qz2ss8QPkSXlXUzBzELpOYfJKr6ik2NtPeAATaGK+ox8NGC
pnK+hEG1pzfBqw7IQvwrzskMI67HmZda/p/HI5qQts8c5phsQ+n2NcbgXx2LhdIaU3Fq3TXUlUrs
BHeD4NNxDL7Au6XoNIE/iK9BEhDS29xvbk03EDumRazNhb9HQzMgVogmKMmdtPuPlFfF6Fp6uIgG
U/kgBRc1mhFOlEvhF5tArMlOwxmyu4IMnRoae7b4jNJw/54/J7qAFuNq2414XRqbFKYaBvKVATW0
7c3ZK6sPcrrG+oRcvh97YNu2rYmiYMxaDSbJQJKXyGoWokWISRRFKc2W6djguQzf9D+XmSflA/Xt
fKohWjsSkinZtDnxjCjzjFj0kIRy5ExNt0xTLCSdfK+mDkwgFb/QsxCLn7zOgoRzltecc1OFE0Xn
rF/GvdEX7wVhdrfAuA7pZj4U8OwD6ECXYr8fA3Evy/nAgnCSslFQj404yZ+Ind7qoUrlLvt7KeMy
cHqi8nj8ociEALQlauFrtAUsFibwJHadBBRn4gGYXx05r/WqKZP0IQdVnTX6zL62e3eF/+tQhsyV
f+fNCj08lG2l73w1JSF6lr25Fl9ktOW9Yn4X1qxD13JPRGQaG+5zneEjzqtgU66z53aJCMZF3cP7
18w0e+8RjaXPh1Z7W2BKeTyovA0Gv096k6kmJa3X0k6eNmy3lkWoaswVt2AVWGjcKg5695URskCt
AfoO9ZomuO39orDEDCtrW5ixtTmGVDYUrv7p5H9rZqKD+NdqFXYX3516GBD8J3iXjWGZCKUPJqON
rEIsNm3aY6gQEdHROWwj8IPKhYXT+rjeR4irfBDPJKvje5aXaGIbVY6Lv5A5vjOPqoNLRzx3fTVT
RxlcKnmd3CG+JUaUYEQioBvaRn2XPi8EdkluQOTMx8EwGN47Cwe18DiknU5ZUgUdIzduj33KqD5F
nt3DuFmvr6rEV+bydV6dprnekiWJ0h8hKv4mK2Nn98yoVuTVLidD7ktNpsrwvAxD34ploeT5F40V
kLCeOIeuwwaCUBG3K9Pd6HYz4PL2rNRDRHXc6T5yUeNXHl8M8qb5/Sjgp+9N7OZL/UIvHRx/a8iV
86cijCJi5VyD9cXZyoT3EDosZnfdT6Ee/ZZw1JjdxA3Xn2lpHRpTk2CSs7M4luOfYfnrbywArcGr
f9/JgxQ4WO0qcCvI0Oq4WcT252MVeZRRzRks9ze/NGLld7HI68GzygE1OQhNyJdQzr3Soh/nhjjV
rGC6M1Oj9SiC2a79aJYMZUbr3oCV67G5IVuYxXvwILAt2yINeYCEdgOZv8aMDs/X2HHWBcMjMWsU
WKTlNmYSKUozD9Ga+o4kmD0Y6Dw4fdXHXIXC25RLdIPB3hpcNQy/tQOOq24+kehH56xwb8B48baA
YxzsP3VCVM1eqUApNJEUvfRPI9ozNNoX6ycOEPEnWM3cc62wClnOvAv8QaM46liGLX8ofqARjHbN
c0RIv/vJ16ckNx+bjak7jtFRduHlT5tU+/UMIRU3zuClSMCFBZyl50g/EehOl4jy1MhckqDbtF1A
NFMEEyXUwu7pWuszQC6NNtrbtD1KAySqw/3fHwsmcPMbqgJVdBDgm6Djk2S4rqmfXwlFrfvgmbSb
Nf1iCPgCjYBIa6ONSBlecXUgGZFgjhAPBEbgpqLFCs8M9pn4iOmR+qa4GKT1l4C91+zWmTBDJhv9
qehzwGXcMXOUI/HV5BtA518jlwuAyzQrmGEHzTQNO7qecaqW5y26N9FYSEow0XMBsWxBZ9fuPuBr
cNC+ZNpfd8ccaDMphtc8ZqXEzNGiG5EUt7FSlhS0KtS9EUrQBr574IY+y9EOEGM8Z7nCgzm2+tTR
gDJZ83rZ++5WO+FFAL4kisGfEncWChPppdv5KBhMUTQ+PBwYX1U0OwmpNn1PwxU9AbKmgKyaP3fR
TqjEIvOIo9m5iIaDgofjRAMCcOBOtuoSzQy/sy23C0SIt+tmgbDg1yY3OuGjkedswFXdxSTYrVYL
8CEIRNvb0ii2w8lYd8o/LCLhLhILbgdmusV40n3NQ/6KuGtFoQh/6PSUZ4aGVMxXJSV3LeiTxaJ2
b7yuciIoDTTGNh4CN4pIYLPxJzXoUxV783E64yTOJE0+uJy3K+MoptO0wA7XytrDNMew2MeL1LMe
7ORpq0lBGXtTTnVCiaF55lB2z94c00c31Yk7CZ6T9SJ/ZdD+T0ycPPzQrzWjkWKHyq1+zMMW5csO
jSbH5eq7xpluQv5JsiFJrVRx4Fr0geXU+ceDAtzDBe8iOCEVt7NuffOprhrs3IYiQjeqpYPtaBvj
HDkFOJb6vcngjSgOTb8S3cdEuTx7bqW5dbMUFYpPpMtuJCwo+qEvDAqKSzy9z28lkhecYKjCtian
XUlj523rRsoWtgovksbxwn3+pNQfm4bPnVC5CGg3qTHnwwlMaVe6E3NA6sk7Jj8ZhBBNqYPeS5LI
r0xgAOuKQJSZkXTlFc2Euy7/J+Niko6hT2+IByik7/BKIuUOsciTKzFieTeaud+t3GPXGzoSYRn0
St4VL7m3FZYB/35++XSZb1yTZ9kk6aIuBscDlaeHIuFg08IZkI4fJw6dTGbUAYZjf8I/+6miarQt
s2Rl44bjkOrWn2YpnWZcqMDXrBt0lD2xPCNkktBetlIch/vNlBWZg0BywxLsJ2IzgkeeH6I79jL0
h5p0N7WdsNuyVh/8/iNSFchNm6tLh79XgJoEr9l87Qnrj0nK/aJEC2ns7SfESOXNZGwnXOM/FcYi
Y70fQwzXK94Er3W16Kl++lF70atVTIrcCjSTX8OBgcArpZOl5hszy9MC210MIH6PGayrB6Rgy2sP
ZTFiYQ2R3Gx2i5Q63PYkHq68OkX4DugCwqzd11hfogVaVg3rDy8HabXq6rLoWLvGZ3FfyQGACqRw
m9/0NVrIZdnZ1dfjbIC+EJqdTVhnt5zUwyuGEEBvfZoG2q07DB4ZVdnDfBvvtTHNsqrZwTHEzn5x
F1zYgfu+l9J171YdRJjF3j0sx8IVcuKAum9tpznaj+y8gHnCH8/x5SOViS6SOMqk8EA26G4hJ6X7
4bxDDrmIm98dgXsKvSxGlu0vhCFMcTza+jZ0wEozZcwGD/jwgBOayT2ug9Ck3XM/tf2n7G7YpMu4
sEOhJbR2hljr/HPjLUtwZKW1THX2CgGXZmoDJ4TA6x1Wo1hHiaLYhzgpbXYF01Tbz2PGzt6GAUSy
N3o1+bgyNHDsckauS74yslCImOhV9VDOrvpwPwTXBO2CElz/nzmGRAP5+wXBG1bFvhFlXWmWII9+
fPxbKEMFXweqfxbwvxskegbPbkyrA3FHl9imbc4ghUJaUoCkep/7fNXosyEMS8dg0gL3aGstF3dM
8ndT1JN2tTAJsjCToPD7q8O5rTWK12PeziN43eKCh+G5o4MLxDJ9Ocnqo7hH1zFAmn+qvfjGZ6QY
bJpD7XqalLuL7SVJtrHFKjZYR3EmprHBqLpW242FnXXRCZ2pJsAXMdeiZCrJhJa/5qZ2LGNq2UkV
SrRX2qvNREhRyPD5pOO3GRYujHnMAT8U9z7vYYSyjk90siw+DaV83Mdax3ooboYkN5orP/SvKH8n
ca8qx4l59kzFX1UTwe0elkhORKUCS+qhdjRoiKUAALK1jUmnmLnySm/pYQ8NgKEe2cnZMW0BXfzS
/kPGUL04mUY8+Ixf1xx/H/KSgC4nwtg/i8mbRHCoFXVy1mNGl/cR6KCzX5mG1K75ESC+10BLCpjB
MrmVxs406O4jfECGvouLW1fJ4a9WsgpkGdIGmA5eBNawG/VlSfgNz8TclAf2+6X6E65Qeas6sVAT
lAZ5wZg0FyqbzL8Z9IVU4CcLhuwKCoWv/MEybZhyH4ne+0ogEcsikGugS2BL8gHAci9nsjvgRyuf
KHZjiVfQi956WikEEEWhMzXGddiD5qJ5xQRhh279oBvXiUWYcOzUmqLmc+KbLk3h5ZS+eJpsbUMa
03iTlGhyntPaPLt4GD8tz0TElcXydOjFNL0efkI1IFwV/ERIDN3PZRrsGd8Z/P/OIoJF4ezQszRx
iS40Up4OrsoRkpi2Xh9ZavVP8yBznq8oNNTzDd2wJJCOUyshzB9bQ1O91Tql+B7wd9jIF38WxfcZ
KWZyGnrUXKIRKpQlMWi1DBMDAi4Zx0khqzvhT9F7fD0x3UTjxdSQjC93TQtxOBm6oxOzUr/EeHDH
Ht0blnHfUyamKqbQI/GhBm7cCGgVr7k+S8i//sWKgUUYzngCF5ccJuVlzE+WX/OBq6duuF5Oa56+
2zPGMCPW+G0KYbHFO+hWBqL97R2tM3UQaoc6nlrw8PMygKagZKqoAN4/rdpoE6iXkNkdOChDyRSF
spJWr5avI6wkVvzWV8kL7ir1uS7ZhAHVj85gA6ts04LHkcdX7SewGD/VQo8K7iRK2mkXkWTZBJ5J
BqlRsOc9oGLB5ypieqOsWVg4yLPxU1/0ORkvS4VMyRNvx2ZsPaSv2jMgfcBwJlbxkiG4S4rpXo4Y
aCaOG/41o9J13C03bC+AYXys2ZDGvckc5HqSEcF1PakzpjyenMZiqGoHyPUC71z9hTBqgKbMqP70
2v/F8pht1ZuQD4LDVjTKBEKArfWSCn+OIb74ahpfj06VV5vnJzAo9z/LDhaxiLGQcigHHCAyt5DM
cpe50crng4Bo26V4JXL1tRVS0sQjH304nQZrXztinEo+1VaZJMrPnuRJ0eAv9bgQDnoZ8Mg4zz4b
qSBxKpKnRSRo1sOi3nm7E069RZeuPJxjSWJ7IdpAMtzXCnlWC2WThl+3AJAnrgFb6phsD+zgoM60
89V6622kNlp0kFPEvb39kFH6kOVjZn79+NWN5ddP7YRiSdswvA6J+jBkchQ8ElGK3E6hxrmKddjL
ty/u4Lr24tKjanaV7Ha82o1tVJVXKE2v95TTNc2BayBCCnRYsQ/1DAZXgBxzXeRq/B7hzacpq+FU
hCTvyCPWBKBnFqvzOQx8Kekbk89EdYotzpSxEJKQ9rX5CBHwgz/dNbUDGzh2z4KQedK+lPzV6qhf
l41fNleT3IGvhoObgfarkflkOmCJdvIJ9tcWBbsRKoGFQmdnyunCMmlmCCoYB6HjUwEgxzajFtbz
LHSZ147LrJjhqdCJBGkQHsJgBW8MBb/6Nl5yWTgS2CF9WaI7gBwPo7YYXT50XLV4Wu0uAxklrV88
yQ8uUea2vYVFPEprou8eAap2VNuCnMj9Ydt6T8WdX9LT71ceRUaMfNqF+ry1JC5OyfV3TwCAYF62
hkJ7s+kXiaPxRMrM4ZAi0jx/xftJvPriFK1YDqCKsNvT4MqmGm9Fsfg3x1GYR5kf9Za8TBPNvIjK
8ny5PJx/PxQgmjsbKx+tENq1zbyq/srZFSBVsfgpeoE4wfSftcAjtviTZvFHf+RC6l3Hofh5ciEH
fuijLQfimbOAzX3740eUk4L0gRXOEVRiRFrvdQ2Z9Dy+u+qhpMdMNW+FP9V1MFvV8tXQjpxRuCJr
DRabq+KlkgTM41Ti6RXzosoEW0ihzVYCkK37WBTjzPJ2rH5bIEJVuzTFCD7j6Db+Clo3IQBSLPQr
CPOZrsVmbxAhZxw0WAbWRWmu7HIJsqQh8v0bn6HCJ57DoqRHZxuKAVmqhg1uUL76MfVRE0W6W006
sa8r0Zt3oFMDDNnxUKAzvaYIpUpV/71/xb/gvUHGOby1JlcAkSOEUGTE6sqhM3qDFDbY0oo1D2Sr
2+/Y4/IEqoNawm6amN7vODdHLBl/7mkXceGu5GIoZE+hwLZv4oVUZmE+JHFCyWPELkxTHe5MJ9KH
iTA3BgpRv7b5zBPwbLdJ+0hI6F4s4D3LUCrxZg39erdYndm7bAjpOHhYL77U1vI3aklUa+tZUNmn
P33FGZnC9GdZVFE3K9TEOepNx4ikfyor2TSYetr1xuCo53tc11R6PuxlPsAwXroPjKw3c+7PznFT
d5uEIJkoSXHZlNtOVDONXqfCrKxrFvCQ17ppBpEnpCdyTZ0bFu/7CznSNneq035+/v9hpoKoGtfn
xJZ0wz2cZGO0CmRiwwp8WZ36aveCNm4jSIeTOA+mDFbNEFD98Jk291jQCU4cfNIujZSO/trp1tKI
DNf5vYlevOyaorAPwjwHGKDOQIH5A33bogbuBRl9/+yysOtj2JkBqjuDrrJ9DiVVx3eTwUdojfd+
ZdO1EHEHzlC6AbJYWpl1tkQVVlEycAjEbwrqZAbEIUnTzSjOKxYoEMd++RLFkn37S3vwI0c7YywM
gw8DHqAPj3Z/dFJK3K2pEYzHnAMmO2ra9sBNZyIhVjXftniSD6KdvniDcomgiXZCbUp5d0Kf+s28
qFmnDP+VZzW9lUlmtAlfiEnKIckM0eCbjeSR0AarqLhUoMCOJD5SbFT5Y4pPCeCoF/LaYVPp43T3
qmndQF2wI1ydehzOdKFl+QimuC/0ZyNCLOhaUyMLQRhmjrRWNu3DUhEeyrEiaJQNN/lEvzIvzGAa
PmWzZz7E3xSAtX5JSXK7wRx3TQia9uUc1GUx17dJY0XS6P3uYyI+V0ifmB4/Gj8KayIVdnJamB9p
Bw1toZxl9B2UvrrLEQdh++ROkyscSU/Me4r4G1i5Qvr7DXuE5o8/AbcRbXIiij8uNEIqU+pEsKbn
u8NvhYfeH4vtvWYQaIiHHS8nCa7/+m8xcIRhX00bUNJxpa+bnCxRRlRhP8c2NT86FXOddhdRR+m4
R+HHZdWBoaRX8egIhXtt8u161iYVUSGp3OjX74XOABj8z6tgVsxsdYOXTpomsY4Ga9SK1Ct+mPD0
S0EwbQJNrVx38PXNcH/Cp1kpwbz0foFHoyor1QmhlUwiw5TIQZf9CV9ugYCyVxpHAYx5YEia8A/k
/Z0p+uXsY9dO5q3ucYEst65VxlkUuhX5sYdUgLYbEeaP9M/SR2d75MW/TwRlEBXmDNZl9dUU8b+p
vcc4VDDAOqM/d6VgbEMCExVfvfjPkO6CMekHjRoYGMR3BhZcVbQEeQk1LL4SOfxMM+SnZGy2z2GA
pzqTIaFss5K/MKUWKN+2AqtYiNU8Ts493udt7sLQxZGTrFqsX9OOh+wsQJaYVE6d1ahZhbOb0vjA
49Ix94ZyM8E7FgaRCsjkJLVLpL3HcZA324YF6eV8T9ebeV9f/MF9TR1LCqPtMzzy/3MeE3xInRxL
zwf8aKjjO2py8g+KxQ+cBzXf5Og2Tt5NQeYND7gNk8sR+sJW14IfcNel2IF1Iinvn8k8XwKDwoUQ
dzEusU7P+c0y+2UYQg57a3o+xDdB57zaDInesPYGp/ShcXfdKLkSrGivNKKaqbRm2FTx1MpGP5kq
lTy69r6C9PPkz71C/WuRJYpixs6j0T3aS6KUuH0mMkOtwSgvD7YTMNnRDG8q++oHKgTMnus07ly6
OgMgLZH//iAVVfHVn6IA8WDjuR4GDrNhXaFbwJxa4Ldysr8ujLzJACOeT2Ck6VeyulZyaRRCao3F
3NhAHt6rgPZnXY/g9o9H3X8P/nlF+7XIATh1IrOK9yKNQBeHLUYBfhccw/okl7r6Smuw2wllEJH2
Qbp6MKEbQ4eI8aCSJMZLu8cPgpEQaVx8kWpUyFxvDUgsFPfPJBLdMw2bY9/QTOeWlnfRnT2u1SDL
hGM4pyhRZnVG+pUDeMk2XKDkbPHglhmgyrL4EXUQq2ncHj21ZrSO871UUph9vCG0i/I2XZOkOi2h
I8RkrzeqNCGIHXu0WTnu/makxpvrFQkJ3M+kN72FKRUwCP1UdcpIeBeOWaE9hg5/7Epa0c+zxPH/
mzmPPwmlsZWnk/NaE6wQc5IpE2A52aVqiYnEpNom/Rhc4m1cd78At8Z39WkNYLBC9pR1FTKtHFXb
xHW2OnzlSdz1RSKBFyJxkh1PbYoKgXjhzUuaPkc46fguvwsB9QaIQs92ICE5KXekEFXwCouuEEkM
6QGIIsu6+ANc0dXJyDSITYndpnS44OVyKC0I02geukP4VIQrh/WcEYN1GguVcKRqM+kHjbcrvp0c
au5lPpDY+7XzLBABeWFVwpCLdFP5y4A3H1FlqRSmcZoy9qMc9odL+VQx0+gdbHY0VZvufMeZpklg
OmraodCRpbtkZNocixLGE9muZEMdbazqbTaK4zLBwYOLGRfXnjLfHShNY1LFJ881Wd6hsCm06Qm0
KLalwX1SmJucIQHQCgKOUszG2kIzoTkwz2Xld7TjqMY605kDA32cDnobtuQjJNv4nLiTkUHKoEaN
7UrsSX7YDi/pU8ytAH+fjbNLpS2N7r7gMYBpdHY1vtYL7M6NayHgKDHXPRRO8drn3skwdJwHeaEW
veDJHfLnJgw5VIXl2HyojBn9SARSrVdlhU6XLgocZ4viRpfSXV9Cvg8axh5klaG406dz4T2XoRga
j/VxcQ5Lat7YFdVbqcZFGhneJYPPv2e+s4zyqN5twM82PXD6YaUY+dlNOnWqG6XqgdBZD7xhun3C
dNRqcaT+tQXb8zXkBxa/3dX+PSRrUhdHH9DlaPPVUxIdX5z9t7md1B9LA1CfThRsgK5Na3cxDfe2
K6vIUTmdw80A/xQk48yiOSDVcFIN7jqTelFYTXz8dPrwDlzxtbYUwJpSx4+QTtPZtMIU1Y8/rrzh
lx0c7sjbL8PeFzH91YWOUqfwJJA3n9Awi34fO1M7r/zjkt8dwKDFZjv0e/aAUWNqvenhm7h6Tj6C
TXDL90S63ezwJp7E+IN68/sjT5G8QWJ1nlM1Ka2asHYdwBpLVuRjHkNShw71UZFm55Bs2xTw938X
OJ6Htcd1qM/Ll5TF4O8F7Xcm2+NQxJQWtI/SwiS4yCnUVEIF9yvJo6a3v2HW4dZg/iQ9Y4jYo9Gs
md2c9l82lrIj7f5yLeqtcpfr7QM1vbFs/LeTySHgL++rbIfcE6+IdGhNkzTjmz5sXDPnhfLIr00T
kSb7a2ImnYfLHrk9dSL5b7KeNQYQdJghhCfVHfqf8KO0UWIxOJNvPFaEnq0TBxhDH7tViORiy45Y
61u6QqY1pyZivieJFEzv3QqQCOVKu6lykatQmsK+UtVJ1f7RYzuWYZi25DMGFoK139AdpkoV7ihc
psi+gi7CrJ+l7emXGYB33hOYuh0u/b6yuHFWkDrGZC9rThJmL7DKjE1fzKQLkU/AJQzN+cDdFf7C
XY++EeQX0Mqk4ekRJYs4AM2QfAxxj6JpJyfDf4Pjojor/bYU+jNpjofLTgkFN8e3Z4jgCmdpaSjv
24KzzSJ2ClcSCBxP6TGQtX7kxEFAhc55nB0aT6+mSfNJanIlq2nWa1oz5mO2ZWd8kTlkCVEw/ahc
B5c9xUAbWsDGgk9X+7XXl88uvRqNDZnMAMrA3aQFg8ex8a1Mg2Wx0LfS2/YKJxVJGqY6A1WpOlxV
VeMy5qPgUTRr9SuGZzrIt7VWG1R/f1edUGpMj4PD91PgiHvtZZcIKtr1YACRuyjUEgVhLiRl1HdG
vWYUiCX5Q7OPQqeyg+Lth5A7/Y6ZEL1kKtuAXMkKH54CyKQdLaJengWLYQ6pPzsO0Deen5hC1aVp
l3ZIIOzxDo4g3euWMGEyKtF7NT68MpyXk81Vm6d10RnOCJh4KtseJ5bJ76Q6N1biTVquuEpA/7fB
IB+5uAJUPAsF52dIle6xWHRt764Rk0iu/1/J6HegbveirtxW52C6QGPloZEnEPVxm40uFaX3Fn80
bL/UfLAcev3mXOujkV/TZukeq7oR2pv/qDwtCoBuMXZHySi8F7Eivt3n1urNdOnyjJ3DIzhvL1RE
FG7s82zd5c/vJJQwmQaLS18fqiGMIO+4W+ObE8ElmLWR2IwMwSDg5sjv10HPiIYy7EyP8HxEUEqu
9/KSOIUcyxv9a1R/VhDJoh2N1fhpuyGwix8FOurhIjmAfUYVOF60HZ+0m/RG1jPXxsoX56faaldl
Abebnab2BkniPF7OSW2dU7Guxm4QMkwEccGef20H66wvPIPynVsPybnTgirGiYE1ftrkJmuNPBhl
m5mMGwqdXrD8B3IagqanQO0KlLhuhV/J+WZxihmlcfhQaNF3iFK2w2zM8f31SpMfBku6lEWhBkLN
WDfCrCTKSXavGIO8DL0FVy8q07a2z9iLxT1LWeGik0AT7pMnKAbYAfgKojdWCsGx8IootPaUne9x
9t5n3pItECR5y03MrclGhkJnfftkhH/Kq3L/jaJ2pqXsvtQPEvIeEOqanY0Hku7uCGAHAAedsguH
99JryOj4JfA6H4E9Iiod7ScaQvtFXwcC0tHS1WahkcXdYDCUNEaOYLMSlNX8FfKInCceFur6Aq5E
LVMsikglxqT2NJNV+3f1jqqzNwlk3ygNzmyKDz0H6bUbgBgPJOQcXO1CpiNUyGzQCoPgn6Vi8f+b
A4wHBH5z2ZRuoaJVEIF24Rhij9HxXdnRy0+PF5U6NA2MoYH7ivTQjcKz1MGXJHf6Y+DrarHUSk8a
JEVWPjH1gEO6w1y0A9C0II2SQSxMwcheVOScIY06Qezmr+0M1Jwx2lR5J8nT/Wnv7XV2Owa1AOCQ
v5mCZXUpiTf87rXnC/fEYdz+DLkxQaTb+66eVkuvs4IIdRWspyxylCo7OGPGiEdpazk9o8W6/0r7
Mrkh2wSk1ML9zW8HTEgbDn5cvb4I1EHuT/g5uVayluZ9XT8sxOgCl2BEUeIeiDnqAplfFXmC/Bjl
5hnOUHdsrCjah8VmMM6oe8Z9Nrv/sjs37IJ4Ohrv93BlCJCuR3VDIyr5WuNysWJKYtUPZeRwD5ND
7vmno0AyIEwfJOPTsuB2Gi3fN5gTpSN1EA3thuP+Gg3O5Ktll3b2DPtpqAzjv4kPyM4rrwnnRQeu
GWwaotKXSnEKcQLQfYwQvZS9w0ABiMIR0HVqPgDGGvzf+q5WWZACurnxzl2fLZ8QFPuSZEvHELyM
jQYFKatw3z2CgfOTHahMuHfYqgQAi1+Nk76uPYoMzaBhFogPvqF5gOrtihH0nqhmGYvf0msTa4Yy
GSX2ayOM9j79zqgxOk/9ph6XF/ZEO11GebgUZlQwDpwe3yKS1oeJg5b7nWXW7uv4I+Z2W0RD29+x
7p68tuYeVDHXE8nncVwmCV/JKQvqDUKTIn9tQiADz69wm+cStU4XXw+dFa/54YZyhDX2lpb8Sxvr
Svwa3G3WEuv2EW2dcyU78ROLIdoq7lIU/FJvKIBFfbIsXG4PRuoncQIuywCjbUjHGYbymVIXuBXv
eiJANYAXLv/tU7QsTh4GdX/AERLaz/5LXGLvoz92ABE9wXtCPV+wolWi4vBynQsIbTwrl0JmQzlX
UVjFy3JejmFt6NJ+TUNCBQN5/sm5Vlww53Cdlj0pa6TQy0BaiUneh3kaFFPq/0hIfOtm4rfVi7VT
09dkne0+Vu2vO2QtyAxQJsWX2ibrxfoea+Dpj1HhEiSO2Irl0Hq6A9xtXf5tUsnZiFKh2bnrBAtC
jIjafKXMqzlsHtG0j519fxQuQsBUrGB2KvSBd9QQlOIWkO3XQhwH51v4zeGvELbZEHyKdl//P8Mn
e9E89smEkN5SwvlaqHr1vXw6PU+ERTWBe2r+k+YFMJUA/4mOPStdEoynatWrU0Y7G+h+dq0qf/yV
25QIBEFdi5UjdBkusqIyP+u6MulOeTvt3egjElDCFsiYG4DV5MYBge5o7M6/0V6Of1bP2FT+7J8L
z/3fVSyCuHvmHfc3xeQlylBbJJLQCnxwgJOuvNFgY9t/Yr5SmTrVR2NZZ1rgCskcqdFpJ3u+E9VD
Nm1uypGiOiZxd0Ncp7YclqI1V4ApyO9ubRN3OO5ZJSwvCZtBITXp+hjYX3t/6fgEjq8ak2cmQiMF
usXqdR5Vevci9k6w9Ovm7sL6dxtdEIYRmWOEATRhx1qRr8aHGEYZUSsfBlCv/9bLIhHxjvlSFUM4
uFGPkTqGkpPD92U9NBpvVY6u1sUZr5tigoYWfi1aE8mqZnjrojCtI9BjV9k8aaPnZ52J0HGbtj4+
I4cqGX6KCkN7RCafkJpR3lAXHigXQuDhWZC9w3Tfqnc6erj0kly+tqeeQxqC8wGTlNKFGzDc4P1T
ngy91eZerElXdos2L6Z66StOHhDBnJHNApjJ5mDIE50QTu/0mK2Yy23P5sd59v0mBLnYatCgRNRZ
HPojADxCTvnXPB4sD6xt11/ZuLP3u+dIXzFMZ0lD97krGDo18YdSYnIXi5sGGXIaTiKzOKYeyMOf
FMIk3bVkbSbP//evlJ2YxCGdZdfEMI21kqWRSxfVEtpHSp5SJpQTgbmJV7JHr1NbsSwYvo53cNvs
HgntFBDJahyjNJFp2tZFKELTUkLE+AH2YmfsCwQrc73/LisrTryHzUJHqSBDxEOn0ap4iGlZC2Ap
pQIcsHQilFdAvPdz56N462A1WG2f8Q6q1C3JvlVJQh0NAsb06GSyu4DcVA0a2a5+J91CA45lJmaJ
vhkDY9s3mRWExOQqOlzpg/iBlCaa4rRwxA0DWf/KSI9mwH80rjoH9oKQuwSxSCb6qdAHaE8HRfPi
Dxb14BYor30Keni0A0ee11reUl6dLUeC2x2ElSyuz93LDjDjsREZEFBiIIQT/LjplFx1YgEyYqrV
HtERLuqbJalk4o+ag2eyfdNfK2iAy/L2bgHhyndiIzRCULoCsJHZ068kqPe2m08mV2wQiriTA9Bs
4Cn52Pet0r5rVzxWLzfMkLOhsAOxU78Y/M9BYsEZr865eFcu9WWBDTVLlLc4avouRlZuwbMPe9yM
xZ90aoWjk7PLthR1NijM6k1Lp3VE+RLI6JfsqXzxE0RACE8156YyrL6R8BiVJ1COrmqr34vxOm89
BVnz10eBTP3+3ZGQ1s0LnfItwxZWD8gHupDfdp+GdRTgGOtEaZurxScKjSnrI9zQ3mqYCYrZFjv6
gmjgYWGJUN1Cxq24s7THB/LwVZio40JeJHcAuIURVi+YeFds38NQGhxyUUHeh4vwP/xcdsqt5gmb
IAOhQVQ9Z/c9X5HHGL4LEX/nxig0TZU2OhV6zXEjp1uty0s2gK792UIYzlpPbMXELsoi+WEf9vjN
m41sgKQR69m+S+Efi0G+8AF3CjiC9gYh3UTzAZyxqR5A9PzBVj4JFf8jhsmPk6v88mZBOIMc0g9C
8xQ2EtV9fcCVRyFkFHIkoAENwywIV8b/t8Laof+t9DNTlBHlE5Igvr2uxZgXoDmNQM2GwSnFqEMd
qvvzW3m74fQQ1cGW6Git0eJMixFcwGOvvdrQgjj5P/bHJ5uMJv9A2EoUHm6EitbUJX+Jm+Ig50g/
Pb6jWurYT12sNJFXsF2un9KdXG+BfNWeruMqcWg8IOsGacLGUPCXwpVIvI2suxoorAWZd78RAijl
vtXk7N2V1HKsmrSFlYPU/bxzVrOYFfKfGK6an03OuWENbbJ2GMI4yycIqYyNX5fMZQDbyGWLNM2J
bZBhuDMl1QBL+HPiQll9fqOQ0yRy097fspoKS+f4P/44/Te1iFikjEplObyYVIvCKT6C3UpRoyEe
Nu7ZyjZnOKEXg/uNxyB8/5gvH5roYRHZNjp4oFPLug+6pYNyLyXwkkNT1JRps6mdHLBEPq5J8ppT
NtytmXpUptxxuXLmrNsUymISZ0s2qef9+4Zh2V3aJXYo0z3oWLx3S41GMeNvJgwo+MVSEpuMih7L
btX2IJmicIoOuktPFyVF+NhZEGtXE3kF5k0zysCMyMTp+rx91GmHGIYSlbXKoYaTTMQIkX7lPQ04
8zd9WECEDAi6InPKhbwhG8tTvLSRrOGcTnve5hZmicdJz32J0GTQQLeUyypSyS8cL2FQoewiqpco
l4p6BzJiryOqH2/Gb50ihbP9sJfVk75L1ENw2/lEA/fK5ID5b3iXR6xwSFozUjriNAP+Mm70ITTE
KqokSHJ0GDiPpNmO3JVifpHGw91zIZHkhB3wyWLVBociym3yWQ79Fg9U1lwgfoafvRdSilpf6OPO
kgZKIEYrJ2U2BCl+wepgmNk6M+tln3rJ1Lo6g7Lw2c9QYxmx8gMVGLZ+EYVuGjv2HXuWL6/HpAOR
EDhN5oJU/48KahdiqQ+rEn3O8EK1qlwQtLk6gXMAQS/4yElZN5sJ3QnQN38GkeHrbNSs0GV9XFyK
Wl4wqNuf9gvHajZy3hUSAm+Mq7uKRvYbVK6AE7YzL7ucvolL/YYfWnM/fMcRsIgnMObRd5KQVv98
am9w0XVfPThKTi09RTrzOaY8hh9Z8XitkRt2YSFHDrg+FnQRsjjlN6bbnGPWcZiSkH1zB5ytWAc6
s2JEpWnme2cM6E1/ae06uKbA2uf3bBipm6Ij0tqcQNy8WTETb085jvzfENJ/in9bewdmHGRCI92N
nABdj+G/bMIpkXvGUJNoO+a7yrUomk8Dn+vQqJ8geBH/rjnV89JJDcr34nJMeBoR/oc1nvq4TCVJ
HoLb1FW1qKmVsvaoZwZhgPDcjtVgDNDdTok/Q24wV+ADdcYXEa+ClkviezjtBoKHYOvJFH4w5mGP
Hqik7SV/HOl/HhSHIFf7h6jn2Yh213pn+Aojn+/yEJhVzLECBtE4zQiZizkohZEGoofhlo7Wh4lt
zBnPkBOVZCj4hZpqg6ABYj0tpWlXQ7gd71AWY3SEJE5BEugpCH70vvSYiyXIUTb7l5+7fexz1omd
Y8PwEzNM0k7gywK8Ayjj5HTvpe+z76YtwQcxvv73d0WfyuY5zh2uNOyn9HuCmR3Y9fX0DgzYajU1
u/kODCLxnd0jr6Ixu6WfOWlK/4QRSlm8JKOFif953inTJQe4Y7ebbAZFXpCrZ/5ULiO3TSa8zePh
4ZNasj2cltrMH5ny0IGyDQE0aL+Sy1AqjZt9PcTOoq+XZ4qlyfAU7yfZ/o6KLxzpXm8m5HPUhGvw
qk0x3b+cDN8knyg0dl+eZxQA2N3abQtI6wLQkyHo/yQ+KsZjPrKh2WcZSBvRC1wnEUUbsZlfTZ0W
tbg1RcAYEvXOI1hsPNGezpYpDb6Wt5r258xfUpmauvqhZ87KqvlyWfw33tM3mnJW0sfi/XHPlehu
QhGoLZV2hikp6/W5MWSYsmVSoaIe9cLYygVKjBL6h9IHjMzH4QSwBx++6igf2gXCulbniyNIWO2N
H/YO3PlA1SHFovGGVTqSrGQDT8a44pM+nqgOfobCU0yVTQwJs9ywRneYU9VCxkgaO9wjt15nQfLK
do0lh6sOfVmL2af+60kUzckTbeOeMSpy/rMVzJh6r8eq5R3zDN/UPWpoeO7HTPSO+52lsfaY8gPx
oYELfRX73CpBAY+INSblNgZWMYbmHKXFjByV+DBShWXxkA6Wjbb0dOc4HKcNKgWFBsp9HVeXxxIV
fIVbk1kKJN7zqjis1381Y+1/ZD7S13xCqsAUeMWnDnuFUWQvoMMT8i3EXGtrUzantpI87D+L2LKN
kFnEaUt+JfaJ1Tc3t94Dk+86gc4KqKruZ0GzJ53DXHgqX/dPU5EPtdPX4012l8IZzDI+pQVp6W9X
u2Ldlc7TW5CIqYcuKKyr63w2AVTcrkdWEl5XdHzlQBWNSp6kTda0mnJj8SMruI+KqGnuMy8GlnJm
oFWDRCLEb+GgKDzk7m3Em2WW9C/nsD25Om6AsRDeFGbOOJXOaRxQZZnoL+A+qr1rkn930tIzb/G4
r0465rlhtgam2u1l5oYk+ENQ+dC9yfC46YfqAd10OOOwswYw6m6NbUfFKxJGNiDdmTr2/64eQxkT
AWad04G0zlzXmXLj2/nlyN/DBLiBnoBO5y1GqbMy32h3zcKfRt3h43JXeKYcCGEWnbIUGnCePKVG
z2HqTDOCFM7NPXTPOByqdYVVHXTdN5OODfTGTAUbtS0JJrN2xgd+0ZbJpLfN1lO/fSGLq3hP0R5B
CzNdWm2wWNzpTBPU/m7d4uRkXSvtXUVjPJRcOg6oUcK4o1RihHbyoA5LoBGkJHsVKMi4OL5PUWN9
7Z/QrMJTHjuYeHUzCm7d9yjkT247kVc9zy8zAP0KZyBo5S0lQIgNGvvpm+GyokLl6GkDkR/dT9fK
vDO1zdRPUwxPjR8cH7GdMQVJkkh73soQ7yHr9EBjRg41Ri8dHzJLhrUzAhubSzTW8jOQQO4j6HMp
/y7lnmBB7MKt6xhlJ1LkS055n2YlqLotXlAT1Ly4aU2FWjUb5bOJtrUYHpqavIJXPGNriKXqKFWO
p3OmIEMzjfANmHNWgsXABAbHSyK6txnRDboikgOg75FBCw6rWxuAZ/5ME4k5h1DlxW1eIMsj8cLD
QfZpticHCjSZof0gwC3sfDACOPVjuQjSbfPov0RPFlmzRnGhjXGMYzVmdAwO7djAECRu3M30GyrX
76mQrDQmxRpJg9kG0axx5IzHh+bonWp27KsTeCOS9D0EyZZ1jNi1ZrHYqi+vbSJYRQxhsJqpnAHj
H++HQxLsOPbrHMOtbNvxwlmkUelCK1Nu32sHSdIOp2Y6jHD3+fIPX4X3kFvpwpN1KqBkYY1FsLgv
LKv397xzXJRIkz9p1rknAKvrODx3kFLioD873SFyEFakyiz/X4AZKba8Q2j3kNNYQz+tJJ9nkP7X
sbTUzdpRL4VopgKuVMibAsPUBuh4urU6VIRhGIc+5R2mndLcWJuduEkacosuyoaro32oCXDYcJaB
V1d2iz0b5TNYkVvPbPdDfkv3UhMnCqDcbPFfNk4OCbTAftKfYbtgCndP2UV/IBXgSXFvRgTMy8m/
l7Xs7G/aZzYdeIxY3IWTOV7mq4eh9hjPor/yrJvs9zZ8qpQA2fIazL5UUiUiT414amiwCpakHMZ0
GQkkahAQZRINuhRAbIfbg3bS25MTnEon4PXE5M52nqGQcBQhGveHoIfNw+UgSyHBPLy6qlSFJbUj
RWRBzWqgUl/3Wc0fy9VKQOYRN3myX484tah2qKyVfz5XH3VC2IFor6t5WQkhz+MTCADYQdIu0mlB
d3ybyJyNqK/tcRhH/2w7qQPB58Z5YBevhQxaf+ug68ew/7oraOMs7OBYEvhoZ/Q5K3ufmQecBNLL
PWadCx9BcXOEKNyVLvVbd/f/+bjCiOzoUf3nGjk656ahM1xcISYtzsLlrZzvcs1yyTQ9DCr8CCE9
CR9do7reQNvcVVyonfESk/BcCweHW01REOYshetHkEWuviYb6Ic1uGpXMJDXWzHRBk0afykhroNO
YJWveyrQOhew1edTX4XHMInsRWCjGGjtMIzS23Y91/WDdvwD8haGPubg8fVVCnEs+qr5Bb6i8Pc2
FOcjxxpSpGKvtXlrLoHvwS6j3qpo78mdmkpBOc3Di/xj7MNH9uje1nIuwgPn2yAVLDYE0scCclW7
OydlsA3hjaF9XffjhZ/QRlLDuu1G1Yl+Zch0P7PT7WoCf2GrozxOJmQUkrEJ7YQuw48E/waNSuqi
QGHeufv4xZdpm+LuhoHu01Xekiq7PkI/MGN2oa/WYwJVs2+Wgp5aOKnHEKOc/QDao9Z3LHEWuiIt
Ei7j8OcrBJ7NiWil9nScp+5FBz5CPLDhtYlbjI6IkazqagIDkLU6b9ve1FtpIpaS6FOOKVOecN7n
3xGXTYZGmV+vOq5GwKs32R0EvEcsmFLPj9GdFfpMQuvx20CS1OwLic2VthU6tRx9XEhEQbnba8RC
+MVH64IligoedmIe1N6ZY5HX9v7nLCHpws633wkb3yDm4UdMoUGb3VdLvJh3Nyd9gUSUH/S9YpMf
QTJmUgojmqWJcQbCRAq247ijFp0bD0+6uYKtAQW8Pw15Qe6rdn8u4we+srJepH6ghd4YYoBegPz5
rOGdD25k8pihiSf5L8zYzLbmDi1H2wZnrBSdzOp1ApAXoXOlGMRzZxim0jbnWPLATfhAmEG2xoyC
zJIosMoZEwSLzJBcNEJuGxTJtKRBfvFQFwSM/YUzLIdiNu4AOY6luZOA4haUK4isE080T7Wvrh0m
Hj0zNNUUM9W/mUVi3wniUso7DgjD8Tt5+I78di/lIOIEPZMuG99vyN7e0/4HMd4OuUjbuXDAKqTY
fIn8fLvPy/q/4STaNrQpmnUmRbbM0k0b9vjEPfUMUO+aWlWWubR2ypLQrncsD1OmTEXi1LLZlC/y
UQnB9c31nPuWXwhU29rKGDjzZRcsNinFR1QIH5AqVLKDos9TZQv3Mpe3ooWntIJYLCEEtJ8kIvbj
9PGG3oFGBzRqPAT4AjJSjL9lqPQzMqnjDOR9scZpb+ERQ/GWm8TQShkfS4Z68GHDj+1oqJvvRrIO
1ySzO35NrTru7wXdx2EArFHIZ6bPrvVMCHT8qq81hqYnhSPkRJ04FZUi38PwfZUbOtAfAYXGH42B
yOOU5Qr1iHGYcZc8MU71nu4isgf8nMVimKcefW1uvTy0k827oHqXK08NlcQIqVPfwjpMmuuQ2p4p
tClVu3/2r0OPyWQErK/UvHkK/7QfjVH5hWunnRV6GED4IZ+lGItcdkbnpFD/dc4lMA0jrYmNwSei
vp4W3ReawC2apfOwrmQtG7eO03KIPXkOwD1rdrG5iiJUK3w2sZCeZ3RWlypspKn5MME7GhOqj6RK
WLzBzsLnhZaN4z8ZNzu8PCSrQEKPQ8JIUoAkOkWV9NYSI51C7Xxi9kJ/LJDO7jc/Oql0zjY+z/7c
TEzzc0zgM7LZwM7o5YR8hrNmYefji4I1fckqaWz2Od/U7jodoO+M/7nZ2cVlLTNOt9Ck+jnD+bIg
MmbgzdjT1KVbmTxZmVHdRNkNHbDEcREmzNqH7SS2oI5pCNqbGhVPYEfzNoJ1svjUIxQctIlEoEaC
O9a86DoD5JwYmRvQIfEAPTgpB0+ftXM7caWDHOzrSVtg4uByeTLx4aGgh42SHVIQq/B9Y0DHBgqy
yLPMOcCrLgDJ6RczUOCkzQCoQRRqoelR/a59yrOsGtPsmcD/vpytRcyRvwqWwtGKxqK5hqqn1FfW
oyXKKg9RdzQ2XzrIRT+3/TImHU8ITJ8Adt97gz33IzTyVmbQ1js2fS6KkymvGC/G97hTYBPCacSJ
WSmIqYr1iOvb7WCcKOEJB8zm82vvxLSyicdD7ZmhO3WhtjSPLiUsjfn39P2UZSuDaFy77yZQ9srD
MWwcV5cDFpmosUgBLYuXzGG7iorIc6r9NBXz8L6902LQDUGJXvLZPXzv4htjZOKPp22af7DxizA4
5ULY4nN3nlEtFUDVoO9PAjcE8Wybq4OJEi5CX03mFLhGCTb+xsx+zwsY6vSQCdgoZtuKQ5sj4IeB
ThYGLavzv3iGh7c2xTPv5JY6CjoOAOtiL0+TGQOaUrpdA/ksBOJ+oabJe8srBCGOeZQ69X4CHR4J
4rJ7lQBtgFewc9IF+uldaQTdtoCBtwgfIrWPkjBUU1caIQ+zCv3U7u4SrXgcVv8au/00u+vsrRlA
GGoe0jYeUvfqbl11Df5iVI/WNhb/v0p9fIOdxW40aNqP/+UFgGuA9EUCCd3E5Z3tvVHSsVILnXr2
9duSAoI/vaTnsDB52RmCwKFkwUsja+2/Kb+gvr214Kz2mIRN5ZCsPAWSHtOc/CMd9E2O465WrXZ4
P4TyLIOkqqYve34SXUAhaACj6MQsYcbVrA3J4017Bs094fGP4CRU5+m3is93yoDDTOOxoonxvCj3
qrBwD+izviwLInc492KagnTYshqBY+LnvpDff2uyXTF+k5O3Kcuu0KExoQNZlqUDrUP+JQ7MWNan
vzuDGS6aXztKQK27SLwNY11aeaHV51rrPdrXa+9u/gEHijkRV8MpDkhqPNwL6jLOsSdtWESpOI5D
qdnwCXsJbbw/HPZ6fZSONwAmqveVH/liJFBznWu/q11eKrjKa10dy7WoEkOGnu9/AngkkljVxTSt
kqFH4wSMf2oNacMRkzdVUv1YHtTxv8Bmw+PT5SzpfBOm7xvfgifooPMcBvsYNJp31oAQxE6iKqHg
TTtOYWC3M7d9UGVOZQfUosp+rZREDLpOVcCrVjk7nH6cRNbF/5SXvRH+Tuk7XM5DK98kEilsz1CN
STHQWHZwGbJfQgVZ+m0i8feq81JXiVzNNABK7lz5/P5KFOR8ffLZM5XW5Bj2XRRbzfhuKoNLDIuH
PoA21lBoRuAdupUbzB8tCARvFboB+gfKdZ8GzxRte/W6HYhrHvhLBrPMR0FeC550W+0OF4YCkkur
8pZ1Um3d0btep+xUucUVxujCAI63aSjol/45V6AhF1RHqBYmbd53AZTfKiNe0pbLcbcvveAkn2Om
hP3qQ9FXndvG1y7wVqncF3L0KvdjkfjrnSGHfYq7SSsvta11tylm5moQrK49HOR0jOi5qe9iHdRR
pzSgrPJG4KlDEvApgRRWaoXZX9h30GM98O4DXZbXtwy4EGFi+orNJEMHpwj24g7N863bzkUfcY5w
pjt0ARr1bJi7lOJ3xr4bpDJe8t4AWkY0HLYjASHV9AYHe+9OPYatr5wUtNlh2Hp4JfFx1OeMCoDf
GALenEZr6pyvCPhVQykvw46zBagjQt37FTY229ulgZNfD5NbshNTJeRSoDEKkvr0EAJgCFWFaU5I
z2/98CbQdc0okWi8di4Mo0d95+eIR+QuzI2zkU8XG/zrK8P9nJ/0Nu8zWUh0KcID6VeVjreismF9
YoQGsTALAqCEiZ21tWy8ZyxxF/affcSkFS3GAFhbKFQCyh7Na0GX6nAFB0OH4lc5wQMVNMymnqws
aQC5mn6iX1y5XaHQOzGpnU+DCYNWx11YI8lN+kQYdpwYM/kh9ggNranioHagz+pzQsX2sx5PJFi0
WA2z596kcjnlUAQH9kNXptPWgW87mC3peLGDMvBqu4cuwZnJmhRMpFyAkgYWgwkXTO3vuUGujEzH
wkwt3aJ6D9JEhcJMKP+BEKTNu6ILqbCkEqJ8Q02QyZOsPyKNbXgNc+5bmYeFAkn/FeQJL/yQdXS7
Tn5fcYuK2+fWVyHfFXdRKbNefIitx+XvzkvhnjU22YiQd+aD0hqO1K66pMhI+kz3PQehXjLv46Iq
uCmLeGOXXu7IYmWXJqH4y4kfopspDzZNbvEwiPyV3vZWjbZIthFwl+uUdCUqWI2+bLpcqNzxx+Fu
o82nnZiBo7Z+PzHO7ozVLZ8p5qJrQE2o++mjlglcFY9OBCja8qxScsWWVWOonqELerdUTx4SGPLb
Dsm4RTyw6Z9+lPFVuMGEqJRuai70lk8ghoK82+KGQhPNWCgOnW+NX+kWDrTwf6envdE+axSPOptE
BL8pA9scm5l8AnFRoYZoYoWxDFFk8+zHpqGXwcCxF33Pjkc9grYbcJLdR58v3AkXueOEOPBPv8b7
feJe/Zi1JIsjdxiSm7Z+w7Xmqpn8vGukxEM3sUYP4WXlhj83ODNp2O0/5ugTpKugn2DCGcyzpa9R
IRQ8G60dpuaM6og/g1+I0d23G05cbbhEHwW3I1kPqGTCsq0IX8akQw05DlWTee5rNpyizWQmoZg2
zIiJcJbEKFBLlpFmKSqtnOcNh9YYF/ebV07EXKpO54hOiExxPI8A2yEZMLsd6mwEr7qsEGCutW98
E/ZtzQzZv2n3Gg3hB5XrxfTGUfMq8kbJmIuHzr4g1ENU6LZoAt7o22OPR97mTgTEUKWj0+uqsiDy
ysFkIC4PDzLlvWH63M0Ima4xsJFix8loQGZdjfrw2Ke4YHQpULMO/5nt2oRpFFuvvm29GeAFeHs4
5JhuH4tInYG6g440yI4kGzn5Z7W++aAIg3yol1ICdDcvV+fkbql76Ufnbpo0PlJxL3rkUGpz/qc9
eGZzR9BG+YDVixijksbvxur/cjSoppc0PXe3X1Ux03Ca8P6tQEkShlRkB2aiXIB/oZDJfEaLzAXB
U4jN952yOxdcoVhHs1D0RSBsq9I/UFZysS3CquazMTU1nP1VlABUcOkrlv0I0uNbrCP1s/ztaXz4
C4JIo2c8Lbr6Qw0jeqzEaSGBAVcMbV0CsyRp29+IJKMZwm9sU/h065F+lL9oLcV+EuUC0ujbiQMF
VzQ+UCgWQfn5M8LofirHk5dXxtc+zKxGr44zTE+LMnr0fEsc4ucYDzpMc8Ue18lE9QUvgz+qUhH6
QIHlyxeUE9gVCpyjXAEWjWIB5dsJo86uYnA2G+4GzN5hWy3XhOkxFgjT8DiiIHmyG8Ps5gQTnFRT
nXV+RX5bDEZ8s6t71e4BdToUOKujDLwcug/CeVHwXBAqX7K11JriakY5oOBLkx5H45sTkKbbHTQ4
urBnbzYqmbVYBonzXdrE5OvAxwhneBVhgVmmxR8M8ZC48VXcYEsdmFckuBEcKHCiz7m29ZcjmLUm
fhjHGRmWNtptVDSD1wK31VyqY9mMc7O/KB19CyhjhU7U6ZlitSI+l+/PCVnV0eZ65tX9pae1SgGn
4C7sGfRD/3Su6IZarIQ9QfkdYZlyF1j0UIpv5YSBWk3X5XYSSEwh3s6aIXwVJuRAnu4m5gVHDEEW
STfmZQkhc/nafCsqWPBqhdGGCBqiN6w4F7Euku4MRnAq8J94rApkpnNKItDVpczKMM7cn3n1MLWV
MVVGK/d7WUPgY/pvGHzb3NBkKDkCDq1LZcnGGxxAFHVWAYp//sb2m9CG1xiAwdQeaDPYKC5/jRW+
ESXu2SQX5ERsmebCvl17/o/YDGPf7By0e613LDu4DoE3OCd+vILu1b6s5xKU/yFmMsa3EmSYVN8Z
+Gp7r9dsgGzOF05Flgp9Fznni7NiL+YTLLpF4HCrS26W+mPJGTqKVjsjbiWclhya5NhOXZYm4dSd
m2EYZXfWlQsMnKIfIo5ZpMMCJZKPDK6XO9/pbZKoGGzi029ptk99fzMLUZVLJYjrvSi7HQH26zEm
Obl4vCtW7e9vRJ09V6PT4KaUuFutVNpqBDDrNmItoKc+7gndcl8Dg4hMbgV8vdC01GN3EqMcysT5
Z3AbENEitAYJyOG++ZpEcUqvaBqk9yyBuJkJyLiZ9fS6FukobFL65ejEpeOvF5i7d/5aun7Dqk3w
KWpuFL4hPdEqk2upmEcqjlHDJJJCRElh0VFDHP30nQB//sgtJxy9lviTEQk/TmKVRZTej7D4cTyB
5W84yvU8qEc6PJ0R4eCxvZ5Rt1lBl/XxQ7TjHjuHqxlg0ltNcGNvCRYfQ6W/WGnN2grBClRfIR57
LtcHuWF7/OdwpFpEWXVf5VN8uXmwDJciy+dOoeBBC9IyrhtG6n+3fMATKQ64PGKdD+lhSI7BKYLG
7CJATCZbbdW5bsH1vwXHSN4+PaQzIl2QQHWVpPKq5OXPL/0fTHGc0tCw5gmWwLqAJuGkKimS0XJd
lIti5bnmsGPU/UwOLl/vzNI1cuJX7VPCRQwAT3hRc/Pkx9kDd1dWns6avQ27UmBWmt6J59ssKyqZ
yDDQmfa6BjbK2YE4g6dyN8kUDNZ+0FcSIGSgEAE//8i3TDDthhSrUiwV2VCtOny/QC90SlkO6fSo
FtBNkFCJDnG7H+e54S+wRie7Qpdjmn+qGuN5Uax8y52ixmZkSxnMWwnILW9ns9GLlRafLlpII0H2
4KM9SsZTF6NkvoZ/fRPeDX1K7w2Y3cGYegk2RueEyNrVwb2RbUwb5TQHHZlmBYreBEdbFc6rMNfn
2o+Q8POV39htMHqvbifn/zaX8Iz/8/0rO+RV/IUXN4m02HqpjFEXXYmcFBZ46L8wAOAqBAij1HVa
Ee4Hy+aq1zbqCidoDaNSt4K+DMHSGXuUOyZzmyTVNDY1/JakccPsvgILQfcXrwrCIgqVwjC1GVy8
47v125LHZyEywfTJrtnGHPvRsZOYipGWcpMzVVkFGrQKTnw0QVjQ/MYRUXXD0ZTHRvtk8KBC+0ZD
kASY6iznWlpOnaC15Uqx72vuRKIRBhko86bhMfwng1dkSZpK5zmGr+4uUjfSzfB6yHS+62BPw033
l9soaxOPUxElUDScwLdK/SrHxkEX9bOT3P2dJZLC0XiKQ2XU5a7alE3z9jmlNBNfuy3jmQ1tjSml
V28MXGtOpoHLo9OdohNaBG+8AJwP7icwmyNfADhLgeb0Dj0eNBsmHuSDJTaH+OJzAkQLqzNeC4Se
i9iV/gTM0AX6Ns7tbp7vjp3OulAKoeLGAZ4m0e7QUq5eDLCVSuv25YQlsQRem+Z151Jsq5niSejC
pg5Rd7ryKXxy9pKyyNNjFL7gC3NHMQs8T1h6caL/o0OJDC7UXalECq8jg0qVE0rByx876rw9KIyx
Cpcb0F5EmM03p4QJMb9JpHvO6P2LQYgeOARhYP8LNkq+Qj1gaT5AvPaoSQQM8qAZk6oGmQeypuuG
HSPwxor/j+xlkSqAGyiOlNxE0KtRbgoe0lkI2NODprmKII8ywANGA4qBU1kxyvl7bkpFFzwuayAg
lX5x6u5LK/JAdqQII8R41VyLPaPjiEqTwAum8+ASNezFmtpVNc7OQQ71+3q5Qet/6JgbNNp80oeF
xw7PZRlX+DZIHS6Sz7jTeQAlF+cIBNpJgcCBDuvlsEXVjU4b0V1+8gEQsVPsG1mcQlL5gYvx/3Xo
SAmsm6lUBpRxhMJ5OvAcv4eTzZQbqJ1jG2vaVKRTrvmsRoi5silm/PczsGhnAXpHlC5fADpiRzA+
gWvOPHNVTVkyOmcqyQ7k95Ld9dNVRJM292a6ke4sK/dioYZAg+sAOJsMFYx4Gzey59k1GitFwhYr
HDiHXCclY5AxjihQZIpN3sUoTm4IyrWrqYMJfKLIkc6mU95FLYNH6Uh027vRRafL103lbZLrIZDa
mzmA6RgXEkUha6c/6DtD2aYsv6Zoou7lkw6lhylCjAZfYDFKcI+JlUw9AdjpBJs1/mNIvWG5zkUh
nubJ6ReKuM05yiwGADeCODkpTTNpMizvWiGKY3BHgVh6kTWnoZU2mZL1fFMapiqPxJ6cMEm6/4sp
fWCtpCgylUCFIPy6UBvQLHvO30jZro1xGFcqRQgPgZRtQK7FtH8VIIJ0+ExGBVWQJNLLtm9gdiA3
9utNYVsIftHtYbOPg2FcnsLjzU9bw4JPk4N129Qf6TKp+8Hd1yZTZNPHQZ0pxVHbt6SKj5sp6u9z
1R6XQVT2lcPgOGlZ+iDgk50xW0oO2bBUicI5KIT/Vag0YoyHJrsYPjL6lQnkDhQECOEz2P/u6xv9
gMAyCbEZdGcUygPW7zjCZuDczwtwnrvq59MUyuM6B9QoxbTPddOF5eIxwnfQTvSo+hCDoUn5t8Lp
3ns9imA0bcy7xFiYYulRdnW/ynJlONxv/4WhieZNgwwEEK4PyG3UJfS4EQntDVxlm2RGzE8fZiOh
wrgVT2jWaNpUNSgmS5cyrwvZJDMrDi5bPAiLfJI6FpzZnsryogW0/rzWoVFytU/PRCDP6gEukmU+
aGOKmeFndBJCcWI8iXHkwDgtdU3lcOj77otF6i8wKI33YfTTH7xrtygFkrAKdvGlr5VZS/JF63oM
mlBs0zjx4qcdTuHovjpRoE29QEN+M5/L6qOrUBEgwgLjRD6oU0tUWR2Xf8Um5GtN1NIPUSlHpCXd
LXw1/NPH3xsiyg0N7Hhd3eWXHvRalXGOT7p9j0y1FWS744cSaZPWRQChP0S6yPPMLV5e0J5Z+U4j
Ao85UBJHPWFdvwxIamKmvy7sLfoOm0A636JbsMM2CytU5cjzNo2SV7SzfW12CB7l6eSembXokhPS
aGIWz2tD24aeeeFEzo+dV2C1XE2FLaN3GWzGzMZA8uYk5eFCWNHOW3mgJ4LQpAXdISkkaEHYlkDF
Wgu0xnYRgqgP4X7ivehaRy/JAH8S7SlnmdJPdzx5rsPejlDoKvSRXqnC4tFmlRja+IeH/WgYm6NO
bBBSPRSQwSZEam3KlHinmTA17LCtiQhDw0uWZa6DOTLFAPGDVmG6vOdcslxum6Q/19xX8h6fwhmX
sOwjek/2c/xMSrH1swbgt2pQBYumB5prpcX/sj932dChR9h0LTCrUb0SkbBpnu/wGWTCBv/6DA9L
a5FuUItIBM1UhegmNapMHzEye732dEqMyGg5YGME5kk2Ac91iawD6wAXufOuU33fe6gdfIluJ5XL
YTHU4VF1TmiweOwDH9IzQGtM8IpKOwRjYRfL7mlSp2PiNHeaMboiKGUyet+levCtGM3x/NFVvCTJ
KFo5ROnySlQvg3oc5gbCf75ZqaN8HdJskzNpx6KdJlwwl1pR8gnpzeL8anIml4B69zeJPvWIgT3J
vh71KJtTklSwOZg+KfdeWSq2xWNmQY+DC2tHqjZA/p5AajTEo1antcXKA8tfDoSXY/dU6CwB4an1
uMXjyRBoHyIgJh5i4+1x0pNFWlxnfYdLG/iJsaSfLtTw7PHaqkZhFIpaVnC9t7IyJ0+aUROI3xB3
Iaczxt3/H6Oi2Iaf/0ozsvPbYajSTT5xiEunPz/X1wO7EuC75YVbp18dFtfAAugzcCR/n37di2in
1YA5h7swx8YRvDDPERy4PIJ1luYifrp/9I+kfjkmFZGc2crlAi3i1W4NRFhghAMaHHD+IFb/vuJs
zxFQfEWP9gWU+Ri6bMF2FcJqlAw8jXyXawglp/fDpkAV1m4tQ6PXOvRBoRI0PWrXrp8SgZ7mJSlE
+ZZNWLgVrCWmXX4BKwBSHA5BfvAd8pAYh4+pnXy9mUUYAhzbBxst28zqdJbmazMr0MGJZ3A7adoY
pfdWPFoxlSNu2BSLZuD1BahQJHYQhdBIKZAWUbDsvwKZU6fYYH5Vtgt4mra0rqhKBwUxt9hW6ktu
f59QzYsdKudZV7rUD9qIq5l3Px4mJJno/U932P551R13BtTzt3OPfLnJ6aRSPrk27158XfKwslbA
RfHkjaC8YmhGzzpvD5JWW7yJSWP07o2+r4L6xDm3edjuBqilh8SodCu0D9ZEhohv8j94LzmmO8z9
gnhEkT68NPljPpqOyQoSyrUgMubHetJpqohlRsp/IgsdkYAvUrW5o2G4T/Z5J9CHFnp+euyPC6df
wEyJizkcD0v+yl6YZ/nVCMpVFtZU+I2JamxMEZaPPmc4uaIH5vfHjG2RYXf8JODd+qa9FUmZp5aO
VzTJLYCByiU+wJnypG0E/NASArMEle+U+NWfT9JsdBLfpekbyJX7NKu6H9Te4h5Qmfu1lvWdes8s
1R9E5KorBIGefa8AsPMOf9mAQmCyCFmmz50xi77WtGQwd/gz3eMCyXodW0Ud5DJeK/m+XnVH5Qk8
fNaBbH/cO5qCVNe+iMWwdgbn4WlZlVZPNFOEFt5TMnGDF8po9qTftQwNSBqjvrwbSad6HDp+YpOF
y+OT6p8kP2moOUeiz1SIBNgR57hCc/OOvYnONOYBgdH8ZMrFva56T83Nb/3zGfmBdz444xAuE6xI
C6+b8VmzwI264wG0KS9efrKErD8T21H7kl0ZeJJhfONViaQgze+GPbkZO7IOF6a2uXQnCJLBp60f
KeW2rb2VsWSnIn5CUmPdZEr84YLz203qaaKim0dP1aQmBqhG0vjz4MGlS+fXYG2Eqq7U0YHKre0j
RcBO5oyXlkF7iU7K9za1PMSjcKr7Pmq7eMTTT8cWWHRl1Nbddffca7k+7zpzYtdqUSwxuBfZl5FK
tUHkbzAqqtZOwqAHEt3XJOwmXwaV6g5ffv7Ujpf9LdtwQZkqB07m//afYTwd9ngUEYrpGKASNGbx
rOIWsZIrvtMM7fGFlxkMXHxpJTTkLFo3eaXM5M0BzZLFqGsUHvGo9/hDmJ2XXASzhshBEbgI+oG+
afDgmXQCx87LmTKTC+wf57SVLzAH3pWnRXRlCl9acqLhyIssCoaq3YMcSR7QUxh8i7mDtvz5gDc/
WJlvnphFIaIFDFJTshrXhAlcSdI4btrm3pz8boU2xOLaO3K9QDwYycCOw0R9yqfjUoFjbfznvhrc
k9iiRmyCSfuSuVnf0LIUbsSWrlXiPL0Ba2ZeMkMfg4wghTe52fbNOgWWzfSan69zTfJ3SwzCZu/0
yaw4q2ayQAvKnbIkPAbO8/RSaL/dbEus2b4txlihu6AbaWHTotxtL5SE80+4y5UOb08yFqAnyElQ
DFO/NfROJ9660FJANiVvUns4onAAx94UgT4oahMXvK8163joSnTrGQaq5taOiDx8REAsSjSs4Esh
Okd2x3a1dOwKJYA99nrdwz7L3hte2dkMjEYdiUqg/u3sXofyiDlObp8c6m7dw4p1SbAWZTp8LFlx
tg+6qrgmDmJYIOFFBaIhRHrUrpZ6hwbP6qaeL30dY3Rq+WaTGnDktWQ+H79Pi6Kfsf1hg9/bHg/N
fnMUQea/YxquKcdEXxIsQTXt2CQTu5CMYSOBAxKDBxWoTOXl0t9fM0C2KJxr0kph208eDigOFspn
yTq/90pm9aJi9WtSjuE4HpL6221WV9tQ40M4FLPSb4id3S2j1uSOQzNi5aPWqwcpnxASqFiAlxD+
D3MQR+bv6RC9Ni30JM8gtyLrtRTQbDvemiqkLFiFg6K+oJueAvS+L2xf5JchMi3ejNoPxkN2jUDm
DOrBhyfVcNM52XFzQWGgWM+HT1utrIOaNLaggP/hWnREUAwSZdM0HilWh0pi0BT+FmmClKqQGBAG
TbJfoaRcaIJBqXx+ZPPAGs37izHBx+cpDmP35FrXuXGgu4mY3Igr5/EYtTdssDgLKbmNqmaoitMy
aFqFc1GQ/WfzIHaqP+Hh1Rd0c1sl+kN3YPrh9qCfFKQnk2bBwz8A25qT9fN8khmDPk03Prlh/3qI
PBvFe3RZNOyRRfntc/wqxneR0Ea1b8tZUV4T7mwP487w9J2PdFAn2kJ9d0xJs6SGo7wN14hHLBzd
VTaK8KVkQP4CIwyDpVy5ofRnuqwxF0RAptFVwCaifnhO/Ojcs6cvtxUxQmflSvNfpVYQWiNLJe23
e86lchVbscLW6rJbcThyUrVCQEKyR5KxDf1SOMzxNDPdG3svcF16BDIBA0gyujcl37rD09lZanaN
ISS/Cc/x01aA3uXJCyJXqaZR5WeFhNik1+B56ZPkx4K7lr14Vt51A6xS4ywY+4MhnNV1u7/CqLum
ZYf2kEAQQNg+7+tBg75/lmSBqkCW53xVTp/GBBpjp7aaPT5iiDF5xSyz2DAOgXtrOgRf0XDJUMhF
oUdZeKSl9dD/3l+iEHYn5olSGyBictJOGR7QpP7xxrGkhjcWjJQeuQB+hMvED1eIPAiftepX8jBu
MauOdhpnr3H+UK/waoS5SXUyKKLKtERyLpp0bvAp2IombmUkMwvEKbZ2IHyFJQpU/xZ4bp9kDj0D
5dkKxxwopsxY4RCZdPUn2KmvkIUNA6/Lm84UkZcrkBQVkebMmsVGACO6dtTI0GUp+mOwVTgq5JZL
r8BGWOZKDIUOPfLgkuDlD6pe2yfOt/Ocboo7M4U02AIxpS6mKGA5XQXpIXHbARVbVtX8Y4nzMO2O
1kRIn1uFHuWziR1loCUgYFmCt+F39uecrD3/HEKBpbuwgUNCxii1cOUmk7istyimk++peO6It6f+
d+ZD6GL6+f8lR0N3lFAPEp7Rc9VXyBnFqa81X7ZFpUMNNutHjVVvYJRxpsVEAOwFpgpldndpcFEi
d2LVuH435WKIzF8QS0cPsyxRSNwJKl4Gu/+B2kqRF5nPndYHAlAwDLYXZRKOG8eD4tADz+J0zNCI
H1UOLe/7q9uNT4UgkSz6h8UrJwHlw6VXNqlF5G2fW9ARBE1qObHGgdb/PCwxBCsLCgEEdOfewuj8
71NEcjACAHcY7zqpTIVM4sR2JH0toYVy8s2G2mvjnXJwt1hO/zUJHMNvIK9T0MjaWwwL8pjI1E4d
DDhMSy7VZN2mbx02ChXpUoRvgjjc2V9czSHXOGrlQKly2SJ61wYYZLwMvnuDTltruLAWH5XvAB6U
vLFdsjqO4ulnt4q7WV0xFsH9opDu3BoiZ35Q9hcraymEUyOKl5o0wEFoGtIxlSiSjGS95OdhFUez
RMy+hqJdlVx00HttWHZZnUgJegcsAWRxAYPFKIfLAF5Q9qap4/iFyWYpTnBzVO/7wY+qWZZKCx3C
AFQK0sDtKnku+8NgjDHVCp7fs6z9m1x+OUEARHDoK5oVMvME/GBqBZUd9CQOD3qPQ0H7FnJr+WcU
rt1icMj5dDvoR9m1YNyyyXUKCAhkymaRZFzRdiH+RrKp3xeh7zRXVCgdRFDJgA2fWIdnIDyBV5iw
NPt3RRTnLlVzqwrJn7L3xUO4fI1Z6z+ujjWyCQDV+OSrP919tvXyzHB2CnB6oSisAFUv3Lg8LtlZ
DsDZBuGzSPxGUFI0YtSoa+z2AlbEBwxrBzNgVT0XJzq49OK7pto78GYZT6r5KXNXmoBpAPY5P6Qv
1TjAluwUo976TNfFmP+yZuYdBe6zXU+jrt8fNRhX4tK+XbK4q7w3sh3REGFhmkQhNSGzF5gjCZUp
admuFuXpMJJDoAE8709LGisZ7WIXgsuoeLhjbfIM1bFJji+NPzhQjcjQgWllcvchuHPwqzjVPamJ
eNDK7gLIlBvEiY3IjCRmcrFROHpl7Htr/sVXB8xMQMSrHm91vbo9Vu1clPK+ynuTcsQipd9JPilU
BRoz5ET32w0Tn8yJm5mVMTtkCcExfO0YRyz19DkH65L1iomWOZ3wmGEt4xAMjWkI7CEMo++sILUP
sC2/cwJ8rD6HDi8W4wcZXkK0IDK+hX8TLz1ntYT5WFXN+/O7/pDfQqMdSJ1llflz9Ps44pVQVMtF
Zf965dMw+d3/Avf/sdxLrCOJx6rvW+vAGjnR5fDoKffFfJLedRJ4AaUuNgvLDJv2FLxs1WV7OnBY
heUAVVxtBJoHXfoJcyH6HuXjxyYehgRKmzOu3C0tmlKgrW1paniYT8iFlNee4QaW9f/2VOmoDwzO
Cb0FCEyhYKr5mMkB7MJ6NvbEIq/HOfbdRhQjtKaDsDbojE0bXrfXbkrvjWLOLB5gsRPwX4UAxaSF
MVyssk8HZtXhJ0BFa2f8md1WKOsWaNFaDnjO52nLrrAkspieh4utxH9DgkL5YT8iLApAuEqGPDIO
aze9cBl7SHgk+XJQtciGywYjlRZ/LUUk0SiQlvZ1h8ZAp9y98/ukbmO53UxoaK2qmlHyha04Owr7
dPIGUzEOS3J3JptYbz/fqAl8UPm7QKpDtZk0e6Dlyxsa06AtJtCCDeZ2fjtUoJNpNG4pTLSqBQCR
qAHuceBKi5lvZOyp0DQnAElwbkhCrmBkR/jEjBdR5gT6gNR2nz2BrF1XkgaM35SfRRuzye++7UDw
Q1RS+dgpl8y/TimZNyHy7dh7nZX9MVBgN+NnFwYANYSVx3wQ8Y3SVhQLHkGKBD41sNoAhdRdE3JO
qjVqh5roNiOrvH1cirXhaFOe75nkz6W3rMvhkrSO5PHWx10l+gXysmE7/2Ik2bmYK/9X72yNGD+X
5JxkCkjM6G1vE2n3afaSTEUXI1Q/sWr8nB9ipDiPKUNF2jcrBWySXXNs8EeNOGXqFsgSwM74eiZ9
kOYxtPWlETQYOqumUSIhPtspypbNf/WRbsQdOyxeqwXWU7q0TQjIr0uJOx4iL8cGf4CIvNfH9e1l
daCePb14SY4scif8hS/nRlMRif7jktzJ9lXa8Z/7d3lMLrFV2kEun87Zh9RoTyHU+Iax7VpsTYTa
aExW4QF575bSJgmQsRqGSbWAkTeBeaA2M5bIEvI5ZKK8YzyLSXiqsvanwxVBDcvj0jIc7O9Ubu3v
knWc1WfWr31Pc9bdEi7KbOEHXaATu5M59Kbme+9W69UkKarkhBV4FB4zCOZBe/bjMPtJaaOE6IWN
0KrLP42KwOtpFx2h6HUlxz9AEHFv64D9pAkWTLEn5OAlwhaKvmhmQarAI8biLh4zHu7rJ9PHzjIW
t/ZyIJdQrIWKvzaAbg90cISR3j0A7ns9pluS0490IjXhKHnZSwHsG5nBIZ+cGCivwiS3dBlCkxvE
/vbx+WqCCLaP9xiGvVQcvLeYpjVvMKWcCJv36ZXdnN9sVgmjFjXuVAhwXB2ysVliRmmVFIqNEJdk
lKkf0WUF/xQ+MDQxxkabHFLsBuMcNYypDck3kxfRqUKXZmFvf95Jww3VXSxTEnhm4dBAhndxAp7b
kSgFkLJHbh3VfTxIpDg294cawP4N6vtBkQa3XnX3AlRbNF30TFRRN0bHGVCJwErxXjBiKbUHSfsr
lvaVETnWoqBrQLYeE4Bawy471xIrcJzQlX6uTKUiZQJt3LB+JrTWcaSIimjQ8P+UVjVYrIcCCKCs
TheKdjXBi/n6RIl8CPCDyUAbI+mRh1WtmAg9ypEI31pq6ovRMvvfAyDAQyW7FXZ/Dxpipra9FQyn
b/Q/JC2Mls+kUrYoKSWK1Ikc6Jr/dv1USNdrczbly/BKuqRDYu9I/l+9DN2gBesqJe+BXjAu52EH
ASxuSClSr72hrxWwsI0LIUeEAZWnblFFsOQqChSQTfRcRqMiBTSBVeikVzBrcvHgnsjUgtNJhZny
Dv82qi6ftCUYASZdMHUmq3sciBY92GSj0GQlM1ZgDlXSFVW7IMJX9cUBtR8+PieetHjMfN0uOg9l
/bohdjjXjGRhxc+Cxoxocjbx5wAdK4sKtwiq+0Prc8Qe/xlvwRNRfxsbvsVrKnT3OEjU6aMPOcap
E2Q1mMc4ChmY37EWjEySmH2ePvYqs1yUOCmS5Kw7L+VFS5Fdzn5xbe50/COMlHcdN/kisLZbDBb/
xhL+JWwoDe1chDx2dm6HmjYJJs2kbFC+MlaZ+WS4sLeksQcmXbV4yiB3yDzZOt9lNMbEZw22iKBv
cpRG0vhOIBomn9mtKOZYFALRBnDwrUNDDt9zuxehO54Fo//4A9exjYXYlgrfGni/rWmWE9K/3ZjM
xDIDjKT9850rHPc4ZoQxuw3Iz/vdKm8q8jFa+6JbuduzNqZWIMkb28yyvInPQGyOGZmWCyijHazp
bz0DiSLccwDuSC43Fp+O3csCrXrSZAys7ZwG41eL4W4b2xHcj+AbJn20NiVhZyAzstmQydESfJfp
KUHwqw2Vu/V4DjFzXlR6rCurDi8kNv+I+QbEiZkCqSMnUj6O2wO0J5ewziOYP/Oao0JIpA7j4NXP
M2dAxCoHieDpj2vabmK0ewgu9L2LbC96cYh3K0YLC2yMbASKjrtMw15VvM+cE+itMy8UZfDjnY0m
aAzLfVyksFa+uKmz6+zX/9MrPebNaGqLOOo2SkHJ0HOfPp8rVeHWT1TidHSAP0L1Q1ijy90upxPe
YBW/zGIaCym9R/vvqAT32wrpLmev43FNrLt2o4QoVbTiuGrpjfIjQ9wHBEgDlBkfZsL4G+uRJ3el
W6s1WetnYxOW4OGigSHrtNdVq9FW7vI4B6GANa5Sa0hrEJlDPLTsZhj54RWcsRaQ5+9s5FHJnrcy
sMJYAYGlAoBve5jcPUJ6EyS+efz2NiXHuou0Km3g4GQGzx9Ch4eHBTx+gwj3J1wInb6wXAowdd+O
UMH+33GbqTF/AASniwxCY5jusuU6jCpsumYyJDTvx0BPBrTLb5QkFty/xIc2GACC7WQXuEAGEZHq
MHniT3otQiKlmRj5VlGJOhQN8q245UhfRJgarqZuPfHpXzBFD1KK6i28nykWtezZkdplQvAt/jFJ
+y8mGvZCGZQi4jJtd7MGTY5ridLHz4lXvLfXtzMiaxSiPX4NGv8eeOKom7n3rgFR2L7KugqRpHAL
L89WW0kVuzCm4mffh05Ou+It/T1gdPOBUtV54QoksSspYio4juZsrpTdA0Jzt2/lCZ+j3m8AuSlY
cFySijSNq1qrHFxsSaUaDQ82OVjxXcq0clC2bvJ1hRPyqYnBHChwEYn3Qu55IHddoUIPn8y6qZM3
kq0up5dblqP1txzIph3mbO0fni0ZpNBoLxuFP0UOT415KNERL7mbXEnJl1eIGnjNig5zXI25whUF
J7ewfuO9r7Oa/wqkUvCBxRzVwPFGOt0rehuLC2HbiWb/aSUI/D3Vts/eborKsmpdYs+Ynp8CtL4i
JatE5kX3yZklMuAgifM7clQHv9UVndAWwivXKhNpKhQdLiqg73nxiHg/iQaasfOTCe+9J/7h7J2O
A0enpZ7UR3NMwAEc6CccneFgidfvixtr5J8i/y/9bD3au2PyiWhNzSqN6KDh2h5mtOmfZ/+KUh0Q
MIa7RpWXto5JNVOXijICBAd3+JixBf/0vDvYHjJWmyt76BbSaL6nmklq62PRVsANVlWHL2uMidNT
9+r7wkyCWsw5IF+WZoYDQ5XejK/aZda4d9A8kGBQzFvpnFdg+Zbq6USfI5ZLiYOaI1v9ZnI9vteV
nuyzOUkVhSAdwFov1nEiOTiuIA8uJJbgBpGbHvGUYX4fCFNu1VWouHN+Lidgl/0Stcvd2jLSUJCO
X/dmYhLN1XoK/i62C3lux9WF237+Ew39MC+7MJrWb17warcR1LK13ASK6RRXTIx+gzdlGabem/5n
EXnZZPCYl0AV4CTj0F2sgYnlkegDjT4GxmmERhbyEdaXdxHdfL1ETNnY6dv0ziqgyyyCZiAJIBQB
f7pfU/HRJ9j3yIyl7Csn4HAmW7vYO2ZH1SmYJA3wrhibNFHtmm6zFJhkm0OTgEOuEcK7lSCcst9a
ySR1oJPMrvH+S/LUp65HUo6LNatLyFNcsDc/4t8pjISIFzer6M4nXp5KFfy1tfGEzyNluypNRzog
nqkbg1hDTeQDhAN78t33LqyWI7N81oXDC4HVxfjs5Yhrpq4I83LfV1ZroHSuWL1uuCagrmh6QGqk
b6lEBktBPEFxBmw1NHCIje7zrwfNDqmktV0fx2jKraPiq5vsmtMJwFcY2npeRCQDJQeXgLu6cIVm
AmzKWJgcxl4rWZWkJYG6Lg0p4CRtTx2RPfWKH0z6/TQvGchOlvbE6uJeGIuQrUvWORxBawKVjm3r
3G/tuvBkdcuWqdaKDbNqtnL6ZJV0iyqqPuxa9j3D1ybdnGdquGDpZ2pfqnsUWCpR2E7LnFPIunPI
cF9eTPZ93uk7b0RpAYEtViWu0tzjQBhmUqvtuoIFPnDN17+WBbamAC0afan+SQyuLSdzbRVmV8zQ
osLLLD8bFwcWPLx3A1ER+DXTPq+AGGgTPY3vbctyn3/dLo4acKQb/ZInsNAjIp2FtzvdNg9wHpPj
FGjUp9rLRwvyyxDp18EbA87A6oRMeF7sMFlNpGReD0iEBGLYNmUH8jwlcfGoW/IUfbIx7LZWUi/e
L+0U6oVZcDx5BsmJ+HM6ReanZ0oRTo2teuTjRPrDTMqJO7T6UNjMR8lZh2Gr32Le9UKNBRYsKTnm
cXmgL1lYJt09e4lc3JTrlhtbU5Ob8oBrRgKBUKY3FM8upaXsY8+hMvAvw1GNsWfmt65mNobVaGOr
oOlXIsFyCbVNBy4dFFb5OzTxnmlrCJf6qXmwy7BPAn9XnGDb4nN8BEUGoHExpcSchMTOrduiVx03
FITO++N5TePVTfdV0IR9MeUjF2ga6QvD85cSEWXyaQ8yMKX+zBQtmhDzuoEEObfj6umY1N1QNfPH
TPG2HNnwm7CDB4ndJ32tmEb2isnUugzWL1j51lCnwdP9CO22FRpDSiZWwjFCsj6Ld3uMQKZ1aslI
/ihFhsFToGWc/KUsOIlyKv1lQMkSmMHL8lYyaQK5X8KFogyFwmlzc+lF072S0wqHzSeLGgH45gbi
wgU/tjF4yBc1Et1ZqLM4LEQ5Al1PiOakZDSWO7H/f13V77hr5vEfuUoWOc00Tzuqxegl2uohhHdo
m0eMfm5KxR224HKQgTinikOHpyk2eb9nFX7TQDT0rD1roF6w1ozQzkkE/TCriEUCgIjglrpopjIL
PDTJSoZriaH97RIkz2TUPQgPy/UlzT8HH4J3TlExbhs1bq5E4rsxJfoxkDVdAr37VJ3NphYMXFRR
dQxv94S9hjnnB+mwiFbVqxPxgtzoBRYiKzgI7N47UmlUrKx/tR7tHf7ATLXAs84UcdiTlbU4nK2M
og0fRSNKRpyMn5LdFHUCxxfyd2kkmXtp0sT1wYj643vMxcD6+B0cjgiIeHi4Q8h9mYUlS6+x2Nk3
4GkgZ2/JIcbXvG9q1NtN9TVEZsesQztg9xkkP7o7OVaU7Drgk0X8Ojdwvg2OmXQL6SBxRVUSKB7G
RarqzFqblXyqO6HTrdEIbe4qdJAK8XdD6JbZYgfDq+7FL91jiuVII519Zd7/CZ0IUOtz8lyPPJFl
Vc55gbS3gC/8QbubMobMItXynl5vpBMKinFaBKLDWFIUSBcLt1MJfWS0cFhJmTCJcaXUraQMvVTL
ZT/jKGaRfSokLUheu1z5VlcdYxtK5hyPKA8T9f7u0gw+Zgh7dsyj0p63OjPoe9kXQvsmsn3fNN4V
xW/ZabUeZD3w70zofpI7DtGSpG4ZnqHxP611Lnb5VfH/Xv81p8w2eGPrTe/pVSfotR2bFPNzmivT
zEX7ilo8FzA3UVstDwHBidUU88UAdadXHuGZLnW9uS6UxHlF3II62NC/9Ndx527gFbsmnSlII7+9
XdbedkyVC0KBJatgkcg/N4/eIT24P1hNJVoxMBTVtRghxm9mEtf7UgdybmVQcs+5KD0RaQNbXQJR
b5n4GPr3wXv7AhKI2NCd1pk3naGgAOI1j2evjjfmP1jNqAKO96jBHY/xYQYOzZ0//zFl9Rxv4IJ5
9EAftYWzUId4YGpTiCb0O3mlxwISGnxcJsy/zaIs+qzqlyxR/BVU4c7Ux7z4b4yuQADsyQmz4J0f
oQRIJMViQvjtxGOe4yTMD4Jf71YlwDbybKiW2RR8hru/Ot7RamtZOYZZk5pPOx7Q+J7Hll4F8E7c
yERVXU7osgF66dWNyp3TpQEVDMJfuke0Od18NYwtm+HnQAY88OkpYdINlO3vQHXl1R/6bi3izsZf
QEbClVNRYFamdZWPYuUIja5YJNDpxkOf1ynywvSUpSMA0+2MPeOoZ681wr6UiWzxW09xD7YdtLiQ
QEAUZ9xgS2AWrH9b8o2Il6IdPPIXpHkdDI4+AuwNmtuGGMXxPZHp/+hqt4xRmeVZCc/T3pKySqzz
bQEc82OyE/SYN25yx2yqIYRc9DXO2nQ7qu4AgfH1G8qXUPrGjWDuy1ACtlzCZw0LtcRNHIo4vJnP
5Vz2Mj2p4CAi/+NeKFMaz/iGPkSeVDld702WtLaB95LZrucMEJpXaZe4E1qyZJSsNeLFyJsjkbfy
HinkdkYJ15yeSPY2bH1mHP9X2RxPj3g+zczsO0Y8HL5/qtChjGaTf5NZ0+IGWVkdsUCtfwUe/eQG
VvuW8wWrYTdI3nmXNNB059y1bxBDulygshTUBWtFUYKgv+i2ZgKtfbctma76XFqkuCbYmAhaNLhM
YUiuUqNDxnPVyPo8yN64XUiC6cl8za7vTTGKjfi+ByY55ZMHwuIy3lD8G5ht30KR7G/i+oYjjxHY
E4BsFiEd0nvqLIFbDPirtcS3wautxSU/9HRs4o1FKsz42lTBTvITj7sidpU0X3aZgizSV7Q7QFcW
0c4PhOcTcIyLqICRFKhbMsCYipKMEu1z4b8PO92d+zBA8FGTq4AAfo6iepyPbBgNgQHWZsAR2yeR
ly/vluRXaqxh+xo14Y24zhebvr1yWCI24Hv+8wAa/+YjrvwkrlbwEKtD9UUqNHsrrTcs5KqYnLPG
YVDcDRsvo7I6v0zbl2AkSSmbRxAyeQnXSBIaD3zKNyM7rRPedCrdkhEPaPQXs3XD5FaU17vqAVFU
9iUtIgtN9xOnKBbaMwxZdCklPm3EhThpIHw8VqLlB1tbSrDxtNjF/tDWVBKIzQ1Npz/r3atKQvt9
p/D2BsFMsf/PWZ99lfUQFmY315z6DMVgAVdTMnjs9SuySbmX9dZIRxoHAChOy4vo3i+Vf/HXIs4S
+CfGNGorXCKy2QE1fnlhcNnj1g/Ffv5KSuaJDv3WJ3jOJMTcC1slWDVkJMgY88ZwNInFyjc52Msj
jWE3yMj08NLT3YDMotL1e1oY7gUo5iudnPMlkd66yTmVWYcPsb7fBwPI5/6ArNoq6QwmHLqHkr0O
0dGU41rWf3xiZEjcV6WNb51WjnwQ7Gbsu7WObWyedU1hslGpks6GlhuhbQIerwMy44uOE2sPoW+h
D6lQoB88G2xtPuueGRRmvND4BXaF8TIm2r3asnx2poxaPHmpItiwUCrUptd/Yf4//BvfdnZG3Fxb
7IBKC+xzIqwg/CcJz8TZR7A4V4Ew0+GHdQDkUV21I1lBPBKeWCbIH3NcrixZAMQMdTt7DRfLZH0Q
FNFmsxBEpUqAUWeAlFfzwRPGvcMwiw40zQxdGlX0KlNTYIu4BMF/LeT2sYKSDYXLYY/StwIe7Y74
muUslnC3ka1eleKidYvLJdDLoSV9boaJ2+pCQU7J736PXvEcJFsK5Jk/OoNuju47bo8TMbaY017b
jUAhsTQA4MWdyoBu+z/jBOgAY3b1MysjNpXN30j5tCiN+nYxdESMYNOdcG4O0aSLPtVKhX2no08t
Y7JvZkeLSTVuWVJKi8vBo55tgx6jn02j/0vBkugIOq1zNLyfVeC+Nh/EdWg0bttSSptEvahw5d/8
Y6/VBNEa+BEqujlM9Y/zGgVzSVqNMqXeNNQ3sXWbhFFSfiYhCxFolmyy8o2rdNSs7Cn8W8b0MpBC
4D0y8MpiB1ipMsXYtpqOAL9VGfoKVCdX95XIqHZJ+7f1A8f+ZqpDuyaj+pjLsL9JqsCDi5eLaSyu
o4kWeB82avnlkSiYm9qHVlHF59QPQT+Gd+qUKUZHBbgeyCCt5o61DvD9i/RHgizENbkyLlvuEj2u
H07t1mBuqlY4zsJju5NnQ13IeBfZ/hVjal5UqP4qt54Tdgmg587fZ4Vh8LtKz6/K14aYXpgORghE
2fQRPUZgAVM7f1gVU7LuxIYdiaa71c4aFyei/PrLYg3YThSWsQNN+aoz5Hz/OHfHsAuX6ROYkleO
WBejJ0SvCwwfd7O6Nmvz1A1jVtg7/5XLzcIAPElsFMV333zfX2ddEXTIMRf+VJHqMz/3wXpy9lwb
6F+n7ivC3jQP0tMQs1XXWfo3NDYE4DLoJxCEBwsXEtzoQsFfZI5+oAj1PG0yiWMOkpvJsu60gkOE
ZoDzcpxeTYa3ZvrjuLbSBUtGnQ7tPNnGKgTwuusIZbWQvp0jhooaMwFUxw7gbGGoMvwVGlHRpjMI
n2kE9D8HuoApP762+mRUG1Ekk1YSRCjL1bBWARxLIrtQZ0FSj6Z3BDUOKgZ18XrFpqf1r7a6lDd2
4+L6Ti1ZNN73lNowL78caAHZyZ5BsP3s9bIIhen2CSzIasuLY434Dgr71SkFTnB7gAudLQj9+U6Z
AQZMXJGFR4QTXCR5zlZaCo2rGpys6zmTOvP3utK/fiH5c52ght1fPQ7KZKRjFXGW5lgc8sMra1DS
k4IGW4aU4uEImrm8j830Kdl83cTl0jhhKrFR+jleJEvVCmjpwZLLZcIT8bzpkLKMNJgyK0cek5K7
HF/dK32DuABh5iZVesn0cFNPlNjE6No3tB6qEe3F/WQGoBuNI20MrXGMbyH7HZC3O6T5TM3yUopb
NtZc/tS3uO5z3GxYnG0tuaDHeOUL6ygCkoq7JZTtlGrOCIib9N3JANuhrR0n6yzeV/HdE+8laOUu
dm/BtGxOHRH5wiS5dJzHQicPEghaYuwKOn4pmAtFxum2ChhydVJWQW+IxtalMRRkHwDOtQa3rWgp
j3ZGMGxQs9B2wTqoI7KPD59EiDUgSFZ8bHER1BZzA8AjugrxPyknMWItx/LJKD445gXGwfsgopgZ
lofLTLI4R4o4/pH9v0096FhoLW4pBKRg3kYMOfysllu+Bqyur0DkaWUVtDNWNgk0hqHcJt6GfkgG
7Y+WyB6o6E/+FfIx7XwymmjZ5CYkzq5fCPah+GGvTGq7zz2I2dQB2Ye67sDEn96glsbTiP0O5jpr
L9POXFd9iCKCh7woGb8CoRdVeD+ox2WdEUnb4qCyTmGGCE3XGvub+JryNC8Ijdjr3IPLHmu1l0Mz
msXMWrBNnxB7njeRbaneY6BUzx6Mo+elAjjHIzoeLRRJGcxh5uqdywghebqAJjK3kuvB9pWfIFSl
rv4Dqub/L04xKwd9xlvVbmFcnwL7e3Ce9C2Lr3RLXiYXiMkThfsQR+leAe+Ky+9mFMJ0V74kJ05X
6cQCm9Kokmy4wLyIZ9lwB7K3gT8l5G0W70Z1fILRiJG9SEeC8qr6XzGmFP+utLftFBcdem9LG3Mx
zDosLM5VX/M7OLJr//ZYDaV1c2vFS6apoBzNUQxEHhcPDBG8i5X/LJ134Q0gT27CQvaw+vB2tgQT
ceW04gtxegAFarGCrw3UZXMmHbhtivLON9+wF5jpicL658omuFBvXPHbGDkScWDHuy3fbDujr/QL
fbGO+ELfLPXIVbi1sZacMrgOfM7O8ziH83KVa3hNYNl6AaCYgDaXZ/7tQRDXPGJegeA9OQEIMKRG
ScBVC29y43n3fRvue4/Tcl0ROQyLO3ObUE8rdIlAo5WI8H1BqeS3MLwYL7WnqiR44vlv5W7+HacH
d2tyFO2WFmfSxOgyNhUqMiUf6DLs8bqVEXkZr0Tr2GqLDFZGEZ20EVk8bkDvJKApSZ+wPAW4jtOZ
KeJnnWBYRE6zRS8UXFvgYAu+l72gSMGdlPlmD30mL3ILjZHoxTzxx7DQv5cjsXeQHJ+yod2B3yri
tUZ2iY8n79rna7d0MEbcDknN+nVKovlClUG8fckZNxNrpSoAiZXqi132Xhq/oTqBCEJR9DwVyb6N
GKU4NFA6XbVSVjMzOKIIcYe5BqseZJsF0wDlEMU/kOzg7AB9nYgqLztrMexqxcrM1v8htiMllQoI
npX0+zOwY9c2gWIbuWi11E7wu+yCZPAKBOBRZOJyyP87lt07pDBZ8mXEZAnUzWmxmppJZmT+sAq7
OBf6xNMKcsx79TdOhqHkJSjshybdTeKPJUpLDYhP+YeXBunjXsS593LF/zgZuyjVL1SKFJk1VxTH
v1zEN7OiumKOXXpBZ4pKoNvNC8HSlNb8V+4GNG8yI3/eBFCtS4tXrWSq7SvvQLct2B882vrfv/JO
1PbdJluIYUX+5JIuvI6phFQqaohyvqCIGR03Aw1vx4RFCPP1WjDqGBfAxuj51Hmvl81Q9PpZ76yd
lPJNLVJ+0iDwWNRHGRiAMobCiqW5uqFw836I9EfGeQnmjU8enJDDYmT0YyfO6+HGdkasPBpPW8ih
E6lWXeNzBXqQFzlxlBGqitC5uP4oS8qEeGXXM0XCmii5N+IzjI5jvR1qPhgqHCXr3XXluPRSOpUl
vHiuJ+YOGXGDqMUhULM/N/t2IOWi7yGlzXGzaeD6uHX3HbIc0pYr7KeIk2n4JUv8PT2QibsPe5oa
fwYm6sL8h/IOq9+6myVXPr3TNBJeJ+NfzD5iZ3a7eKkv8PDu9L8BHzLiZAUhuZYvF+55ZelSPW8Z
Kv9a1TLzPTDtf/BpWIoxzDd+LqTYDBu2ba7KROOpem8UbMNi72QB250gxOexvbmvz768gVGT7iCa
dEWc4b93FX9UrpLRO28ePFaPxlbmsX7M3WvgVN9w1bD9sH6KT6mGdcD1Ybbwn9PRr7fGNlgnUoRQ
A+9GqYNJBj8l4XPKehAM2P/e96th3Ggbzx7Iku5nVJJfTAdp/gBenyWoblHfmZC0uck2pdIId8hQ
zwLqA+Ni/sJMLClkuy6LQsiP7GFWIRo1O4822a9MeNjnqK/Ej/6aqlIOP7MoCzsAluZCuFX8pIJL
f3xStMpppCWs6Z2Ay+pAY/6qZekGTKNgOPRoyYeh1aQMxMqOobwZK7P3CtMOJoQVepMta5ViIO74
nVRzLffdK9CBvNz+8BAfZWSj41lN0Hs1KmW8RvGD3eyDvJqdf8cdf6aW5H9sseh+IlDi2ylfH27G
lMEBFBObNFzHBeje8f46wpoUSyChiojMi5zPC9pnLaVBrzcJUiQYqTqox+tLFwEcZGQz8ECV3obM
BYFw60AGb8zlaDYshp/vsIM2mF48YVk7wNOs5iozWHgx1f6wdTTlGmDiS57xXl++K9eimAx0eAvs
ROWBQgKT/oloRabVRM0GBL6CGbKvXGZNWRGtT5Wv30K/Aw76tojn/BuIfGh5FFy58lb92ABtLDb1
LX+v/sT6X0dlVzPKusWoK9W0XJT79aqbaPaEDX5tCIKs5QYatZOohLMIpsLKJ4zNO455wE0dlGE4
CyUcBy3XtsVAmfWMt+1gzRxHCl/YMUGdy98WrEDzvdGC6Ff6u/Of0UFMAPxrS9DYNp+KFLPuwkpm
p9orQHzSVOTjZkak17/botSZsa3S+gYyEhrURvW6UcajkRPM6thfDOf7NXNjmbXMoQ08zVmOB2yt
kNjjgXH66xVrkK8riNnrVmWEg+COx084SloKQoxHlLVrZxjMKMiR9P7+3fLpI3jLp95Z4sBN06Hi
PbdzgOC3yMBnAB/JCer2ReeH06swRYEQjnO0ryCCSwor1oH7NcPCRVeZNRVTzj04JkpD2RHWcNhr
hZVgKrRmAP6UvKvNf3j892KB7FoC39BUZzvXThBnjKdjgaGM4RPES19kRmGPkvN8Egb0396Txnlr
eKkoHePdDcZmrDRxFW/TQinZcqPNhRIdt8rB+FsuJALX8CXM6KYOuEzQHkJbB/xNGUbP8OmONX1x
l6pnbvwVX0ZNmjmBYqx/iZZzXDA62muv5wARzjTYEEr/kTbQPmj5xvLMwdjBLkP/9i1kAhGfbjVw
HsXEEk8/RR/yKEMXxpfFIh4XD0YXWrNiTtTwc9gX/NPgSin/8HHfaKumUT5gsXi2kNWCIBBbtfhZ
xh7EaF9DNBr9TaifcFqXihodntWePuaQ1tPiDacNsnZuEww0OJDKyG6K/ydoUTXGBbQ3rW96GR6o
6l7rugdvqjY/UIJw+lDiSLQyMRcYgC4bmiYdQCBlCUDevPXaQweXRANJLG3BYct7hJy1jYGPM3HW
1J6nkLQ0Ii+v7Jje3s0SNcVzxeD0sbKfKI2mHPgdTKYtOdyzEABcXiCSreNRTxK1Kb2yt/vVXWc4
MIkjaRVFy95p3qpOM8qtSpzme2KrGBh6SOIjWzN6dshsPTpRjt+UHYjSlEU8CMI8iAVUSGMMgO/L
AMuwUWwNe6UdzKzjTQjTzXtjWpVdw74gse8x3Ea/6lEaXi25y4gmVnALXWozbziAqv12zKy1eYXw
P2rbU3evgis2Ufn5rIOeg19HHFvr8NzU9c7jeVd75LY/WEHipBXWmdRQDGQtsYvkofvRY+VydMPr
KtDAwvodidHwpkhexVGMe+Lbbb8i7miGiByz4RRKKghLRVqjuiSQ8ajcrAx1CdVUrNlrLg2CKz8Q
MdYcPqxaULzP4snmxmGCcDpnAPfUn5QkLfNeSma3XXNZ2kxTMCaPW/Imc0u0hXHj4rvbS2c1OUGg
Q3nVKjMy3+nOhuVd+zfFDT4Kg3nCp/oXXN6lSXuDHOs3Ch4Piag79YJZXMd/hQ3GQH3spLWrIpZq
RWVFlJTAelHSMciGlf1FAxPpiUfYV/xihZLcEsW5//G+z2W4Xm4CpPu0XuTvVLF56I1h6agvuPT5
+tYHgOFTlXaBb17dG3ctXJULSGMgaM9GYlBLPrgqgYdkiteldlRwLULxQR3lxxmq71PnsBUGRT0T
1AR1H/2XrVrJRcBZQwfX/xRJjIPqHTWo5k7vXV1LHPFOpYbDUfsIK0c3K4XBrfzFcLrrnTScip0f
Pd0O/Tr7t3pFEdNL1kLSL0O4AZxfxVQ4m2Ud9m2BLTdCf/7P849P/g+Wj3Mf78CReNvSsFC1nD7E
u3NPTEhxOvR3GYZjDB+v+MZAPAQAdaKGth9TGeNyiRER0CURlRpGV5fjJUjjotzYPzud233zRdcf
Oh1XnCtScOXt0KiHEilIny3yusqskaCWp083653bD+QNxH7VEbRLMeqNui3SagpHwgDUwBCure4q
TppY/+LFvTlZF/XoIfhu4JlPUPW/EkUqs7poc9b4V1FUi2z6kAKfKohCjyJ6w34un82VHLTiazb5
/pMIObA/G90gHHU7Q62Tl98N89XQivmnWJgT1MdaJmPgvxWRGPGMpt1pc7lO2YAaToYVrokue6uL
JZSdIc7GCyZcCP20SIpUnTBQ6ynTeQEdLHAJPi+FrAR+Bdh2rTdoLS+fy6PsdsRSsGSbXXWJqPA8
vHVhDLhBVWBKb/YNCQ6pz/LSC0Utgc/kLY+Z/T1lQng8/AyYhMnC3fr8rEmufu0TppaNpUu5N3yZ
b/jfiywySucdmY7jWg9JijGoWzkPu1FD90i3Pfys3Zdk2FKZ5W/darKgaHG3brn9DFeHA6tiiOAK
ltFd50MwDA59hSZ8ikz0M7XlafFpaz6J0LauAAdriEGmZXbo0rpOvbhL2fGD5HGrcLOH55YMoVKu
fprf1YFxY1oHhPBxsF9FUhhOV0HHBmXBStbBZqrcf4U7412D1oCISRMJv0EEHX133aDBjHZf9IiX
gHuRpZFcyAwO836rb6i2cKnEgJmBF2dehvy+rWAFEKYKKA7hENK2sGMJC9nGAg2LQ0ApXTNp/vZH
KvbgtfCdlAciGCySpwawcwO7Y6r8a9+rx5OmzmpruUvhPhKDV38kyag+QcSl+ett37XbBkjJA/wZ
ZmQAjlOIAVC8RJuU8pXWVu9ZGNX4fWSumvPriDpWmeMu5HyWNSz6RXV5v0UVRNaajCDW99QNUyZk
eYfJv2qLH3GGkhW4MW7CUcl7sXH4DVuI+vBj0DMiT9UNCqMj+HyBhLjdMYI6S3eMNS+99qtCmlWX
FhUK95+WI+DigPK/WNIrZanpKpdw7kOcpYp8pdrV9aE+VFHWvOUP2iHA3EiLzlK70ofQl9osKQk8
+lnUcycTv2Uh80rKsepmRhq58R0t1hx2RDw27zj0CaG8YsPuAKktM/DjsdS71YGVhHEzCNAR+BE3
ScJMrgfOTfnsWQHubPSy7G+Z0tmQc5ITSMKtsQaE3mlASfclBAPE78KSkleZJLaHwdqSyaI+Ing8
8etXGrbJYtUHDWZ9RpIlWO+l9GdQFlXw1uXCowvhAJOlZ4x/wNtt6Fo+HClUvmhlk1CaCLhqzOg7
oNPU365SB9Y2GMGykYNnnqjKOyIIMeHxDM1kduW/RSnJyMgEAqXZ+00vp//4osoi63DYt45llNyb
ucmZIipjF6NRaiqUvU9YRGcUfnynqDdoN35nMaGpqLrKea+Cv8DPWf5OS3ap6r6pmX6n8Xx7BAoQ
1snvgiJe1kIADIWgzAmJsfnObwn49uspcZMxYoV4V0I+uh4sYTdEc7ogIJMYddk/BpaQIo3F10tc
hTwaU/tKDK3Y+SMfibKtKePr6XspOwjDZucuttM4glA1RiHOPmkLkShQCi1R0mO3GJsYRcG3kSYJ
sM2hE1ksaorjeTskPENqmvbEX7qTjxaqr+NtJZZO0lbA+fkPz4401eKIND9+3sleYiLgBxjdkNMa
OKLD2bNtNLPiNYTqlTddZ/cRYqVC4SNAUNJjkUo48/h8cFrFIxQO2x0FxWq+Syrz/YPWbsLSNsUQ
Fbog4Y8/jKDRs7vs2lAN6bliZcokdS4XO88GFmmTCVF9EHA9OvZL90HLoC85eYoONi1UL7y4HDxt
VMv5+PMGGB5qXZlhmxAwHeCDa7H0xeDBLiZ5dQJz3sVqCJBZNXZVRbgp6KPEiv2y9P/X/yqbfdxB
Z/szm/Dtsy0MQLJSNfKpnbLfY046eTLK0B3mpXGEn/VpMtKP8wtVMOQtx61vxbXNokE4gXEESR2m
VZ1YooKtYPIU+DGqFSXfbCOa9YDmX7CWQhABTgNljZ1EJVLmHH9oiLM0r7ep9oIskHXJgGuYvNNO
PBNAezS6Ddbw41aKgbc1XkOFpyWZvrGG6Y3hvHLJ/Zi+Jv0xDKcnTgZuNsGzAGSpCu3DUaN3Wg1z
MACi5pzOm+REtlhiZ50ElZzw4YFCDTWzwlIFj+51ehFqYZNo+3rzN6R5NJ3k7eu+P/1U6gCH+Jq3
DS7bOcdPBzuBI98qk00r/8ZYZ6YeECtSb46Sj5nBTF3lmMEDPq9RB78N/ZnG2IjAf8wGVy8idDnB
Nb1YAwBWDCfzN8U5eOWfjVVPBNwdwmbIgptvohOyiJCrC71ZjpjCFAeGmSyvfa5EjaX+cai9DkUS
mwSU/SdtCh9GerY5UA3CwXn+TAWEf2x4cX3x9w45iRkFntHwfuYlbHUQBwuLEyu0k5ms/Fu07tBc
T3EVtYUQVGOmRKkj3TWRRkrrrphK0d3L90DbOWof6kNOWBjzb8j4xbb5wHzn8lY21/BsnJGm7mvM
G3V2XkOdHFBFykR7jbA8Q4X0Y86+snQAjGDkX2LaRS8pkuJziG1T3KpBXIihdqzJvjCa7AJQRTXU
wJ/l+OXkiAhN03apR5u1MapN+nQq2cVUY0JKvUgvZtIe2abjeaoHcGcWAXH5PAv3lDwC+Aj1wlEo
UwEKsOXwBZ10IyzzXTb+CDl0oidL76TCfh7oj9K6xiT+2s+rmIaqJw+IlTUrdZctxvlLCS/7PMCd
IYtUjSgrWkbMbI0a9T+k5CMQoO70LPGGTOFpEEx4yhaUMzAnbn405isUXjcf4XH3Od8dTOQF1SRk
jv63jLdqVpSLVNEuggakqWPo5ISfJsE20/pNvRkerO+9XoGL0ogxg5UhMfv/u12eWlpCrHa/MqHP
x4QDIGFSOFE76exMU9Ku8UH8bBEoQZ+8iTaujhFruJBpVYcV0oAqG8wH6ppCFhoz8byH2ERJnhfc
BqX1x0l8f1gy4GjhxM1ww1DWR1gNK0uSC3qQrYW6Zna4lSGEUc90NkXc5samMfTg2GrhiT4+EJRl
61WjOrb70lKfnf8aEmbmPETkpwCpIIclD3lNJpxubGO+Wr9/KgzvXIgQTw3ylEKy53Ja1xW1W4Wu
X1LM4xaMZD8oTvUsFqTvbkWnm88SObyRXnfjrbIgyYZPnfliHnjZYjuyWff+Anq45xAi3WGOCC6I
JMvSSOG4kHX5ym3Mxv7tb5YZPAbuN6PV9A9a6sTUvDQotKt0V6LaJK6fhxkemHLPApo0Gbw1YiSh
sDejPkB9b18auUYzCugZxeJrjaS906lpFLKOqS9DN5OTHFiTbkwl5FxRXl/SrjE4n15NnG5mIZb7
Ga0j2WKCCXWBzReCxfd7ZA9fjd47MD73pE7i7R4katAeVKAfNhixr22e+onTcZnz4A/tYdt9T2Qf
XnHAbVoueKDzITDtXbNOPKgTGeSJbDNo4F92/5NqdKzMOZ+UnOidi7F0t0fWL7C3u8qTa85sCq54
QOwabkyeMbMOi9OPigdav7ABK7BHFp1C7hSvNjawAuwUSNbwbINIybhKGzHFhjJwQ6TX/oqXuOFx
LOzWMNoKG0EYnRC+sdsd8vV4aEErNShaFohZWad01e0r2+FOgxw3tuhhQw4CicguELwKeLfqzLzZ
Bg4J4t73DjXlC8Zk51bTd1NpYVPMu22SI+tXZEaDELib7b+eDTBy/VBA7mdMfHjMeYq83HFnep9G
8KpZHO27J81vacyDI6dwPPBw1k+q3tlGCvRsRk+DMQDIJInfK/rvta8G8G8D4H0Oup8NmrWk07qv
q7CO9j5mHWk+dEkS0FL4XZMuZBqFTsOFvYAQVEucTvbiKQPVphhjnvLf3fDLO10LZBzDuRGpsFnO
OocVP+9j8F9C6Y7earKRSwNO3+J5GHBNzksW/UxHhxlO0DqGO0KxmcHCKQyv26ipN5vl0JwL2TSq
6pJ7clktU7fmRoTy7HwZOcFeuOc7D5vx9mcgCTjwk2D+bqdX6hGnYrD9TEeAXn7a7D2aG2Yaoik3
RxhIMfUsjTWrNO0hxbHtz2eVHvvUxjxq0MCWWKHKRtAtQjL2W4gPZD/gOm24cog1OC+MKNONbJNN
0BqN5F9c+NSUgLtQjidM8TTOh24nBBnfTM+TZLlT/EI5YLxsi9FjweOAALQck1NHEzzitqZu1beE
IN5lPq+f+k8bxOViRe1gf4eD0stShW498jQGHGiyLTJi6UQ2SUQ4Gma//oVaLHhVgnWYD/qis7J1
YqY/FNvsRUk0jdcRgCpZjREBftRsCoPbOgJ/S7UGys+Ns97pE6My76by8xvwloGlNtHd9XoFF1Il
tPYHkXeSLh7T4YXX45A3MsypPZo6bC0gdIyW4opf79qE2GHkd+HhP+7emejYqwPW74JaDUjpw81K
z+WCbbC+6t3lYnQt2dN4sn0jfA/vFymqJ2Y8O+MPhApqdYR4OgDTtVXpGwAavbN6EJyv41HnMecO
6qJF298d3YFYFeIk53OD1LFe+qQTY2qPU4LsuTQxMUjcgwuUSbJw76Vn0Tuu5+jIH/h7a4kJ0g4w
uyf2fYIn4HDR1laRxGCvqDlOK6UBgK68dql59a36tWvEsp0JzfrvAgWJ2EYxZFrelYMs3vubdvcL
n2OlV8g7wKGgq2uagKuBbHO+DuOduhhSeQPTJgSTJDhW0jbvKFvGSvw7dwPEroUJ1J7TWjHkKd86
58dj2tjiTohJ6rHOd3OWzqaoiTwEsAZcifBQ1EmexansjvS33rQQcLivQjpxXNb2jy1JLkHKV1v8
NVxBtCPMqK6I9RGjMDVdO4jh7Rvj8E1SSl3TtV/E6f3O7biTfoPTU+/l2WQLAO4ZIIbJtKiTaj+H
8HwGqq57epjDyWcVHp880xVm0ZElamw8Q+AhMozbJGa/zP7ybghaO9Ys+hHr0yXEr2hbcvJzereX
OPOxNeMEd6DNkyIR2q5gGUIClefJdnWOx3pu1MgW3Yay0IEUCi+50sHX6hy3XFALZMPsU9vwfvHA
/Wqo7WaSbG9VYc3QR4gVhRaFZhhtJcohkRCyqbNgt//XYwtYbXP6pWbiyRtdYZkNk7WO+zhUQqXF
UphspYiiLvb8FEE+OY9GoiXyhlaR7lkb2yzXGkYMdo8xIN8DukhchGz8keaZhavagIfn1iMqX897
b+3hH2EVcNt2s5WL4GJzmRMneVDYiaYMXBBqlpO7ZEyPOxx75nZqz4H/a6i8kkp4z9dTmOxEzFZY
cQ5GzaX/+DbZxOr/8KxjTwZumqGvZMb9EmYF+/nMkKvZJnLwfQA6bb31QmB9Hite0lCp4+1loExE
jBZ1nIpkY0VeJKGo1RDEJmkrpV2rCrVr5DiNpXYWgElF9zIM40rNdBMm3wHi2B973yxFtE8GD+Fo
arbpNOQLt2bv/Glr/Usn3MM77tEYCWLJx7iGDcpoDsUCJeNb7jlOLZmBJHjZnTxFmvk0kA+S3P2i
Q7xvlE6lCXTER0T40JdwkcKz7S/m1cHwZ0Y4pJifBjhjo9K6PEhQHbuCw0RUo6GsvFmbIeg2Fhfd
Rz9kNm2cI9eeyxDlBsBLz6KWI0Zxw7dSw6U7mav+gB/4qafyh5lBpf9b84GUoXQkYkKzbVansoUn
b9DqSmJFCuxZXmLbO01S3NimlTVRLl/zqf6Ra0/RbGVeY/za3H2RLr81VqRJT2vvMMjaee5TO34r
q/zL5JomVBxwkc7vsz+AjKD8Cnj0/bGBos2riGmeHdjAa7vyMa01wL/3GfSenL1y0GntuKsiyRPZ
DLMJrCyAXwph80VhpfqK5M2T4RqMGwjf4QFgeYm30EkAK2mr9FZv1RAMdRKzu22zrKGyAF2nswDV
/hnDi9hUTQtOM/AnYWgxNL7OLadQATl4qqaBoLRYgZbnwDOt97M3zQsr88jT91YA//5HTpQ0s5pX
LpM/jlRTDUxlGBcHaTYW5KgKjHRbYDlqN58JOvFPtEn7OhFmOve/YFRiQeAmuwlfiHqyJ5Rv+O30
ZMWXXHdAEb53YcMICLFyjOcKTmCnBSURVFCGMGZrxG1m7vdp5E4K3XenWW7rKEfVY2tOT0SN/JsJ
H6LUz8LygCwVwmkOd00nqPMMc2ShyHHGWi1F9BrU10Eyk4YIjbb/pnk2DErNiUuQkgHRF8axBI8J
QB1yrYsNS1WMi01eaNEk+HrbGTlMINvHUO8jojI8dfb6gA5kprDOc4brzGz29UWuKXnctPleioOc
1sYtpz4Tg0HOp8Ve4gEeoTjRsrk/rsQamqvUoPV1UdWd4CYYraJ06DSAvVrPaWckvSRoQaeMuTuE
EdaJzYGr605DBZpjkdCdK9BdN16aL+0zFiLoqrbkJmWsUVhn3CUSI4BQHrGRo0z3R5ZtQ7kAHijh
nkq30gJjGzJGlDkaVsQilZOGl8Zr1p8+e502gdkQrNxcennJ4P31T5qoTSJ9Yf1hUC3hXjCx3um7
wRKctQ6RJT6aRqs5QMvlUgLUPMUhvuxhIXdBik2TPlzULm/sPVBbPZ8OdNfNaQk8nj8OorrbC7Jd
7uinEl9OQViJVT/V7ACBDNe+lPNbgLeObM3sYsBF5DJwyxJCPD00Yagn7iAhnm6e++pZai7rycnI
LC5DNG8a9hYpEl7I8G1Tk3nL0gKXYcDeP7CT2cc0f5x6DXAOdCkvnAuZ3WqBTVV8Xu5B7g41nKNw
T8CJ57Fb160ALTUJurQubzb5c1oiWW7T5PQ9arPAhRj200HkIYCa5YQSM4fwnei6LfwyXXVyk4CR
1MMumUOU50YOI3PVPc4Me3aTh59SIpgbauZlOjhKzUKc/5TYiVYP5TqqjGbWkSXpVEn9/8tP6Xcg
blau9IvmU5ytYGiwSmb58P/xbLWvP+Hvp1I5yCflMdIJ90IVTWb3IeecBoMhSJRI23n+wyZ1yZ5i
MT3Vg9QjMHaKBPn8m7EMxS9Z5mYexN0deEVSOwKXenOSdZioWE0nFhzEKRW3GZpuGOSRzZuOkwbg
6AzcZfHwy3EFV2VbV8SgYO6EePVhSmGFw3Ws8XP+au3w8kq9l2caZniz7CH0FMvOJilzjHb6caWp
3xE8ie5JyP1W8Is3Wmo8FOlI7631IVI9eYU/IxnPp87lC4CgH7dP6+2t4viBQVNqnpeW4p5EFdf1
jVdSDmVl+Fxb0mhrNbaf3/JMj2oKIS9LbeAlwEEnbeAGQdIitY4kfI24m64jr4rJeIUJdeHkWS7j
E3KDu9OPWNlk+KYdY/+STpTdkhK35Q1M7t4WKESPgGcPucsHRhlT4p8gKDrOgWVEhFJw++Nlasvb
SB7CkY6xCYJ294XaP9hnISx7h6p1WBmSbaSPn1BQHtaQ0mXAa/2CRKQ2cAdh+twSBGpfJllxc2Nv
D/S6SZBouh8SxDW+WEazZfs/f4zYEksJn6orCiKqjXKalo2pwHqEie1rYUxwdEVraO4EBYBZDeQm
zPF7pXYT6SmWLs4w5m6zJmOW39DNo7sbe9LF7ngaxUEtcv9Zr4tb1VDxDfvLoNBswNy9qbItAM5B
MbjvyJn3fcHCDdms8u+EhWlw76kXdEsqa93wkwRhrRuK2Rxo+8Nch6i/f5CwfrLubn1yRikCemcj
73ob035p070QiSZ7hrM7nVgKPvqoqFahNUOirvXHWHYmkY/icm6JQUJBLuS/0LOiR2PDzpfnmPE4
DLKjyexDlDdgYwv9WW4XF2FcqjjCG3m2sLJLvtgVvhg6zYZtwIsrPaKgf3pzwzRlevxV5xUwX1fx
FtmZUvG72aSdr3LmUg264cxw1JwGqkUntTNo1UUUgUwxFQP85YnXd78WrT5W+dBs88JJWzMX9syB
Zw49x3Gph1sBXnlb+jtQEcR0KqTOpKjeGNQHHwCekczHp2X+22YFDKKIaP3gH3qVfCfKXiZpxcuo
FFAMQ36CMKAQjfMVrQMvm/0TIUEGXZWH4WTa4UQFSXSIabU6Rd5AaqIYrczWeQeUDxbwQyp/rgte
Q/Gj4zqCV1m1A6mhQ1JX9babP5YM9oCakf2qgomFP5qn6FjSGSB9zTgQL1Z6h1nnqByVUTKdNti1
hT/gL2HU1lvQIgboyw7KnS1nuAsavfvhWZ/zphmzZzVYYybKTDntGRkFe3aA+6mgQB9H9G5zZEzs
VscirexaTm+XsMH6DF5sDsod2kb4g1L2YYiGOisoLBNqPsY0xXgy0St0U5HSjZ7KO8vn7rve45Uw
rAXPF/5/dxkahj4hpKaZIZO72i9j/hq4Iaswh5jcqUgLsb31GcdQv/hRnEgxlKZkYIm6AvYDORLE
foao4NrunpyDDtGBko5wroqnc5dWXEOi9LjDlpD+xtzCMp6TxkhoOaSrzpFEDwc4LyPB36L8J7Vx
INibUw8f71keCydG5Ie+MZ1ny0wcBRD0ECMLx4rSg84BA+WCdXG4wP0sBa/XPFRhZDTDBXgypiIq
s87QRpJJydOzxfnxS7kqU4nfKg7f6BigMdptq+ObfeVk8Qb9Y+ZdwWe7EirCXjY7E/xULRQQmE0a
c3j69DzhPdtqhYYF8fMIoA00TkShOq2FYD6c36rcx6PPOpduXFaa8xnd4CDwuVr7JWV51QnsXcrm
Jgp09qDhq8NS9OI9KGfp4GU2dxq9sp6JeYcloeDEUVR+VVdGlBzaTT0BS/TEnIS2omzEnTtPABKB
gzeVJa1wbEhogNsBZJLgJXQ3wKsZdXg62OK5nMiJqnFxHVmHzkG+0QRHnZ+Ud4864un6M8auoYWS
q2fzpH/OE4MJiih3IFWsKKVNAI0nZUf9mgEGNmQhwrwt1SwlpGQ2TPgCZoIH8ok4H71xDAY4x8M2
0S30UNPSbpvGC/kzEfr7bgAG35C3uIVUAlHVVuDBNENT5e70SYcCUlJQHtI+4naUmMHaiaV9+RPN
v4GmvutL9qG1VuOYb7Crcv1ANexSqzo7pMzoAj5rkI2cdiXC3dCG9e2hQEIfgb2nIW11p7Do6hx/
w2XDGFS/cEZ05dqg/Xr9+LpkONwRRPNcK2B6tEgjeFbBgkPounL+gaRvgPYIWsSzX7KxED5fHAV8
G9KRbSXnC/83ltbLSbbEMwpaPNj6AhM+R+Gy7CAGRqzBdHQoxlyETgBgdO9HRj+dSrNn0uUp+DAg
DRtMbFmjpPVfasm5LqsVTvkflXVUzlh4IGQ9O50GfXATvQa97B80w2ZlbwiSUQw3UR2uMMWSi+hz
IGi+Ejn9Y2LpYKkLiKPvvAeaTbSgjpDn2pYu7QFLYoi/n0XIKwrOrkybiQ4sHL9ho5u3XtI8HKPl
W2ZbsCYHr/ZciCHATo7JyXXt4OBXhJxem5Jk2jx8U//j21HyMy6kh+OJRlwJFCpvMXtlv9NwMhWV
1eX71++iqCEIqZRNhbhQprF9S6QrAYFkB8vgWYCAtHtrGWkS2Nok8cnd3IvK/5761NBajxVs2QOf
lT8YDwpW4DO++O6Q5rktKkIw7ic2C2KU8OybX7uAa/hJDTbpLk/OC8v9e4ko5dwidmWdF6lqvnZ0
3nQHJTDDHpt4o9EKm/FHTUYSfRK6x9Cs61VuKh5xrhmQeJjVGgCk0yQKbE+x3sAFWZJfZ7Sq7J+b
nfBzMuuovXwmdzdmCFKtlPyPiIx9HQxV4zn+ER9VSIgV8LinhrQvF/kwaEL5v0WV6U+ArWnVwLOA
Hw2XgV5qXqtNdW69CyJmhQh7L6elLLCGtH4hy0nh0HeegiKzdGdEIjo87nJRZEW0SbgM+xmtE0R4
qpc08qLWKps4VkyIZ94cnp2oTpDpjG8ttPF9fav+gwRiSH7cAfv7VRGRO4cbMBJeBn9MiS7OCBsf
E1kvN3s7uUYJc2tg5ahhUvzF+8IyKcUIKivzG5HgFwMISTuKOS1rnMCIUsXAcHnL8QRo0u8Ss5SA
9aS5LgWqMURWejSAlF2DH6LpxQSoHetnyl2ML9Q2sujsHBysXRbtoaB+hZIoxefAkQ5xAgg4ZaVD
DvOAEpwx/h95tsKxJvPV29FJHM6L5z1y0SRNTHavcUSdraan5BMFldjhvwSESP/v9LSlgYVNfrzL
tQ2xxRssPeZXGlUtVEKyWrWdbsW9HJfMok7I2UWaZKOxlJPnd13fSC2ZvLlwc7o5SvVV663xfof+
HOG9SZybn+0eprFnqNPVhvX9Qy/OMCdXM6jIyy5ieU6ViuntLKXT4ni8N0De//7UfvJnbqctizyw
nPjm7QOQ7CKSlwZ0w3WuVWwIs1MiN6D4aonMtMizUfLMba8nSSgi517dXEOm65j/gi4hAadrzIp5
7o2mVquAZEG4EIMpSOgWCqN2/DchDSZZxAJGbZ/Bl+pOBjiVz/rk0c4EAOjKG29eUORoOqxrGKOf
ealODxtK/ChDn8Je6mQAci+z4xvbCkO76pgIzzHIFJfc5So5tyWZoou6jtShhYvsfsmrrDJNKqEs
SXGM8C3ZE+gUJsBibLqpjumISVyOs+EhNWYc+Gi3Vp5j0KzJ89b2VhPkm8RXOfyPK1kBak3btbho
Mp+m3QcPQjwz/rJaoSvmQuPtNWyrvhiL02YE+Hfet3JQ6/S4TA+CItzwAAHcT1nYI6FWpG/oP/fb
uvkfb9arjKx4aAb8bkF5pFpfLm1ZxSsk0fDqm9yZQysDCqIp3QXd5WT2G0dHMdrsKLmxp81DDM0O
zbcPDUFpFxotHTx8LojF3iJ+GhucVYCnrFSZdFAUROX9U7gWEaGxs3BoZmoawlaNrrAw3p+5P0Bp
ZZCLqxzKL+5T1SN0toDfrOQ1/jrmFrDFl4JweOTOrrqnGPRMta6LnVeNSDgNryLFtsc8wbLwIk/Z
CeMVDIrknoQx38xcOemc/aP63CHd7Nbmv4rDzprwQXTYy/U7/Cwyw0I+xgtwm0zcsdfU7pvJP7q0
KOGnmYksSPv0WVjS7pHuDCrB/rG9FxId8gF0U2UBRR+Hx6ft6kDscwzK/6gg7qNDflVTGiiXKg+X
+qS6lW3gSzfbFwywuZ5Hb0MF9oBI45XhBMF+uteIj5FlJazNoWIQqscyWyGKS6JeCflYu44cbhOn
GGdpPFPKNSndBnl52as7BitehLCgTpCNVcXz4sCkGstSjiMIRgEdfmUORVUzXtf1/wrUoWCTKWXd
K9WjAItaLPdpXSFe9FpK1R37kfGWYxT3/Sr5Cl67kyKk1HsPS437Jb0QOaNrGaYuIM2H+sz9B9SA
EJN7KVs9ajGImoBxOG+ijdJqax0UhTfRztBbwL1fpjl/I1EHF92qJ6zn8JmuirPMLVa+GvxwvHbk
SVgXM5qRElzy/i2e1uUwHePHE1sD7ZrgUxBn5wRUGzT4aTPoGyT0d9tkmSucqU4pVSSC2GopE9lO
eef3l6QlPP208ydwowirftfgmu09ToNiK6qow1oECKRy/yBirzbORrwzZ+jmLNPn2JEWRodkMdlk
9UQPQK8pd4hZ/COjYWvxLZJ1XIzo7sLGSv0Rpbodj3AkZXoGFFKO9TCP0VfW7ZWBJHiRlWD6cFhI
l+TIs/VVy80RjsIr9js8bTY+24CmH6BF/9DB8uugSjeLvm/KVEHSlZSrlI6y3hG11FHX8zMmvCvz
Nw33Ja/iI/c3TfdkNS0oO86t6/gkfb4ElbQLAWzkUv3jHe9XeD5uaCwgN0nsgaPllb2p1Evlbirt
n6E97yx4wZ4PgDNtdK1YUgKL2aY1IDRgnz5soVYr9+FVULe+0JjvMHAqnybaNF5X4VPywk7jltja
pdYgRpjgi/dbI49cxQa0/9FLSAcmBDqGEFHOw/KimCZWtBwjzU1yYH7/JCkcclEGoW0jGfA0ljg9
Aiu5WF8LYj5AqWavLa5LFsmYTf3Vcrji3ikXwkZi2RXD3Mh1VuGFJuOQO980e+3Eo+vnkFR5KmCo
T4lq9EJjBj3Lrun1psvbVcKDmLmiLcrPvIvU1PphBW/URc9Yg0KqppGMAjrXJOnFKR5rhjcB4CMv
0+e4NE4ckh/PQNrxSMh1SK3c6dEJs29TWza3sKWGthKGpQ/NVVKZzxKKE6O0mYmwzd0uoDM1evJV
SXMIJAqfaqLlrLu2IWi3eetcqnsZzRqrJWhQkE+unhBJBacXF5YNfPwTj0fTHZfPr/l+gFj/Nds5
7U71o9N2bywjkfST+QmXFoKjU35tDMf9oh+DiWbbRY/aR2/70oFQn5qH6BKKuONRyWXzXQuKiywH
i2Mq1C6MB8UbCSBgFGyDZ4/vRbFQfpOu0hqBIoMmOm6ikJsiyPnoZOAT00t+Q28DZ7xoUiJ9hcUi
BW1jgRwd4Wqy79i8gE9lka61jTjUgbKRcaaNXas9zLe0VZz84ITjj5ulGPL7yC/X8jtyCtgGp6lK
FtEyTe2e8XNxGGyA7zPmK2R6+jIElvxxDEQ458UC5Z9DCpZsSlvelhGhvDM3Y4lZ8ktt0r79It9u
jD9B3v+Z2gZfor+RuYZCnYt8th39YcaKDTbUNvqouycxrfiIDT0MyoUFl/RWMam6wuFibX5YbAUW
Xsgpy0GXEe00ail1WNZicaiBFSs8ISpl8nGZ7dfT9vdSDPxx7YeUQbGQgBuD7g+fYSHibL0CIFzd
juCBnwYfO0kwa0uK80VQHc+MU3kOtHXLpL82J2ObIMe6lwOFgD8UIjeE+SIdgjU0ptHQQqkNZlju
M/93rRrYLwatOvEBHQUZYk/OJKX07Ig3wFEFB2E/57QUP53ulj6Xnk9XS6as4mTQDF8iP+lgl6Pt
1pxHU4J602CLY4HCOBZ00FSH29mMBIdTqgOut3U1IIDrCmVDoVCw10eZdEJai1KMf8lbsizRNkTE
23tTSE9JzdHRF2pWO5ZqbMJgizeTgvw0e/2iO6ugBhyafjzsjmKW/kkdNgxkstugOYq1iz0uq4M7
FJOpkYq1pt5ffzkEoPNGfPlpgNH9C/otylhhONMPpz4g+8KZvBjfk//6q6YWVlgpu/2PT1kyLUvq
SJyCrmiL1uSl52fTod5WUP5dz++gA11qd2RFIz24RpQCtSdPbA87uyBXmcNiEm6QVifjvfHHkzPK
sSxHsw1qDXkCF5DDLb4T2ye8Qn3dHp8uOS9pDclrV7BvjrU8OCeN0qTnbknMnt+0Luu2auVgWJEV
osddi8YITKXZtG/50jOp/GdaPkPVBU8Bcgh5QMQcJ9dAr4MZZMhP+x3KLv33fAfc/qLS48tKLwPC
ENgZaytgPZaZWkxqogPxk8QVus3b3egC2WRK2oUvoaRTJ7MPxkx0EKwGo5YtpqkBqOypRrrASZuw
X7oe9x30QWE2bfLNEHiPV1EWBS+h1a3MK6UTKOmtk3ceCf5NFE2QgU8kwERL6Vr0lf3DMNK6HbAO
pdkWZK0aRt0vTWlCLgngS9nwlSsFYa06iMomsGdJVmaOENaNA8nuwhzzYVKOXJ2tmJo+gIfz0wRJ
uyt+mfeF1sK/3ndFw+n1IdRV48IgnGYMMk7Or2oQeu68yGiE6yQhteIyqvm5Cx5WBsZss+sXuPR2
KljBQPgAwwvJBW0+v2quPnL5qz/JetsTlQkShZ9iSkg/f9IEtOq80zqJPm4/FOSnPnJ9yp6tf5qd
3ijxPPuPK1Rnrw+/fjZvEZ5VoMYMxTBvHBqX2/ABwOKsF17aLF+UyLZDkFs1hhrqxw1ESu3G30fz
4J8shNu6RoOgPPE0aCkTjZXjeVUNr5o4hqlCOT7zMtuw+w7vkAY+KEoUW6XuaT/e1+n5rzwYTQ1H
lVG6PaqabImMMmrI3xWH4kzXIHXTLwKW5Bnl+TgRp2y3t91i8FQPZ8fWNi+FBuiiAd1OoqiHDzaf
PfjXGF6Zcdi22G2qn113tRaLrKvu7icqKtalvej+zkmnJ9cwjA94KR12N0DPkgNpKaeavkTcuQ4V
6Wz9xHUTCbh9MInCQceyqrVDAuK1v0AbHhn/gQz+zKu7EBzWKK/KWYSVYRwP88s3qIOZz9VIujV6
oTWARVQV+ZrbVPfgI+ANnopVrj/gsVt19gmh1KHb5+iRwwVqdoyl9MEHVsRbjo0c9yen3K6mjvcE
LNKOx2t/FI/AFTBptlORonb5f3UfxM/udlyUQspnF20B7jwjpYxl0r1MpoFd2vwv2BDAs0hxsnH0
hVpDbuQeD1wu9qTbkWJbprDZy4OgBFUbxaoRNiYiC3/eIWACNPPoY6201dKgNTiTqYTimk5abfEJ
gVKwhwOYqHfrHRhF55C0MaGrlc7A3yF17wc2ApXkhO3LV7uPbmBlrKYEYKghDwu+c5Q5pvHh2hRO
f8RcD4r76nnVW7UNs8GKKxycnT4Fagypiu+fvfrln2z+Xk5/Tm/iaQYbvIQekBVE5oyQp02d3zTo
LLrTgR1V8sMJCdCfrRgp5HKkposC2fo9hsg/5MJJMRkZJ3uHeHRVYa5hrvX4Wo12eIcE3qnUVb0R
U7JfESO5AYaN53dBZOkF80HM8F92hcvDyGCpfwNEhPM/nIiXy5LGQIn9Mx08qmi93QXj48hU/gnU
8w3GDHRvM/xPrjJ4FfpvYSFCNXrDWKcpXoaFm+QznQlla6vlFecnF8nh+0bSOe1Fd+hHsyY8sKf0
GgVP6+MjNlgc+VIqsw4mj4z/5MtpY3NnPSAvlb/0W7ymEKMEHBcmXAf2LRt1cIxn1d60V+7bQ06j
l3RskZIFsmw4HdnJ3PtyNbztTRmiyeMDuL0OEJ1t4uys2b54HxLGC3p58tZo1YaLi6jFZElpmIqJ
c4fV1VGkGKMR14SY43UpjamHAHC5Pra98ezFS59NgS5hYsiHOdwztZuAXGTLna24xTr14dIkzcU7
L69i5cWUDLocmPAL65a4HUPCmSNxNg4dhMgBkVjsDDhC01HEqDd7pVIhYCpv4eJ5PU1o8vF4jfm/
RZ7L4b7yVlcmyooG/Nnp0ZWb2yhJ3WEEyEKALxwMTYCvJxb0G/StJUyOwvHeF+WzNVx1VNW5D7xN
Ar35IEP6bQGJVhxzUfvIL3NZeMPA2DYhLN2DIHTU5EPEkvqPCNxjQNrT3dHB6zdz4mcYeeYIgasw
eAp4EHkd98ojAxLY0Urjbr9aiT5qoLDL30/XGVoc5RtNAF6DSpu6FX6bLqU6mZiVYrU3TT7ovo64
KoGCn2laKB8csVYBvmXE4nbNlsOlscJeDEFgJWJIIi2R7f3CnlrAKNGGo2s8WmSc127WNYXaFQUc
UBYkp6M8FxgV0J/Lp215aNZzItVCsVpGhiTK/DT/JJkRIVxiDIFcyI9MKwasEWRQhQIh5IM8OGT/
7XjVJx2M4koq9Sib+rASvLcQVtNTf4xSGFk3s5FSAVoRxec9NjYkui+3fHS4wYh8ZISSi6xcN36J
rsAFF48xSq+nAN80lFQ/4nZEWuf+x7H8z3UIdc5WfiekVptzVNiH0IzCLf2bwEAU2NVbyWzZ24hD
w8WIGzN200CGH7puzFzxGTRAYYzrZ2TrdLj7Gq38PrRNSMYJZCXpqSV+L9LRahzunhmhqwiNfy0M
uyI4mUv7rjp09XuWsBiO288H9S4vXGqJ+BRXxNX5alhDcV/5dWeCcWAd0TuqLZeNsWlBmYeFibFl
O8W4bFKqccizBzbeMl+FlRAIlg8i2qk+rgoXIpjuNkaBG3AzOuUynl6WQm3esJhrrlAvzFYaPVXa
54mi0tQzSLmP7Bl7wbbQFjx5NXWYgmRx1djYacJ46q2wfZyr0kpFZl39oD98houxjCRDZmqZAFRq
CdL9kXi9Ku24xON0H5SJxW6lqalwd4ifZRpSeEOFaQbhWu5QlMQErprHMYMTh/wUrxdb0WKYf/q8
Z8bXpSU4RzwcL+CU+BOVjA9vpSKjsgl4so6U130x1keZakdJOCAsQL+t+LS6g2UD5My/kmPFcjer
hezSe+7yaD2ZSO3Ll71fqZpzmKGfYsUq9osR9r2HHTf7MVVXpxrG8Zthlkjzjad0dZ7fa3zEM/R4
7RWRXtYY9LvCF4hkrI8ZNwxn2j+mMkKQWjeKqyKuhBkldI0JqPOpQmXo/PYjmM2d0SEsq9k82K0j
ZKcjZ4f8mZpEiI2foqWuBYjaa0dIWlu6NICakSNcCvo6+FgWrJal3TPg4HR84bTKKu18Ey1DXWMK
hZRV2kdjNq9Is70GhS+WN6nYatQWosjOZqrwBXbq2cnHj1MJa6zk5DX65vUeehkOd34eVN5d81oG
dziIEe/7PzKAGAQppGaQfjt+gQF9Z/rt29vQQZeN6u3BLf6x9+91RfOAgD+a3pmAuKN55cJDq6Za
VcFL9NKZMnMgUHApAzqIkQRuIWbod+jYKXeOUirFh1FSHuA8AtNX05Scff6vZXRvHa+rAGmbmk2l
coh7DhsDByreJmOGhnKerpka8Gl326nMQ8/NxqjBSjrGs1dC5BaMxhRMejIswhSJdqKk7bEhXCer
Wwz9ThmCWSNuxbscFB4HBSI5sMVhlqjh+Z5OwwPWNCRQOeFW8vGcY7ItOheYbbfNSEnuCz03RnjD
1Voxl2H28fjSpHJaVJDCpRJE+z+5AIPJKbO4U4I2tzB8hdn7mycv64FThWw1c8Pjf1Ylcytqd3V/
xHG9EfvV9UTsvO7kVkdqNpOH5a0JxI8A93W/w4Nhkn7R8oCFEM3XZ5KtwYj5w8vWQR5iaFaGU19C
c6hC9ZdxMHYkPYYhnmwevxqaGY4XfIIM2zBYCYxu3UJ47Rjxe4bFDUZUuV/bjk0K8JtSGK69Ry91
QkU2YrO65DR8w3JeKhuTizjjwNZ3vn11VSQYad8BPdntfKrM2BQ8tHrMBB8s47QJnYIcOQnEZ3bC
yZr0heloXfZvm3oIuB9XL94ZeH301o7Pnms2RHGie98R/LpDyCWfjIMzcxwJNAXnW4sr7ILYyF64
tCHVwrhvSzR+2WmkviqHFnrWgI8Hk7c27Br+4xLiQ3yceCEzZcpfeO11j9OCVp+tD1rqzRJ5pXdz
dDGAErjxDNumje3eTjB2HYsAAPqwbAEr5P2qKdqSSwt6O5KTKORID8B5FCE2yjxAHACDy//Lj71L
Yw5b8ZkTFHXb2pnyPNtVe1fu8E6k729Jb9va2Dn68DVeRFkiqRa4sSnCyHMOUpQq6Qd3VKvD/s5S
m1scGWgBRmG7qfAW0RtnST/SsinkJZRnazXM4OCDk0YZ+zDVX8kU7nt93dvGRjD6jx2Hc4mVIdWI
X3T5sFIT+lXr6BezfpEN6U6aBtyGKdvgbJMLcPylaeFLhokpgiFM+WT3NSmIFILfGxx+GuMNxD4J
b+12kPYpkDQ/zvdZYKkRc6b2BPfKvV8E2guGr+6irj0fw4qsfTlNhDjKzhxFG7o9KP5st/Ze4tW9
0xfgr4YV2+CMbrqaAL2KtiCltm7GWlGTNyQNIsO2CvqKX113rZ4olpmeFmpSJPJ0ZbkNzNzjh271
knpIrbXXR3Pz8551wr96IjcfvfSQdMVto9nms12NnQNRwazC4jbzzfngQoxdhcoRVNubj4G4AXPg
rUWFsJ8Ebs5bv2M3md7zchSWVF+qkejVRhswVjJuf886/7hwDtDuj2F8PVdESDrrc7Utv4Xu3hQ2
xak5rGTwXem2IqQOIZUSwg4ACKoYC0DrSpcqasWoiHYCscktY2FP0Sr7cxMzQ+Q9YSttMrBkaQN9
Smk8Zn5744EHRvUHv4rmpq63FZwfp1tBQnj1LFvPaibpTxaufoSg+rDU/W5L4Eth3vbrHRel8a8v
HPdaIpKMe/xt0Sp+QGSETQN91vtko/t/M4f76jE/qDRC6qYKK+cBqlzRoL1K8AV8xMRkZI5V65DG
/q9a5b2VFhsagplqiQTNNfJCjBElSbqBcMubpKWeq6UCjqOVXlzjPeru5zTqQo2yfiR3k+NsZg3k
dEJfLS648qHaT7TZkTuE/J+36nMRtHAVtSWhBgjvpQ3brvDv4KFnM6SizRNoHCTSqXtylroj4NX+
QVImJAQ/2mKsUXJ3cGMPN5NJfq5hEVyr6sOCjmbH8TF2X9YIQTmuQn+JSnLqtCz/D4B80iRCu7aH
57LY6lyHOYXwh+cW+TuOXgBPeFcFRD8qyA9RqZFJAg0f4sRq2fo/U/72Hpwq7Tw7NMZbfAuMGw6M
g/nXW4kSwqbgxMTZ++uD9QlCaeQyd4YSG7o4QoWvnyJrX8Khs4ykZ32eDGg55jvEHRI9kDWCByX3
dgxzVW4hV3o1Uzwb/uoPF2jAWswUokR3B0vcrTbkQ9zpJ2d43PAyTriJx0MwXvcSp0MS8dTCTt6d
DDbwGC4I6iOgJOLLw2gsdymbysYhX6o4jFUwYdhuCwwOJmIHug5pu8hGP9+Bx4SBjtQr9OaltDVr
qYdle5FkwEWGL/bIMWkycNy9ryOj2l7Jh0oK/Mqi4JrVqhMvvmC255d87RINnJuV0nQRS7wVqVA7
43rfZqjK9OQnheLpk2DhIbpy1mT/XbUnuOkxuTqjKrtnaPlDeW+stGZUutM5/8oBULsiFoRwCYH0
FKJ8k5E2JhjABp2ii4RPW2jfGGSwEF/UEd6K7GzIJb/CHa2NejZ4eCumMeQ4pfrWodCUuhUHwqEE
YdjfwYUkfs1j7n/nRl8gZNrx/3DSWE3CSlSreYohM2ko+JfF14lyn2alGo6XPHBEkSEp/pdLa7SR
nxGgRiIcNmuRs82MILh6N47qpehtkq7TZ9bBh4NuVnMAYFvHUdobu7kiycVRnxCSf13y2WEMmnIp
8gUzsrGJ34dk344gAufzapt1gTQndPHIDDScMs5Y39+8+NacjcaMd1V9f9pYTvIdNBzCES5mHYAL
rfsvcKg3kpJerFgx/Iuulx5XXUDd2JcJ6P8shgODcdOWAv5GvIpcFQqi2HoOpTtuWRd8GDqbjlnk
2G6qimr71EoPvTzIufPeOlAOZlHlncj83iEqF9m6rrHd0P3n9v1P0ftIzO9OSNMLolFM5qvV5LvP
+crN2OCTcscRXxcyEzOSo99G8poTXWoDp1kzMIp55EBzCFhOfUI7rK9ocKgCepCqnjZM/v49Lnh9
YLeLchseEY/guioNgaPLAbabUhwz8yaAY3mdChtTd8myN24EZVluUNGKRqrHQh0KEE9TN0EyqRFO
ofocQbDnNSqQ2leB3UHswbNdwRKQFdwy/SpvWbNCcNNhp8DeDK9LTdXLCIq29B0bARJQZubk+vnY
PX5fPqtdC+iXT2/l5TGdjic6xxPnJwuxRAhTpzmqmVhyrxILjmuxdowk+tEnbQdgqqtHPQ15/cnT
5GtgfZKna6e8YCfXrse9F6hQiUoViLvwXnXeJIe16mIZTclJNKfEq1TJyYqI5s1zSy3AhSDQxg1D
jLRTySd2d05mftGWyN+HpHyphopwP4QoFxJ/7hjq1yW5SDJTWIMjOpZeVTIbkia3S0kaob3iHL10
mxyMEre3ZSDIUxe1HUou9K1NPXkPA+dveL1JJtI3ABmbYp4gpAqEBqcpF5QYZPvQZid0LR8GKhTh
T1xkrFXGBCTN3SS9E0pMw3ohpFuE2WU2rm2RoDp1neTu+2XCoTn8Babp92uNn2CoJ/7C4v9+Ad78
iCxiQcci3eQo5PJmx7m9y5m3OjzHK60S1eeA4gwiJqDv9ADCYDhMFGmcBskg8Df48PH0yxVcawW4
WYQUq2elfCVi8MjyXjk4wkUd1Xy/SXyUFnej10onEmXCdmrttVEIMrxW2MhYcFp2Qfb4tRIzcPg/
QOdcHF6tLDzPcZ/zwFVdfaxrAQkFEfZNsCEkNMb1pqHZSU9CecXRV29ltYnxVCtmAh2gs3tetQZe
TvElUDH4NIBqOjgyyD1n0nVQwtgblpJodvAcALC8RnUjAfauCl6iRhEbuzDeaYVn+KHHx4zZDQjY
Xc2sXh4HAsL4Dn53qvh5ZMaIWT3y+d/4bZKWaHBUnyNcY8KP3a5GBfKTx7BTjEgar7LoLNt7LeDJ
BO1mlAwZsD7p8ELeUciySj7b8idbEZP31zhroNXJAo6KpE12Ttl8DgzmONdblmO6oCHMtA5YtqQo
du/LhdTIapu/Tj9yH84CUCkDwJs/Fzi0hQAFxOP46eEwECBAt6bn2pklbVQXAQESsSly+IQSvlvy
Hb5DuzJOeGCkRhqqraV3EAmcreoqvLg7OZge8pg71UjG7g7Fb7G6BsgTMP4lHZnPuGfQns9zY48N
40NDQObe4DSf515kkyECk7rBt6ixSQeI2fl+P+P/8ol9NiV517So5A8luRFmu1MPBVCzv76BU3eJ
oAPa2tchlf6JmjwnjKsRMfui87UOEPLkPlQwLk6Lc/wGd/4KwjuXR/5TOjBsKgzS8eEUACyPwobZ
wl2Q2B+cC7cCrY2C4x4jBIjeLaUyCjuRP7WTPJYYg9dnpvJxYCn/fpXc0NDeAT340uIUVPjKJUtk
jwpzEY0IY4NMPGHJz6NNeTz3B0a4QtGdEwiaTMFlwtBui0lirWM9JOjKIxdRqt9ES1ovOh+NMQ3h
CKdpfD+2fjCRw5KdEQeoQlcV+vY2CyIBw51suKJtiYB4RNrQ+gDb6NjwqPNYatG/OFcFwCyzK/Jb
ironEXlInm6bJz8IvZsTzF9anwMocYoq0fU8zZ7PBXx/C6VhL4Rwm7F/K216BHTZUMypdBaKpN4m
nwfPq2b6vNHDQfCGilyTv4ixWufpjQEIJolORdD/bRqZUqern8mg3NvfghkM1cX41Ki+t+OA3Mc8
smomejXrxZJL+wWsY+d/MlxQfD++TAh8hveluG64CSCm3/4K2FLKczZMsE/SWAzYqko+LK9bNiqp
Rtr2T5TP0ZRbRpwv5psnkPC+B/dp44GAfvE4H+cj/pgyyXE5hLM9tdq6XmhraadCsFI7WPageCua
IbazgQhJdUZT81MR+8Ub8So4k8CTiBfMD8UkrkbiU+ocl32YZmyZGn6s43xYX9vgukNxciP0PhQn
2mEiaDwwHEJGDSLLPueI+SDxa6RTsZ3IbIvRoNCz4ZaWpiYndbEZqA4rbSLBOmB3aLurDGa8lfO9
kqY+ZJHnNAaZFgqUCwI0ekC8oz2w87WYdwpOtnIFb3j9Ww82VJgPrMIQZRZUPxGLuFAHJGyQFET2
OQGljgeDjG1twPmGbAb0lxDAX0Mls9oh7rXNV5+hiqpOUakVsRy5g/H/NhGhgaDxD6nNr2TY7W9O
2gqznsPBurezunJwZOWPhGW+ycbjwDrGx8JJhCx3tKZZnSFOy4bLYwV+9Ht/Dl7c0tD6dv3SgFE6
D5jdqHudeqjg0cH9akrX7Hbbw/u1wBjH62AygydH/Ju/LP9Eu2qty2DH8hqCskD3a4Fm4VRKkO4A
U5QJC5A3xHRanOib/TOp/NQjwhQ+zag+jkU1ZJIZX1p6m1K+9ILZ8xVFuyw+zvTu42wrQr/1vzCv
8rhAUCil4tfg671o3MHI1J2yqonlGAyYRjKtjc2Q8capJYxRBLI9zRjxNsLY55YhgNMKkRVkAJPg
YAGQWVWe8tLO439Oh3amKUq12Dlf03JGIDNnULtlH9tUxo3nkEPaRgNyY4N7S7etgVe5rStP2pg2
S/eacQl0RIbkvoYcQ006+VeX7pZRNM/UnNoQ487oYBv2KfeAsk8ZL8MHDyxnb4Ai3OPQVC9sT0Ss
nxs+0gJ2qK5ew/dTAdrwQH4kTKeM1H1ygqX7Veyh4KgVBgYUMFJdkjqj87AuPe77tOVflTaRMhNc
2tEmRrh0kaeUt0Kk3MRahvrHQ0NfcK0GtFAQlp9//e0EAFxp30ajTJi3kP60wwwp/CkeKuE1ACkI
rcqI8uI+N2DyEI1VwXcSOS2ZDG5ukE+RbWWQ1gNwhiWQQ3wFlO4NLV71Itx4R3aPc+HXxSdrEZO9
FKV7EdimuXmDL24lsMq463qtRiumov2qcuRizmOg4GV24p7LSQ7xc6GEVqa88Jd9KAVZnPNCZelM
Wh/5S9aKSZpG8bYq7vMHB9QzSGwLl4grtHG2tdCgBY+7OkV26rLCccDHBXxLZ0o0ayoh/XXBFK0c
MJkYQMxDUltFgVjdbU3/XU8pFZqVHy/WcAsa3zaq8dy+wgHL16HEF9t4vVKUeTBCNxL1wejQUiw5
46u3a7a0MYWJuxUdEcf7WnoLBBPIMo4WuRs6/zRQBu2qgDdPUiPtF7vkSf8Ev10EMTiUacCvOfc1
G62Lm3/rkw9BfzWFW95iH0b/zLcD6zUNaqhe4sEm153WQMXRq56gBw1K3UIe0rz1QBx1gXJwuvKR
LYC5pL54cRP+u3Em/uWNMtFOPSBl8ajAMm7WVK4Sg5RpCUYk2yXSXLv2tlnPtb8Drto4WahBphIB
jWd6CsCFAcrMZdDs7drHRjeHd5tsliFh9c6i9ZIUU0scbDZM7lr5r0o4F0Fj3WOjP7rHXu9/Ocv6
z0yf0vECdeRbc73+bfA3SMrNw84ID87OXVGAryUpI+p+PfyqNxIESbK0qOqER5JDI48LfHuxzFu4
wyQ0WhssAXDAmrqWB0cSDxJM3Ei1UtynBNcvuCoDx7Td/F8VnGDlJLQYnJ7fStV+YWDSb9v/Rbzg
Y6ZhwLJJtawdknIUk3W3sVvNhzbtzKNKW8Dxn/PP7ToKRH8xBBmv2KOr7ZurUI/yY947TCos+CU9
hrX/dRO4sLzUMyWNZZ2iZZH2GniPr01KEdTscBEnZ2C9nJRi8t8jw0FzbpOMEqDaa1S6MyHT1CgH
3lMYLlky91TWVHCL6B62i/BylZnKMaLIc0pG5G8XM8W2dajvDF3hlj/d9k8s97uLtrwexla/TkA4
+r8hTFdLjNKslrCf4hXmc402n/JIPM1Rtu62wsIE1RN4ns6ZOJA8wI06dtYqbBEkCD6rcnyEExal
PztUPTfq9BiM7MR3tetq7s2o7ScnAp+08TrEfvBJrqkHt0m4RGMgFpAboOm/t4oNk0YRj2VaxkX3
SKIcweN7XIIinFuc6PC5iQOk95MFfcd0yJk63f8urLkUPv/7xXtMuGeWK+XuSfSPBRHyGOph5hg8
ZHnPqkmLEj/HI3pGtjjUr1LhLP+gguVeGK2ahS3ptY6CNTRlnfNP68Fa5CIEqHh62wkbGslo/9O3
jqNdYeNupL6Rt4yrxMXgLgTGnXs/1hvTWAq1lMSfzVycrAPSTKC03q7pvohn9fnUrpDcT1p62tky
38ftQ2xjJYHfovpnSVQ3XDAoyn/IREhT5gOZ7WRwdtqy6vpZDNI+pq8zVTcnb3VLtqmnVSLGL6+6
z0QrBaOBVRdXkpnKvMqWjoHhQXB39dEEyGY7hsXsFOJMFVEkCnC6dNEcM2YZfMuJYC/kd5aruW6J
E4KN4xkNHtc2STeMq/TjO3w9s3aH0FKe5g1GnMX4IxMGU5IDfEx7E757xnykiZXC/y1giVSztCWo
0nGvnxfHb1HPrAkcdD+5T0iqBbImdnlXuZE2LXhWXcYkG+kEwNb9R9AXmSOm7xXhnRweWbg0sSh/
CVniaixjH2E/ngmbZkZS6c/mZ+Cf2+pWqqUQ4QfB+C/UZtIibEw0zzybxxHHsfaz8b6ma5EIGAzS
z+g8JVDwhtDSmRhu1rfzftEGQnzjTzeS3CD4Nqwli3WP4woMwDtZe435CqBsHs2QEoHDpF/9bh+E
2hVYc1ORF6s+NZB84yzfKzGvwDp6YEQVFy/XDBRbOmP18WRhwJZ2GQG7uJ/oRmzp0VKypGfHyVgR
7OkNlHjmmKtGNtc35BvglOSLGFnEkhKTmKm9wUFuIPUJdmF8iL8U9Es7GFM4Be9j2B64qXrsORhE
l0WGXuG2QPZOKrZoLk8850pKw6KvlGxCJW6ZI2CgNJOxqbWkMrxCooQ71EOPiaH4JZuwhJcH4T+V
0nyoNqcBgke8eLGi108fuHL8tZZeI+cvLqmCsywHE9iK+KsOBBCUauiBSh635hmwLcPimksj1gVj
vzRQeDQrDFxcF3/IJG8TzFU5pr1Cr8si+XOiTqIcPW1nPps80MIW1MYDfKqLUW5zfRQzQofcwmGj
DWnUq7J41R2JfAxIjrsLIQXA00sawrhLE1Nrr05aQz7YN8S0kyYgYlMzW290FU7HM6lhbdEXVQ6t
oz+LwitMt8714kTtMqFwlOmyY4a4KhHgpKeX3bKDrBNAo8ziLOa4Vr/AOtmlMCZm8+fpm7NKuIdU
Ysrt40dPBPwxeCijqQxu8KE/FP5iP4kBBQR/qVMGhaOciaXYs9z4GgESTIwMW8pxLJe8+cMExf9X
4/d3vJAoEIbG8PWEo8PgxS04udRQPcKLEz0yw5Y5yZtLsn/n/UtqlXjv7SXPJjCx8SGJWa2ddOzs
6lWzQzd5WY+P8Z7erh2uD/prDdCOwtfiusuPEar+HWW35TZzzZmjc7lqtwlzUOA+TaOFSy32NTDC
jbHCth0z80/gn4lem7u9Eded3+zAnsU0RYZelPABYVifBCPnbZ1V3Ga3dXuEL0IIPxhN487FU5vg
35Sud/u8CD/rX/jbIyq+Taaac+pa/K8b8z+BENnGG3l+t38QPym2AlUPc2cIGHM3tHi7Ggao1I1o
2ZON+sgQio60UQmiBiGk20yh6XMGRsPV+hluqktmdZoUohL3NqXuipmgNTpswgx2ewl/s1WcPukN
V8guft0MxWWjepx5/MZ18goJEDofAJ5wg3VxJyYz2EONBjEeJrICd+I3X8fB+UkN0CUdthcVXp6W
OUdxMpnHLgrxniTStIfSd2pBdzWHFQcy/a5TtpuIe0UzgjrbmnPZskWv/2IfdzMbTcY6/B+uZMsW
qyw9MDxTCHUINLCKLXwtcx0bxHX0NSeBSHOB476Zw7UKbzJe7WQpSOTek7it6edt88njcOpUMXAv
w9zY/kt07UuB0dghuigLQwv0zbAVSyjtAoBDf9ShMHdi7Slr4nYWkJbxf9X85uTClVo6aSk0IMWR
xCcBaA/B0sGzopP+/iBclwQRIps6dfx2T/aiSGQboKpet+vLiJSz/G8SNcDgL8gVtIXDREa6jSF2
05WZ4xRa2HRjmM+/DxA3Lfxp5hRsRNUHRqIK4+soNArpALBVbVtgZI0zW+tDQKMa5sIbDx7KAmj6
uIm7pEYNjxmkmM7TOF7PJhBB4rYF9Fgh5aYGNT9Coni/9XJ72UyALyZmR+bjTmM1E5uAJopxYQJw
sdcWRCsa15S5pXhfAuP5CMdhw/s9sjyrT9q/mGvf5XdTVH/EK1gtEOlZlbLC9QAWzne0LPKKGL05
0UMJLHWEnw8CgyqUgm19WHwxsFZXp39LaPhBQdbAQHtbXTfyV6sG5mSfgdiaw+7Inm9E+iSVhAyI
cKR/DSBL7TZtV2D3wgVf6BJrSfg5GFL1s6OcaQq9HUr7R3uImkOSQBIkk0BzsLhjWzCJMLzUyLKI
4YlkuA35MT42tizn5R1zCURk8Mk+PQjkvPYnHzacUA1UaYM9qkE0gi2RdcD8D259j62BQR/+huqc
G6HxiOkT7gM5n6GG5Z4xVTKLW4FQggBPlMUMxkL9TXa5kqepwZQPwYdahgYV9hKsmEwpxysk34H3
kaBnvGj5KKxFGOJS12BiK2Bt6mEFxMwgCmGfYz6ruieakHJncdaeXWbPwkkPKxhkQDL3KzpLQML0
hh1adZvxS6JEeAkh+PxIorlpqolvc8SZgeJOspiQlmg89IzifNOpDdwtgNUnp24DV0ewXysbWA99
Q665UENBTuC2uuIr/H9ttMOkwRUcp0l+wEaU/Z7ABX+nIs0iXHcXNrFJyryoRUTmXqPVmY+4HT87
IKSs0AzRzAflbFJ6c1C3vvGDI5jYbSmuxi+l59XaZ2yqVeqVT+Yyre56yT+ZuHtJzfSKcAfqvqLa
uReweTUOBSYr2NOiteZNIQJ2/3KC86QTJ6U5peoF/I13yiEk9PNsGqu+oZOYUd4oqcEDkOhc3A7J
f3QOyUWdKMLCSOQdFyBtYsmDk1xn7kMss+BzsORr1tWsT5kqF1NGaCnSgcT/3oi6mQHCTdHmb/aC
HI3Zu+LHKNWmVcZP/3q5XOfSUFwhdchsg0iWQc4UvW95zK48R0wKgKpq97vKJJYEdZjPEjErAjZ+
AxEFHgLmeq9IwiylXONFyTRvgAzgTSIHZOsvWvgH2x8v6pumplVGAtAL5sxbUp/fRK19uWiXAqwB
zneWqQJ3AcCVWq3UVY/TFDqORpjsZPZZwlUzmwK2hMfDvrhYnZ9ghRJkwPdfC12CzK2hA9at7MxX
nmXfK10YyGzXWD8RO6x9glUHfQFrJa6LMG7sJOhQQCfo9GSv/qlzOF66gtuTjE34iokGiUf8Szo2
Fofp1cshLTGvwKKSO6m87/GCIUrYyOWGhae2KF+w5ieszevNBXnX7Vaq+er2+JsTB2lqXFoHcWDm
A9tzFsFP2ft8NR0tjfmgxaJCqrd3LHfbEHYTxZKRil+BZdp+X1uxyMz8oJHxQ0muwMUG2Gqr37mQ
iOPhwrby10+Vp5D7IRy62ISNbxfRROg4PqlnPHsJ+ZFCWtrcbocOJD9FdoxxGs1HHb5gBPJCZs6W
SKYkwlS7csHf+38NS7NBSenW/NGF5wEup5IvMHiLLzmGkhaALImyuLLaw2O9C32VIkRYR/QHScT5
znytzq+9ci1vJXmdmdlWTh1Uje+yR/ux6mWSvIabedRDkwl6Zbqc7BOZC4V/QFsBmuoOvF5aQx10
2R7SE9n38aR7vvxHAZYr9AT0LbgooOo9OMXkgP1IOgxfW+RGt3nXkc1+tBnAhqF538tvktQLZk9H
K5wI4LYGYmdEY++htK1jyWOQEnFJW3+9jjeNfcAD+5DpJxsa8eTyAXtbN/k0piDyuqjjhVUkt0V/
Lylh5Ex0NIMxe7fDVCN0ySb5wvfzYSbxL0wO6dVyq0wglGYV3CsmpJS1oA0aG7NmMQkl7h+3CVvG
fs3REVGWozsESv8H99St9vLQYqSGp30GXNU9ILnSNi8NQhM+i1vTQ9jNdrVB5GO6lhePSe9MTBbs
0VlUcBEv+SFWAKpCh4JwS79ifybXYblGtut6XHMBgQduWkcz5YLSvJvaFnSjOR2yF4urkXDj6vRD
UaG3e0kw99fE23R9WBy71YyKnjyFp7e7jMg8BGph6xydZWv6oQP88dxOP3w2epI157Kn889BCEU0
JyTiMFnf23WsUJs7P+FKYF12+EUxFjJybLUgGF9O4YEEql+BS4CosH9nrKkT0XjUR1uZ9ZnV71YD
IEECP7+74hSgWG4n1KEZzOmDxnj39uy2sD4XdHhHftEJREee9Co0ALioxZrjD+jkUmH5/rmMDPN3
ggd5cnMFG8wA0OzkJAFW/1APm6gNtcHG+OYoZh4Y6U0iNkrJzmnjIF3Rbw4FHj/JoiXRYHE+pQ25
Xf155ZjtdBgN/oGZawK0FYKcn4SppeP+eoaVfQq2e8zs5n9e1QcF7+/YBBiZAXV431BmjsSxkZ7E
++cIV/pgRyOzGXr/80UprrXXIb3FD6Otv24B2XcIJyGePfVRYo+wF87fkvqcmyOTa2rkbP190pxG
cdAmYSxbHyOhGDZFdGOgaRz2v7mkMw6IqJ63SDJ4xtsjWbveseuBtWnBKwgkrQCoXhJ8ORdVeArV
xVFuWTuyVO6K7rnA63f44PT/vs+/qrLO3fb55mZOxxgiXZmVEQZ+rc08i906tM3O0CWcvI+jgvdY
wahSV4AWDbjX4UMpH/YigLz1J6bAwizaK8BMyQoXFL4iGT52xNp530m1pT29Nb3kSAvS8qzpR3tm
/N+0/LoGVHA4CSA0qcyYpEX9HKbda5j8nJZ2dbuzS1DSetOjXOHVMSXNL7InZFmGm4+ZHauWOhxC
QvbISI5pffQDdhCr116ghzzttg4wgk3I99laybBSw9fZ7wmOdl1c1KT3OTP8KOvQqGnFLOnS2gko
s9FwQuwlU4ahzeDf1V99QrHG+D/8xitXqZ2tmXOddOR3WLcrPrBcj/cD6UrEMRbJw+Ltt/sG5loy
RJWd/4wQTCXL9DDINyd14Pt6yE6lSQ3U6jWRnhoPHxn6sK5u/qxSDs+5OtazapdF+RSL94xOdUsm
BJExn+0hs6MKhebsLYyuPoUYrp0S5Y+pxUytZXRPU6uolnsneLgjljF3Eyt95kTS582ASwrUuM/s
97OsSqlz8ISdzT7qP2LePlBbKe85qMHkQknCXrmaSeMFJM1b6ysZaGGCIJ9k35pjB9HvEpdsc1nm
eOc6dHyPqI/ixK8N80UvMURxHEujKLEqiE9Mz82Nba5juRN2rTooIuC9Why2KPOJvuyjzxdp4KRt
9AjZRJCKJ8n5aGWZHN1vCABhylp+EFjrXMZT1NlyMvmz6cPxcdXwjylPn7trMVn7XNTVdh3kaANx
KvW1D4RW4yNSjvgQsTHHhCa60uQtJV6eBGpYJmIOQlnk5kU+EcqKOKn4VJN+l1UGPV89nIRej7/v
XLlJiqGXWfMiEqLsM2rQoFg60sScdc/sxZCSe0LfKSNw7W1OhKqvZHtmuUkWJC69BRwDOK+vBe23
dH09JfNk+mVZS5Jwb5hiOUdPiztOE14hLfMQlrOHAmck6jhQIFHTuvQpiJgCci4ClU49LxwOQ7rQ
mjkfEosF9jGhuTt4njUDmDC0jxN5kjHVCRb90wPss0jeWWAF1Yzyiw8czLRJDgehLf3uREG+vFrx
+9zRpMGKdYx1opJweb/0aKhVYzkifSeqhNXBlZ4Yun3qkuS5JXkPvG20zhaqkdK5u+Tl1T+FRWkY
BWwh24IehNWnPLZQK+6uttEMLc2Sj+UTKxhnROI1GO+es/DJ4Nss1OO1iRA5c3B4K9rqZNQv/6BC
3X/RThYOUFJzifrj5g/m8f6tnJIv+eiK13viGefh4ENrE3Srxe6w1ljnmNE2GC4vBXJvE/XjP1OH
EhAN3/PaPAX0M5Qjgp+kdMit8mYxE0itizH9pPVokGTzuNxwqrgAJoQd5DKaqhnFbhYjYTuEB6UT
fcnjkuotB3wJZX5NkpPIDL7RzxO7XoqM/KRa84c9b+Dsd7t4BfEBrmB5Ot3/d6If1JYhn4a29Gwv
6W15jJceC7Y8dSQvU27kJIGygWIfVAVQpTO9QRn96aM68FSnvMV3U1S+z1PtTSz+AKOYxVSN7gHy
rr2Nfp/eGqyq5ZWO6vpRC+p9736vVLHEhBRAFbXXAHnIzxxmt51XciYqtH31ff1pfTdEtatx9bmJ
lBNZc9S6okNkuil/cRrMJwJ/44ovlqnoTDSO/wnjTXG5sRRpBNIsmgPtfosO6hk9EydPF42okplr
blH8ARGdyZd9O+wYFpSEdEbTIse/ZxELtpaUE6O9F1Xuc6vptnJkoSSgGQeCbzPNVwTKLP0h/gh8
84Z/MANMf5bjigUXDqjujO72DFH+92MvxlnNDTzQRFCFVsGERo2gFgXstNq+2HzHbsCkKz6WGlAo
Rhd3eB2BlAgAWwLi+HN0w7UASq7TSLZhJN81XVad4gDEbLHnBYGVSNM3zUQbEsKccIhEUgRWqHdr
HCs9FSUFcZJXbJyV1zo9kKGNOjc1y4jmkHP1uMdPGBD7EYyszg/5RdrzYoXhJPFNw1BHQg4VxvDm
GQwkLKDfZtvEUv8c+M/yEoTrAU9lIoYa5hYI4a96X2LNcjBsqO7ncCw3aKQgIu5VFV6AKP7fFidS
Zm1zwZ2UYuRgEvFhBwwFCv9gND8VlSW4phdfOMJwP6BwVXEQeq00tsGklDA/OrVh1qfQO0aCgMek
qaQBlIr2VA4xx81oYvkCSgm3Lz2AWqmqTT10TU15qGTiZ+sHkanuF2crm48BQeSQn5O8LiAXvYVz
tCapRQ+80gimCj8YaZ90rDAKjapkPQZJGVU+bmWzJsUodKFiFNg2HM8s1IGZTXKEvwoqeJ+LhHAW
Bmzj0lC2bMvRY/zUE+5iNk/2TuAMsBrnrP+RNnqpm03+wgJt/nQ5Ny4g4+taGC9VfsAb4vdNEGV6
/ltfvRMZSVZyORco5i1+oOIssWk4M11LLVFjM1PMhmJ7uDBw1KicvUHm5Z4jI4VriwW0EUkNg9EB
sWdiKETn8fE9ixnjVs0z0UPNIZZxmjm7T0g4Et84Uby53acM2RhTCiHXIam/eJj3J9geFGYS57UE
zuukTr3x0EaFlo50nYfJPptV9vH00V+6xzDlaV3FrPjJpl2uPuYIrA7EtsY4DWiNGDSU2SDsuI1l
Ab/Ba6faS6prmNo4u3bIn2c8IL0qX4G7Y4zXa4KFSFDMZsgVwENzcwdhCiUHHi3Jcbq+WlJw/fcI
MIztXENE30QOncGJIRGDfeDZxAYen/7xMIottWo4j/BdMhq+8gAe1T/TT6pYm51RZfX4vxcOujvM
Oh/HqURvmltkLmL1tmPuudLtGu8GZohn4NIMpnfZIbGJAFYtH4WZioxW+mIZQPuEtQDjKm8R/CyK
bl09kbX2UBGhBdy/QgFp5RYCPUTo5kdvANxC4ZCl2FQZ/E2HU/AA05I6yFMeTk0PmrM+qsHVqLuQ
/Ug2yI+6TW1U0EnGT/U40skQ/kSv1ETxGbvfXyuwdHtB2RzXOJ2RkwuFtI09DDMNEpVPAE7uC9xC
MTqrp6W7aGf9bvbp1rnVV/3ltN2FpjqmHWnwOx4kjM6kBbtMKFOTadk1iTCY64aDVpL7QhwMPuTG
0YjJ8mm8utDnRmlvRwurO11f5MQ8ZdLNvnlm41Ld/BUURz7xTBJ+oBnyT5EXI3OHoPCKR5dDo60+
okgPm6UuEsPB+tI+3pueSggperZ+TgZ9U6L7wmFL/Xl892nbPo3zqwyfeCsn2k76VurvfvXhWHA7
+zSmYaBcFwbzbDVTgclbi/oP+ZzcmDW2i65HmC5Ak1fGef1Ng93/B/om+ukH6C+1dlnjNqyJ5IYJ
DF5LHCbBEXiSUuJjeVHOGZEIvHzEGQD1aG/ZLa3mMMZ3WIjDPz9Q9U+uxW5mjVjur0ezRTi707SI
Ryo8aCOnX0NnhvqYuYStBLklO97NQoEYahh7ZXR6wtiId6Swf3dEnG56DwC1ycf50fAL1dfsqVDl
waeiDfQgkHic02V+jc29wtC4KK+oWwV/Uqh43urEG3i1pTxZuw3R9oLa6jOLGjCPAXCOsHhg6yK0
c6XM5DozP0g5mzs8+GlnrIlbT80N9EWKElX3UyvbmQ5lz5oWxnUSO7h2tl6PbbvrZETivP27WZUi
JLd2N/v32P9aJLzMr7RpJ8Dyz5K3qiQAmjThk42b0pOKJeQlhQHSYAV/UoJEJQLtq8n9LNMOoPBH
o8AJb8RgVIjbaY+KKa2PdIcjE3OTvemuamOa0rKJEryew3Stbl+pcQAHRuTTIySugCUshrprSX7R
1dx/20wbULn5gi6P0hFCvCLCZiK14CqCrt4jLyOAr1zmTVx5bsRWc571X3Z21y+KLFinWFLt0uVn
Ze17/QJsExYMju3Cn2d/bXjpWkrAgpPFgvYcNhMxnwyEp5ygIWA3vneeD+3d5D2YZzsObnxk39NX
uGx3KYE5nVVwDSQth6/1RsrAkhQUMdzbIXjmB9IIe0j5qDUhz3O7xkzEvg/5TNT2wRHJW1b1r7Vf
oAtLuok0+Suy6ZxRutMbT3e2tdldhNqQQccB6u/SBESKKXDisWRG7LGCMY0b0ic7evtV9FM94Z50
O6UKOAoyiISvHK6GyRphX3g0QPmpYPDBGrQ46iHfCa8/M1Hg9LgNve2phzgV3dxn9cheOmxN8Fyc
yqwjgLDN1syjYtnkYxpnII9y4NUkTKw1NTL3+UPtHROtNcoBuEzPEadQFbvqssGfoxRrmcxjLcK7
AHe2MYugDAnLT2+hzEhpi9gpzxWW3ots4oisDfIl2hw0Ebrr7426cn6egyfwCkXAShJV9fo+R4Le
o72d3VO4SJLQbcSG8RrJUNGJyzf2V1Czeb2KZQHfqwUTMjbfv/7LkjjH1io8iRiuiZtz06Q4TnsE
IJI/rt/GIOfse9k3l6EtAbvdQMikIuR+zO0UqtVBPI0dioZP7mzoEft4uvC58aQ6ktXklifuyCFN
qmj1sG53/3eY/gt87Lqbgnz1XIS/S+lgCqPTiDx6NQc5ZX57txaFHu2S+qaAy6C6CeHFeyULsy+K
eBJgspI449ssN141CsgunBuZtri9KFHxCSDPx5+Kt1t0cjhR3jgaFJCJ3P7AZZCSZbjPYFj0n9CZ
+MFPL0fBICFXX/ec8M2aT8Tk6za5UoEgyM+8UKVizo6rmk//tLHzZRi2NpjZ1TWexjuqGfjlIBJu
XyGdkhNixIaEUQRyUxiSB8tNAJ4+H/aWftuCMVSdKit8Diy56mC91r7Iw/adQQUL1m9Ja9jNLXyn
O8HLbGvJrwktzyhfaD8e+VE3BH8sgNUrNG5JKi088DBvGRFSqRM1fgxuvIpVX6hbDD5fj9EIt2Va
0x/jYkYOPgRG4urTCdXU0AgZ/QGdwYu9tDo+s2b96SqyyqkWwW/nxgbnOlXXO8q8DtN2s09r1zjJ
YGVy5hrnpa8g+LKCDblPVlVjnd5wgOF2OUOC7oLR2AsXW+2RDi1DsG09WYp+qQ+W+I+W/Cf3iJkr
w2V7/zqaYb+lycNTxTb1FvRQwvt3DGMdPIsUskC6huktW0KDK01JkiIOHVysn8kFjNSVB+7ZXZG3
WhgW43kc1eDCFovVPZON8Xka4OY96amAij+O+6+niDjF2n3FOBl+ZVcEAZD3z6f21e7hSSwCA8jZ
qYBI3Iq3IEByWFrbZBze0yM0/aEkDhpsx++mtd287nnpcP3s/nBfLnhgoPuddP872we59pv4KG3a
+JYiB85Tfsfm7kFIoEVQDMorqB1jaQ3uLQ8KG+AjQWst27rxJb8phLwaxF1vu9SaHGjqFvZu4lUa
+10umaC9OMp1HujHOnjBk0n5ahHmBSSZ0kiTv8HyGVl1S39/x8j4J/lFWhkIqnnN6ZzdG/D7zKA4
8fKXD2f1jx9cRfWIQrmhM8TRleTth5JSLwe911JUiE/hl6p7FaJKpBbx42z2sWK7A5LD4FuWzvHl
FPX8NM27dqxscCCr3RD209qxGBSbSi2fdgGYelTja74yTtMvmpoFQA/AI7yrOYsBmCu6RzjwAFQB
MBCM/4HsiRc5xBWfj+5ZUgcEIR3IMsXPx4CIAMHp7Q/IZJp6OIKhuwdl5Y31WkhKUiEQallDFPK4
dyBs1KpK3uzr8AeoFOCv+oTg9/opok7Od6vwPQi1sw1bN6YkoMGAWI6RIUOTBi7SDcBzTyC4ao2f
/zZlungPZZYhpxEVLGRnwwQU+fELeFnzlRREZx9CCHmRdP0ZoE7Bd4vLZG0U39yvwV8XquwnL72H
S53G7Kid0YMcFLA1Q1kGUl4WD345qPYsuWFfhIGZtZ/SiQtxMD5XppHCvRYOlV48GxI+Ya0KwsFX
REI9MdJIOFjDOTKmIRSoWm4vXnMHs2mp+X5rBoFfKGpi6x+U2bKeAIHuD9nuh7A12pdKRAXpdYav
w3kNKQUGhk69F7YZ+vCOww1fMZXXW4ZFQWFmHP+lnlMdpaXGFGkIEKU4GqQyu+PpWzh6iWd89Wiv
brNicQQUq2KOUt+b1tqnErCWf9EWhOYheNavGlD/vyx8vrPEUtwHIbQwmKtudKEsRmsGViz/gWow
/hq5MKxCdPBS3kVu+hyYDkEmxFEDOPhnMZ1PfvgZykVYospuz2GMcnsBJ/tVpxfDrBVZ6dGQzgNv
nuJ/LnYexYNL4CVdZgiheqSFd7gGd+2ZxAmMXc1KalwKxq8V4SsMqriC3X6EwFTQCa+MC5WZb46I
q2jUKQs1w8KXdC5U04ksGpWchMvRE8ju1xai8BLH662OXE7CJXefdJIFoALR84SnQRoYe2UVnmqO
JxMEDwWYulp935hlZcwaZi7uuJVbtSwMisjsqfrp33VnbZlMBJfRmA1cB8w0pg6NGtzwcrzskfW+
6t4wF6soe+Sp8EiYsbc2Ft4jVZM0b3J4qXhHcmM4mODwZmxksiOXvGgm3RmfIUWYYTMTdMgUJKk8
AEIrShGs8KOmSmLaMflccTc0zCx2aIyEr93qqVp9dxlMmOnuv5taNFztKLGTX8Mls4GKvZWpJ8R4
SzN0O66zudu3ciKf5mU3kPChrc9zQAuv46h1B+d9FypVk7BXOq4aSLXkHRZWjDmBk6smz94cxd7j
NWc3XmOBtkTWA/+5YMre3it77JhoiIgORjgz2DAJPNPfwNXAC0EFVLdPql3XdY3lzVy2UtjgYi7g
yR5BB/YXc6iONgJWf9/Bn0x2UVVj2g2CPiR2yoRcSN+/nLX+lqDtljT8IQGDDWSh5mcm71upesEe
p7PuKyZI4oxQWi01nqmwdBmJAoC6q1DW2O9fv3AsBSMn1XpMZ/qNh87VudODwkcHQwwziVyPdBQj
01NuyV7miSVgwJy2IjZ7lO65/d/ovYKITO9FXKsFCCvOrsNDSS3HA72Ne7Jmi+LjcXO49h1W44+x
8dZHL6WaayGjLuQhu25AkdRIzQZr00S/B+jqNh3wAeBiz1TVLj0wrBJnkfRc3veH5g5Y6ivbjPWw
X4pUvfvJNQFpADknJAAb2L/AuPFd437GOn3hMDpiIZAIXlMGA/yDTKvAuN4M4Zm+AOjWnm1xr1G/
dHQtG4CICmKC5QtOgJVD5a2VQn2qzKdfaCmMSZ0WwDTwTTD1eixfu4MDI2dVs9NsS55QTrxMSJ2A
2lUAc76aa6Sxl/haE2WkCd4WJdilDF0ZXLfOXXlAtf1GKWnEnc7Av6uRkGQvn2b7n+xizd2dGR4h
F5W913HRyTIDT3CjpM/kSinkhfyYboEk5nKYzAmX1kDm/RqDObYGcK39j4C5/ptK3StjMzMSB2+u
JgJCqyN+v5HH7t+jRjPUj15mqNq4IsGDOGRkBGwe2n2owi5n7SEIWTi4lyOQtnQu2NdfSGNsAPgd
0bZjWsVlZMINg4OLFy+boae2N91vgseoG3pJCCekjCu6jAuqDxx+HAl16gWOK0grlQTZ/fhBfBJg
NLN5309gMABZgNYvZmzz+BD8MJwqZt2fwC/LNxk7T8uHFe6tbmjFDhlb/2z2n6kBiKFfUQM06oFF
cUS4+OK84DiDoB50UTEZjf0aj0TTbc9u+lb2TSmYbW9TJFpiUZUXDXdFHwSe+ygUegA1Rj4H5LWx
hin83zN/XX+hTqDUXdd+S8fpvbvJ/XwNz5+VAwGqiqx9CX++6LFrrBmMGVRF6cXzDJE/9CIQPsHu
BwJFhJLIKAenIVR9zeReJfZc7ViOwLFDrc3Wm2Ro7o4B6CTh50mqrZsxdOMP1a6fO+DxSEktOJPE
n8BtY3YWwPJy7155Ym1HdFur7/Bt1WEvIEYpFKvzFOFQqZo40xAmYwFZZQD1s0Ad5um0aWzMjdkC
r9GNyBl5mXINcLJyoEigR2pdlyR3ThZ3E/Dm3W3tCnGhwkScKzusP0c0zRDXI/Q/gCS44oyf4o16
BEE22zefao6rMonu4hEYuxcpDJZL2bxt5UlS1mQqJ25pTHSKC1Q2m2W63rl0yDVAOQNRVXuNBCp+
XycMSlLIEz5Umuu/E6/JFX5EHL9xi/aRy4HGGx2UA1ZiCEiPC2oNfxPiEK0mONEe/N/eIUVo3NA/
oY42G+WiQ707RWU9igtCANfVLVWmR89g/gyzV7ZqM8nthowW5ShpPNqc98PfQ/FOQOKA6oOstTB3
HT/M9MgP2Ao58lWt8QXT+h1nXg+pQAknHJ4gkqV2VeRJTzkBKXSmv70GfwyPT7qm6b6tbIilsUw9
9t5bJjKceBS7MEtrOeW0Z1/EGq2Gm6LGVuAblC/n2rFsBNBckpdzXWS1CrdsXN4bZLWqtfkYHcJ0
KYo9R9MH5MU7FDIaHCzaPsSiZQOTDMPSdtjRqlu+mREdts3ki+5VShwPAvqvNIFIcLcpcqAGJuMj
avc6XoJeusIQ3Y4QHmKRHxeFS2ZrbQOU1x/QxxYq9d0tIHNpGgj1GAlVyMXAcK2ctfOrkc5KARRh
D0jODMqYSmqwP17bVOPRQ4kzmDvC/xVuXnADXGOvzESR5dK3i/CqhVSuTN+oac+fYIEq0iLVtMmn
goQkiBUPe9TYFmhwcnisZZfjF605TS2ms6/4uQPwn82WBPXW8vCdZ3MNEoK/8b7/3LdjhmVq09wI
LOPw8iVLLsRZ57jnqoXM7kIuln6dkhv8L/kHFbU8yYnAu/Q8Az46R3ZygGfwbOOIAtorW4tSJwpD
EEL2jNl8b5RB8NHzEORrCATCbXfIe/tKVkC7EvKMUGYTK/Sbn67rMSFmkqTznawzTzIkwnsPnOoq
IwXNoWWZaASIUO91/A+RI7dhb/TzFG/SUF73s3s3NkgoEnqFGO9jaso+31G1iHkz6QmSQ4JaVOR5
ghwZx17raKinc0tg4z5uK0tqa15VodvzUtBPMtb4jNn4izl2sNmPseGbQzwi0fKGadaOlKoa7Nky
L76XVgvmxe+WpalmtSuIuMBoPNbB8I33OwJOBqahJGGXrk1JljXERdoThGvld+U4X4T5n2VAHB3W
LNLyC9+IeRw2P5M7TrOldorNQm6ZZ1PWlU7CbiqZk2a8K3Pxtxt2iMXfb9fM51tKMd1cIdUE0/sC
bknLUyUvnQG28LrFGP42lObLWo9Lnl9Vpq4gx9oajkQ37c3NOq+qQhbOoHo3vDFuCms6x1Q87OWP
ySQ6alKajSrerYKsNzAJeSGR60XP0HJVezucX4cHYBAyj9h08KwVFKu7iHbHPA18bpTyDgsVW64/
XCJhFnIYxRDV6kvb2HedK/7+R3df1SeC3A8sjE8I1BHsa67r0vjSoOBqTsjCVrmWYr+v8NGzUg6H
0/8ht6FC2liFdQ/4NGMLyshX585OfG7V3EaQRjz2QPAoaQIY2VTkqjPpOgOVvGK8uzRQmLLReNKX
sPpMLZt7Khc1wPvjhzWqNOCLBhRZy9PyOZee2/NzwqsFmbm2Sik73K/weZ/S34z+pBgeg8cLHC2K
C+rUuAvd86fsztoUonWbtZdVo7b42c2okwYKZz9V34qNfIGaQtFNuC1J3+PM3OXvtLN2iOymYoxB
phTiH62gwHc57421F//3Uk/UojErQ2dP+NtV7ob2qrdr7hX8OeDUP0+PbXcArpPF5SCpUxlIlzPI
rOUFwH20434D31+61X632iw5YJ8Wgwi+E5wCaARSDgAEjORN445iRorDETRlKAkn+hzzF3n3MnKc
DEx4ksVoGT2/Q1t4CQjl6+7kHVWsgv+7M2MECXxqAvBfnZ8vEdqYpEtz1KooXzrFOqVl1e1NatSm
U2dOLB+cA2GAdKnPwmFCpckzPZ6o1I/MSF1k+Cs/JaULPJvKczxHgzZAjLm08G66BzJERjFFJ1Kg
/uOkQAprzbILurnuI1OrL3MLeJ5HmlDJwnV2TC1BRjihH0Jh4Pc1wbcfy4ayXYHDe4f3jT0onBrj
2U9OkJiq6r6P7Yr/URITPJDmzsjEcgVR9vG4d/kDW/Vc4jQjGDyaYVBCpyCPtJvlVFwPT5avvD/E
KbPW+NL/QtfTKQ/iVnrvH1+DM+zt09wZCwXTd7eqtPHrIQ8OaEZ6QMEFY3O0keNpqv5H82meLqhW
EStKAu7kTHbNUkasHd8vC0kcNTII/DCud2FpNsRmmY0B96rnTkC5kKDAr75z8JMPD7BdKPOacy5L
+1Rb1j3zoMOn+ZZcR8xEWzr/DfEUoq5Nrd/QLu0yz3RUAO+XIuJIsBaft2qQD9O0g17nY19SNd/Q
GDU5KnYnrMFkHjD/Uni86l102DWsVuQKpciv2WBdJoQR+w13Zv/Z6pzzvlxLUEiQJOcouAQqZOhj
xok+eTVenfnN/q/Z1y3uHYkEkO8YHQ29KXsHLXdl5j798NZHrK58UmuQ/Dn+/pWp3zJCLSRO8+0Z
qnE3jYuu9AAZUP57vbSkbg8efymOYcYFSg5Jy0TQiQrhfqp86HyuhNbGzMpyxk2lhspWr65N2kP0
hd4E7OLUu6D0bzVciNu4Wom0434SphkI7BZv30OE3SiME+NlwZURAfdRLPP5kztWuZNn1pwkcGPb
vE04HszAXRuhjIdmBFPkuMV+oh1Yr7nYt2W8fljrN6DakYFee6BNIXAEnBQpK1wljm3jeV0g1OG9
96x/sOh5rf+PfSmX02grUyylXcAche6sEk2K7qgJph4BvBDadP2ZlmZO3sb5o0dgFDhLUsPEiW3J
mb79ru75pKiPfD17gSu2mw8aWUPt0G84+JQz7rbYqjnRmSzvi6LcJhPTx3toMf4NRzzoyDPV5ouI
OK3X1JNdbCeLXjaSEdwCbrbHYC/Bd0uQjApiGNw5/lKISNARi8sXQ+JlHLno8JZ2sun6i59QbIaZ
i6ITVZzmiuJsP1ZEBV6rZN9zxjXQryijM65N4sZYRIubUMNue+4RfPTYFxYdVckDlOjZtRvgrswK
4/6VD/tHgQUar3PffiIKfvW0gZrIXv2Xrf08kEQydIEpXbz7Ra02QbFf+Gw/sqiX/YVbwxEf5Vkz
PrJAQUcObtV5H+yRIO41Bo4c61/qB5yBYd9ZcmILnOpkLHp070QIT39nFW6aWgSknjWZMwwa1/S5
WkwLFlEXc7usuqtjB3hwxLlxih3HO37aREt83uSfqAd2epLn7dqVRtcLx3kgMt0bk1RmQGkfDY5F
W13PSSxSiVH4upG99/h7YvFQLk1T0BMGcZb0Hn5UFPZlFVbH9TrXw0FXfPq+OJ8D3zq5v/Kf/0sE
0greN3aGEkD3KrDLMuJFngYm5KQMNyLgbi0QJBfpmWU9sMBGq4XEv50YgOdLIWKajOrrJfOxT6Gd
xocRLRDHf2SQG15ItRnCdPz3WEuRcJp7WxV25+4d6jn9Ku56BlRTyRCQiGvM4qiJanWsCdyXnFi5
mLKoGLdO3fNHWxHrr3KVSWGWti3k4wJpPafkcjykJWyj0pbz8EOHb8/Op54APxCeyF/9rPniycR7
M3x4Utfb9BZ+vzxqAN/h/T+BlMKl4JGX5DBTHMzZvQLqo/ZLcs7vEZV21FS9AljjDu4XqSvseBaS
bChngdCtfewx9mGhv0AaCBegik3fxDkuSKHy91z4j82s7/C/vAQBI9MGYNdcN0Aa7ne1JjfAWv4m
O2+nPdnwXnifhF9yuBuCjnQI0GSGkCl4jaFTt3MlFYvENdX5wsNQj8fD4c9BRDEkGY633FTtCNxU
JTZpVzj9qHzkvwMeH720TP0hlsqbmDxHlLE+mLm+GMQvzdd0k0SRIHSKPAGBivHeG/0mofw0nuX+
LH8HE9YMIqnqjc8lhLDIJ9dK93ivAFZp73wRsIprR/3c16RPV69vxFB2GyLLPxITvsyesjvkcASH
a4uEOa01aZTYjwy1klH2+JUbVkKR5fzHQKkOzPreVvJehF2+R/87RJZS3aPvAQ27g2tDrETgW1Y1
u7XzG5Yu6mNKqz12GDm6NOeyh/kzXdyTsJeovzOc334C+UqIfbclNFBT65X4PUWyVlxB94DK0Hfo
GlWuYQk7xsXEbzg7XyBVvst/aZPafNAg0pACl3dKeCDav/GiEGBxKHT0bw7ZNUlwWlXr3ubzgcu1
GBt0ZNH2kqVvWKnoqrZ95auLt65siD780/PI+sHKRVlkI7k2K46QGJjBq603d33G8t49GYb+XCw+
pzPGJPoJ5zMI4mjcE9MVYp2TNIhsMFP1IJPsOQ+NK2dLZolcyOb/jOnsPOT3+6BhOAIwD04S1g7s
80mH8r+3JRNhDuu2wK2e6Vov0gV1Zv2RNvKpXr0fUjkiPiYLvBRGY2zDWUX/B0jT04MLazeanrba
jDBv6lJxxDgxTfU/eptyNzaUbKq9Hjrf1ZJWRfgTyLWCLRDQsCkuC9gbMlFFe62iabg3cwadGDF+
REDuUQYLg6BwBvzvr7Tk4akcn2nl2C8YuY1cKMfdIBgo8LrTsI4hv00JW8130996r6fTjsKa7wOa
GUf5S2cOG7SYAAeFX4YP8F18Ave/TaK4j0C1OGjG+P1fzSiaRr6Nr6p82woLEM0XQNnshduimAGj
3OfsK+O2CAI+dGKXp6Q8hjcI6WOhhfgLqsIw+kESmZHU/p/Lv2u1EwYrz9uFybGV98Y+Spe+JowE
JbEgAQ6e0FaSp1zoLQuIQpKZg5x+Xz7JwEacPBYUa8dcJ1/R3cRp1yogQ9moylcN6ish2ZN1FaTx
PwYhjLW0XXjgtkfvkLcMzjNX1ZOp3EvddF+oCjA786+JWNe8yb//WQnHCD3tPNJo/LvX0gGDghVl
OXri827Zn79ItcPy5bpIHCpUzumhcWPvlaw+djRQeYPgDRD6B/wOWyMx+D8Gl5eZl8gVkt2n/FyB
oQgybDqWUUzCBOq8qcgZ/qTaWt3cOuVbe2S1Twi7VCZy4Dgf6/2KfJcGVWECFSqD1DTh8CoorKNu
FFdoT32yAb+SQICI4zkXF5EYDpetSI8llNfgc3AtPrMN+eiVxVi7EyVoXdH206TbyVDlGobYeo4G
Tovhl6fp9r5XPhzWcDbpgBPNMtPYMOcgWoNcfi7VD+h0bBfzdRBh8dC8G60/FRZLRFrNz072J+bg
LL39YNcIAvmjhgD5YtTcsKls94528RGtT/z8KmukqNo7LZ9fCxGaQfVVeLu/iW4OlQy7VWLkEgE8
yAGOuRUOVcw6GCWMf/V6mHyI/xbombL/2GlT4nxeRiG0K6gAn3X86xLEqGlqnrRb3DsenNQ2M9WG
x4HuKa2GRD/mF9/Av71xwztF2I4CI7lJRmlAG95S9ptBGKyTlUCH2IslVb5v2FrH1LZYRMhnUBzx
s7ko9/f+u/togdcVH11NJEzmzFf4OHk+PXbVee0ycq3lgxZJBp1bClNotlhNq7WnO0HiRnrOKpil
GWajwK7Zd5Rq2sMx9e81kGF1LTSAXP3OaBwclSGMgUcmhBos9zYYHTV3CnwFJxYtX7inLI/spi2N
uEitZFc904yg1mUh+UvpaG/vIiCkr9bN+4L1LDENEmhzIVIQaTQ7BuqNHpn+e2z56i90k9TC7UZd
E93T9MsUdwlemponHaJIo9P9f2RoKTd7oRdYlZ7hQFIIER4Cs7ux610QQEdwUsQTwWhs+zaeEjwX
v7goCjBhmxPHvkn5o0C3prDZ0Qk6z4AWLtwUPr8XfiinEOLkJmVPpPKeVJhipXM9GOY/nuFf1Mz1
Cw77Eg8iqBtQSfI60INiV5a4TTOf+C8Q+/ISi0hPlR9oDSK2/zkJ6BfFzBRUYceRrIMCU6wX7Kji
p9fPfD/n1Sk6wybcuCJ15qA/vPGmOiryxgULir6hcvWzbQwX2MQcYUxOM9bW3DpyOWYJsydW58nz
7Gykvph6Z4Gy8bLJ77IRUvgAIVPIHWA2hnjTfDvfIOIfhyYdC19Dqk994LpmtwcFq2zcP8zyHmqG
pbedyZgVM3GGMkEtrNGn39gCuvQMHDsqXm2oUng+MTjmKx/fvBvdi1oCL0LQhqkkQ5LkS/u/fNHT
XYJGytQmvyuFayLPqXhb3iTjCemD8/EhIbpVH3ZrE/X6/DebphZo/4UbOcX3zQu5tHDwzdNaKYLs
J1QBgedzbJ5J7Ldfj5m/YDcxf7y4d61cFAlf7IUVhdP9l77lKDXqSiias5i4pZFLuDLHx4a6Ip3L
Tof9n7B48HxFOeThZ+t6EjLyMmqYEnvf1CZnBQ1l1NfQVVm/576yT+z48sXvblaCGcBUUFM18to8
L25m8IODj0DrP9HYYfMbP896rCrxOGtyfsOooQZzLcyA9impO6iDtrm1Z75NJcHvfji0NskypoU1
YMvrS8Ag4jyViXDqU3fxn2m7T0mGVUJyN5+aAteJQUvI412FigUitcE5hiIQHxydGFA9kOi9tG1T
UPvtQ+7VF3aDxRcpBg2SVjff/D/EGLN2u9VMuitsbJeVU2DCX4I814KjJPw8QZMka/kSBGnp/1u2
oy9kQlAvhtqxm+O+ywHH3lrE/LGx3cZtAiVAOjqWmOl9DS/K/yaugVX6hKSV+nGtDqpZYxDt1zMN
g+aceGb+slq6OyFa7ahmJcSMgZqFKgy/yEi2L49j/lviY6jhVp/wmcXmh+I3+dpktsn2XjAWcuCu
fElIIifFz4fz+2CB84NCfSZ4DlnGkLPyoU0BCQSBKH+fWV4tlgEw6quCDTPP+t8eBdsasWN7B/YG
75rNy1t8rvTv/Ehdf/eUdDTJkluHPe2cyoT0jrujT4JtxU0KuZirsubfGREqeEUJO9PAVVEVPQ7j
EQeoxS7oqSrhe1we8UznMuSaz6vMLn1aCJXEykAnDHiQSNcXtsL8S6KIw12IFyUIZfYfPkKzYtFm
Ci/iGpj2n1Bb43ekiZGzJiuXdFew0Q5XjMYNea+FNI56GRUTM7041ZQBLYvbSsPSPldVEm7ust6H
0we2aT6Jb14wZR9076oHppojEzbWe4jvqNYfQ0T0kNZeV8HLwotse7AkvVTwq/Js0yp16ngK/GnQ
2EJHXWhryqk0smoRe64dAzx7xgbcDwsf2aqZ16pGZGS+NxD36NjTOkK5aoE1+nZbNQtTwg9pctiV
zGcU23DOz5eESA9GGx14oSpPBAC7wfHo0YzYurAXdkLGQX4Rp36LH2JxQ8/AZbNpFnM0As1Epgqo
Mb73iLZsiE6BzfugTC7keKn/NqpL1SPjTarwCn3Rlq2+OxniSNUbHr+rDup944TMXA5PJOpWowK6
z/XlzQAG9MRuuUqNGM0fSOTZpszyMGcTw1cfAWL0+b9vjDaQU3WM9iT+KDSgdMB7K8sG/mfBNQxw
QBB6YvDoQrImsG3jqhWOkBU6auQVv+zFNNSnkOniZfiIUfL6yj1HZW/BHHtTs/4ylmNFmQuo74Wu
1ISJzpvx+RzS3dkErhuS7KvHTU9crlAl7ESmaxuI2BrZrMWORkvV1AnLZjWVR1daEbKpykWi8xRR
QDHDb42wp1fJL/P+CJ6xQjVDKzfngR/8jDbBvFh4cyCY+wKOZwvN9QCdiIYcf74TTgxtOsg4QE4I
P+qdJ5WwGQXFMQAL+2VfI/r61Xrsj+XpO3KaeOlCoYH9MUurTbqvYlptCE7gAfMXUqLEPQSq+f2y
YqnnA1iMv1Uj2JwBUn1d01Ua2RA9qtwUVOKF1GOLESIrSOI5w5yG/DST/n/DgEviSNStuxjIo40p
+d11D4qSF8X/A6RImEoVHxTEVmj6cNwnV+iORvdPs2iINWCsAJ0i2jibBIj1cYBRma5UFP7yOu5L
nR/iAcw6A/IGjXl/kQbXlrUulRTXncif/JUZ0sIW7hwTHWAoi3Utx26Mx6LiQHXpwpjgmU0tDeCL
kC/iUjrkE5pUkibnBZxN4jGRGAGW4gkX2KDLnRsIDveRPr5/y4A7TwqnEUAxNAbJAZ5jmCvTa2VU
+Rpzc/julIXNZ9avooAMV4jLqLnFQVrhNdF5Ad3i2XePDRXJy8Ei2vAf+ezqOXPimzE+wdjSKC9v
sGDMbewutH5TwX28+32s3093C7ifUi1IA6Ov8KYaXGtZq9e+tT0Dv57ZowAsI0lQYCcvjk1WxSKv
EWs5Kv5qq1u9/rlPneZI/OQIk1o+dpFXKw+iF8vo7R97zyvIar6U4rlwhoXclPI9PeC68//7EEiC
ErFu8zMc3fG1AsplHsoul91Fy2/JKhVcofQMzGMPE1qH0g5ZxuDUO8GkzNJe1bRcWuS/7JYf2v85
G2jBUadd0nYpSAUGJqxSEwJur9XhtJ3YIB4ZMk5x0YKKRMmq2c6Im39Q4sQLDIoTFXlJ4DiTdYUe
Iiij5wyA+z9RJ4165zxfArwEPRUeLr+uOSItK2yVmdV/L0xu6zOHGHH1PhqFVuriLp4wxPHu+29P
w8eGxWhtYBHGLkXFajbiPDn5aJekWNa9ChLW77/9073TMUiXS1WAgg1AHD9nAosf/bvwLb5xGjur
TYmfJM9RVbV4RGc47hoXTL1S3w0GCMkCujat9+/upZ/1j9ImS3ASogiSAzfi5X7SeO/2RAGxRyVM
4iSyQHylijLufb+hpSxo7nR7lZwpKY6wKZ7OUYVFYc2DsyUOtQYZXlxu/miH8iMScl/he5F3ZYet
6Vo+dMt63AyVKiysXaNRcYoiHjg92lwNjHBS6mUu82AQPmUnCCuiaPf/NkJcU/LXRyp0wENVq6uc
X0+RGDsm0TMD1yVSCGjs0uWUDNbXPHtycv3g+3FkjWKIA0GR/120kV6+2Od19n8q1tO0DGCFhDaC
/SaGPDcC9EKuqXLOfYrrqvHnqqqnI7G+VGyEHHwhnVOXBgPPtsWJFxzrVjhUtGwK3yln4tcCXy9b
Xo7ER1qd3rdBc0UGHAoYexwME4a8pZOgMLw5OfQR7pm3/zAVGo5jtu+GchJwU4wyf7EtCSNlirhH
mvgvbQEcUh3Gp4eTKw4ljAMqLGSf614o1GEdqefR+W996J058txBo0Oeo9QieysnSvkav16LsGu3
fGbJgwI0xy/fcwQOSOHZbcJe+prIZ7Q9YT7g0e64gGS9IT5kWyJ5GUCn8b4XOocTwP7t3n6SNGdm
N9fH5vMftKwVfnoud/O7/kSa7XFf6P6X37ogTTAAVn5VJvPKpjYAIiUO8yAUYy04h/4Kxd4WQupo
GPwDr9IKSiJmOclZbVtv4xaiZcHgnkpholD25TsvL0nwf+bLkWChaMy8igORT/esrZ+sfgcpZwy3
4UWwLQwi6glxqIpr/Umm7/9ikYaS3NUjqVaq7EZ7v8XQPkfqZY53Wpbai03Fu4fLP9kaBnCBdxhy
Vpl4FllsC7zQpDYWG7Q9MDcEKTLtkQnLXt8GVIV0+EDINLIYTe3y4tFssKqTsRcaEPUmP6Atow7x
4UCD+E3HghqaSE7zSTRwnJU4C494nEpALSM8Sk/i1zBDTY5us5wYWR5S9d31Rz5u95UKlpn7MZJF
qPSG9+r2o/2uLbwvVCS9sNy2RDvD2Btb0sT56gMraWnvsX9FEK4V6fCZTZev31A/ADMvz36b7l9z
+u5ghI3sGsOHFDSORUIZ0KeYmxYyG0ORIJGlLV2sewCwjVwbHkuIqK27WOnr8ZyW7G7rdzrqD55F
iHGKjjzbliwcBARNUtQBAbjTV/1/GmaUpwjxB3APT55RM79ssJshFlQMIZL2KioHGt2q+olSI6vz
W/kexJs2pCvGNMhu0pfYZpcLCcHZkiathrDXJyBgMG7mf9G1TlJVY0NoinJIJ58eIZD2EZsW3SE0
k+3nDm3FIcriNDpz91XwddXyvqB1NXObRjzx6QBXaFUBsvDcazqnlRM0tEcRFG+F7nJblewCbQw/
vXEUhkFx+dL7sKrnxIJPcqDXvoDIERc/mLOg4lrwcUKBJUAD4wghDmCIT8CQa1ssRr1p8oJa/lLU
t2/q8s/FPNvutOfuSkD/Us928VZzEQezUXze5EhdgK+upeCzSG4JXvlGO3JYfgG4BES0jz+pOjTW
iUnSAfvc4+kEvpuT49V05c3VFHkzRPVCSScyOgoT6VMVUncUqqjKMjbDT6DkWH+Dqm29V+CKs6TO
hXLmgDsDAUaRuCci0qIbg+uBzCx/6HctHsSAzwxP9EC3dx1POP8racMp1qrHF9Cp7oPEAv+fX+bE
qxIJKt9FLuoKq9esB612pRCUIlOWa2FBAtZ8c8su4WCbTfoucSLvhqbmapj01C9VVDPBSlgAYYJJ
s6D5S3uytqFSlvv4sreRJpgdR/UnvA21HWjR0MUA/HV3x7MzjPBnAawAr2JLVBaS5XCkQkR8krLa
S7LNGH+wnTTJXBAfU/y4kLGbIoYaUyIWq8ni1zXYDmkiV0iX5MssRZgRuHcdgquIx1XPjj0hLbQI
e5qC7nECCo6gkLYhgRlIW9yiWlbrOSFgzHNaE/Z+fqfTWWWKHKq33ccWb7AoToLdf8GjuMlY5xlk
3I657vUcvlktLR+4wOzj+o/PaaDLbuWrw2kyMBJBDu9yZDPQSH28bWFCU7rNgQfmmx5j/AKBGIjD
1xrpzI96Xwc2HkoiXj2gedoX4pEu/SHDA1fUgh4UdLkVOaibb+dOnT1YowX0M8qfOaYmDC55EJyt
jfMvhfhIEsp0q7tPu5zk3t7DsKWWVl4YEDUTXYoBHmRkMeXIBwOUsLUcLWhOPRzZctsAfG1v6iEK
WGT1CWbFwVG8KLAOT9DlmTbp3UDAOrfLeFVNoRvMkquSO3ZYawGzTeD//fIZhEAs4zR/cpqzXUQY
SLuC69Ppzp3+dD3ADTE+EXCMG+GKln27CJg=
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
