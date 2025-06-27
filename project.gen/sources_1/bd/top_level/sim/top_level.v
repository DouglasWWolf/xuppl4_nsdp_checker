//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Jun 27 15:31:20 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module datapath_checker_imp_17S0UTF
   (S_AXI_CC_araddr,
    S_AXI_CC_arready,
    S_AXI_CC_arvalid,
    S_AXI_CC_awaddr,
    S_AXI_CC_awready,
    S_AXI_CC_awvalid,
    S_AXI_CC_bready,
    S_AXI_CC_bresp,
    S_AXI_CC_bvalid,
    S_AXI_CC_rdata,
    S_AXI_CC_rready,
    S_AXI_CC_rresp,
    S_AXI_CC_rvalid,
    S_AXI_CC_wdata,
    S_AXI_CC_wready,
    S_AXI_CC_wstrb,
    S_AXI_CC_wvalid,
    S_AXI_ER0_araddr,
    S_AXI_ER0_arprot,
    S_AXI_ER0_arready,
    S_AXI_ER0_arvalid,
    S_AXI_ER0_awaddr,
    S_AXI_ER0_awprot,
    S_AXI_ER0_awready,
    S_AXI_ER0_awvalid,
    S_AXI_ER0_bready,
    S_AXI_ER0_bresp,
    S_AXI_ER0_bvalid,
    S_AXI_ER0_rdata,
    S_AXI_ER0_rready,
    S_AXI_ER0_rresp,
    S_AXI_ER0_rvalid,
    S_AXI_ER0_wdata,
    S_AXI_ER0_wready,
    S_AXI_ER0_wstrb,
    S_AXI_ER0_wvalid,
    S_AXI_ER1_araddr,
    S_AXI_ER1_arprot,
    S_AXI_ER1_arready,
    S_AXI_ER1_arvalid,
    S_AXI_ER1_awaddr,
    S_AXI_ER1_awprot,
    S_AXI_ER1_awready,
    S_AXI_ER1_awvalid,
    S_AXI_ER1_bready,
    S_AXI_ER1_bresp,
    S_AXI_ER1_bvalid,
    S_AXI_ER1_rdata,
    S_AXI_ER1_rready,
    S_AXI_ER1_rresp,
    S_AXI_ER1_rvalid,
    S_AXI_ER1_wdata,
    S_AXI_ER1_wready,
    S_AXI_ER1_wstrb,
    S_AXI_ER1_wvalid,
    S_AXI_MC_araddr,
    S_AXI_MC_arprot,
    S_AXI_MC_arready,
    S_AXI_MC_arvalid,
    S_AXI_MC_awaddr,
    S_AXI_MC_awprot,
    S_AXI_MC_awready,
    S_AXI_MC_awvalid,
    S_AXI_MC_bready,
    S_AXI_MC_bresp,
    S_AXI_MC_bvalid,
    S_AXI_MC_rdata,
    S_AXI_MC_rready,
    S_AXI_MC_rresp,
    S_AXI_MC_rvalid,
    S_AXI_MC_wdata,
    S_AXI_MC_wready,
    S_AXI_MC_wstrb,
    S_AXI_MC_wvalid,
    ch0_ok,
    ch1_ok,
    clk,
    eth0_rx_tdata,
    eth0_rx_tkeep,
    eth0_rx_tlast,
    eth0_rx_tready,
    eth0_rx_tuser,
    eth0_rx_tvalid,
    eth1_rx_tdata,
    eth1_rx_tkeep,
    eth1_rx_tlast,
    eth1_rx_tready,
    eth1_rx_tuser,
    eth1_rx_tvalid,
    resetn,
    sys_resetn_out);
  input [0:0]S_AXI_CC_araddr;
  output S_AXI_CC_arready;
  input S_AXI_CC_arvalid;
  input [0:0]S_AXI_CC_awaddr;
  output S_AXI_CC_awready;
  input S_AXI_CC_awvalid;
  input S_AXI_CC_bready;
  output [1:0]S_AXI_CC_bresp;
  output S_AXI_CC_bvalid;
  output [31:0]S_AXI_CC_rdata;
  input S_AXI_CC_rready;
  output [1:0]S_AXI_CC_rresp;
  output S_AXI_CC_rvalid;
  input [0:0]S_AXI_CC_wdata;
  output S_AXI_CC_wready;
  input [0:0]S_AXI_CC_wstrb;
  input S_AXI_CC_wvalid;
  input [0:0]S_AXI_ER0_araddr;
  input [2:0]S_AXI_ER0_arprot;
  output S_AXI_ER0_arready;
  input S_AXI_ER0_arvalid;
  input [0:0]S_AXI_ER0_awaddr;
  input [2:0]S_AXI_ER0_awprot;
  output S_AXI_ER0_awready;
  input S_AXI_ER0_awvalid;
  input S_AXI_ER0_bready;
  output [1:0]S_AXI_ER0_bresp;
  output S_AXI_ER0_bvalid;
  output [31:0]S_AXI_ER0_rdata;
  input S_AXI_ER0_rready;
  output [1:0]S_AXI_ER0_rresp;
  output S_AXI_ER0_rvalid;
  input [0:0]S_AXI_ER0_wdata;
  output S_AXI_ER0_wready;
  input [0:0]S_AXI_ER0_wstrb;
  input S_AXI_ER0_wvalid;
  input [0:0]S_AXI_ER1_araddr;
  input [2:0]S_AXI_ER1_arprot;
  output S_AXI_ER1_arready;
  input S_AXI_ER1_arvalid;
  input [0:0]S_AXI_ER1_awaddr;
  input [2:0]S_AXI_ER1_awprot;
  output S_AXI_ER1_awready;
  input S_AXI_ER1_awvalid;
  input S_AXI_ER1_bready;
  output [1:0]S_AXI_ER1_bresp;
  output S_AXI_ER1_bvalid;
  output [31:0]S_AXI_ER1_rdata;
  input S_AXI_ER1_rready;
  output [1:0]S_AXI_ER1_rresp;
  output S_AXI_ER1_rvalid;
  input [0:0]S_AXI_ER1_wdata;
  output S_AXI_ER1_wready;
  input [0:0]S_AXI_ER1_wstrb;
  input S_AXI_ER1_wvalid;
  input [0:0]S_AXI_MC_araddr;
  input [2:0]S_AXI_MC_arprot;
  output S_AXI_MC_arready;
  input S_AXI_MC_arvalid;
  input [0:0]S_AXI_MC_awaddr;
  input [2:0]S_AXI_MC_awprot;
  output S_AXI_MC_awready;
  input S_AXI_MC_awvalid;
  input S_AXI_MC_bready;
  output [1:0]S_AXI_MC_bresp;
  output S_AXI_MC_bvalid;
  output [31:0]S_AXI_MC_rdata;
  input S_AXI_MC_rready;
  output [1:0]S_AXI_MC_rresp;
  output S_AXI_MC_rvalid;
  input [0:0]S_AXI_MC_wdata;
  output S_AXI_MC_wready;
  input [0:0]S_AXI_MC_wstrb;
  input S_AXI_MC_wvalid;
  output ch0_ok;
  output ch1_ok;
  input clk;
  input [511:0]eth0_rx_tdata;
  input [63:0]eth0_rx_tkeep;
  input eth0_rx_tlast;
  output eth0_rx_tready;
  input eth0_rx_tuser;
  input eth0_rx_tvalid;
  input [511:0]eth1_rx_tdata;
  input [63:0]eth1_rx_tkeep;
  input eth1_rx_tlast;
  output eth1_rx_tready;
  input eth1_rx_tuser;
  input eth1_rx_tvalid;
  input resetn;
  output sys_resetn_out;

  wire [0:0]S_AXI_ER1_1_ARADDR;
  wire [2:0]S_AXI_ER1_1_ARPROT;
  wire S_AXI_ER1_1_ARREADY;
  wire S_AXI_ER1_1_ARVALID;
  wire [0:0]S_AXI_ER1_1_AWADDR;
  wire [2:0]S_AXI_ER1_1_AWPROT;
  wire S_AXI_ER1_1_AWREADY;
  wire S_AXI_ER1_1_AWVALID;
  wire S_AXI_ER1_1_BREADY;
  wire [1:0]S_AXI_ER1_1_BRESP;
  wire S_AXI_ER1_1_BVALID;
  wire [31:0]S_AXI_ER1_1_RDATA;
  wire S_AXI_ER1_1_RREADY;
  wire [1:0]S_AXI_ER1_1_RRESP;
  wire S_AXI_ER1_1_RVALID;
  wire [0:0]S_AXI_ER1_1_WDATA;
  wire S_AXI_ER1_1_WREADY;
  wire [0:0]S_AXI_ER1_1_WSTRB;
  wire S_AXI_ER1_1_WVALID;
  wire [0:0]S_AXI_ER_1_ARADDR;
  wire [2:0]S_AXI_ER_1_ARPROT;
  wire S_AXI_ER_1_ARREADY;
  wire S_AXI_ER_1_ARVALID;
  wire [0:0]S_AXI_ER_1_AWADDR;
  wire [2:0]S_AXI_ER_1_AWPROT;
  wire S_AXI_ER_1_AWREADY;
  wire S_AXI_ER_1_AWVALID;
  wire S_AXI_ER_1_BREADY;
  wire [1:0]S_AXI_ER_1_BRESP;
  wire S_AXI_ER_1_BVALID;
  wire [31:0]S_AXI_ER_1_RDATA;
  wire S_AXI_ER_1_RREADY;
  wire [1:0]S_AXI_ER_1_RRESP;
  wire S_AXI_ER_1_RVALID;
  wire [0:0]S_AXI_ER_1_WDATA;
  wire S_AXI_ER_1_WREADY;
  wire [0:0]S_AXI_ER_1_WSTRB;
  wire S_AXI_ER_1_WVALID;
  wire [0:0]S_AXI_MC_1_ARADDR;
  wire [2:0]S_AXI_MC_1_ARPROT;
  wire S_AXI_MC_1_ARREADY;
  wire S_AXI_MC_1_ARVALID;
  wire [0:0]S_AXI_MC_1_AWADDR;
  wire [2:0]S_AXI_MC_1_AWPROT;
  wire S_AXI_MC_1_AWREADY;
  wire S_AXI_MC_1_AWVALID;
  wire S_AXI_MC_1_BREADY;
  wire [1:0]S_AXI_MC_1_BRESP;
  wire S_AXI_MC_1_BVALID;
  wire [31:0]S_AXI_MC_1_RDATA;
  wire S_AXI_MC_1_RREADY;
  wire [1:0]S_AXI_MC_1_RRESP;
  wire S_AXI_MC_1_RVALID;
  wire [0:0]S_AXI_MC_1_WDATA;
  wire S_AXI_MC_1_WREADY;
  wire [0:0]S_AXI_MC_1_WSTRB;
  wire S_AXI_MC_1_WVALID;
  wire [31:0]axis_duplicate_axis_out0_TDATA;
  wire axis_duplicate_axis_out0_TREADY;
  wire axis_duplicate_axis_out0_TVALID;
  wire [31:0]axis_duplicate_axis_out1_TDATA;
  wire axis_duplicate_axis_out1_TREADY;
  wire axis_duplicate_axis_out1_TVALID;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]bad_packet_filter_0_AXIS_OUT_TDATA;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]bad_packet_filter_0_AXIS_OUT_TKEEP;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire bad_packet_filter_0_AXIS_OUT_TLAST;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire bad_packet_filter_0_AXIS_OUT_TREADY;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire bad_packet_filter_0_AXIS_OUT_TUSER;
  (* CONN_BUS_INFO = "bad_packet_filter_0_AXIS_OUT xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire bad_packet_filter_0_AXIS_OUT_TVALID;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]bad_packet_filter_1_AXIS_OUT_TDATA;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]bad_packet_filter_1_AXIS_OUT_TKEEP;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire bad_packet_filter_1_AXIS_OUT_TLAST;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire bad_packet_filter_1_AXIS_OUT_TREADY;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire bad_packet_filter_1_AXIS_OUT_TUSER;
  (* CONN_BUS_INFO = "bad_packet_filter_1_AXIS_OUT xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire bad_packet_filter_1_AXIS_OUT_TVALID;
  wire ch0_ok;
  wire ch1_ok;
  wire checker_ctl_sys_resetn_out;
  wire [31:0]checker_output_TDATA;
  wire checker_output_TREADY;
  wire checker_output_TVALID;
  wire [31:0]mindy_core_ctl_0_FRAME_SIZE;
  wire [15:0]mindy_core_ctl_0_PACKET_SIZE;
  wire [31:0]mindy_core_ctl_PACKETS_PER_GROUP;
  wire [63:0]mindy_core_ctl_RFC_ADDR;
  wire [63:0]mindy_core_ctl_RFD_ADDR;
  wire [63:0]mindy_core_ctl_RFD_SIZE;
  wire [63:0]mindy_core_ctl_RMD_ADDR;
  wire [63:0]mindy_core_ctl_RMD_SIZE;
  wire mindy_core_ctl_channel0;
  wire mindy_core_ctl_channel1;
  wire mindy_core_ctl_ignore_rdmx_flags;
  wire pcie_axi_aclk;
  wire [0:0]smartconnect_M00_AXI_ARADDR;
  wire smartconnect_M00_AXI_ARREADY;
  wire smartconnect_M00_AXI_ARVALID;
  wire [0:0]smartconnect_M00_AXI_AWADDR;
  wire smartconnect_M00_AXI_AWREADY;
  wire smartconnect_M00_AXI_AWVALID;
  wire smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire [0:0]smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire [0:0]smartconnect_M00_AXI_WSTRB;
  wire smartconnect_M00_AXI_WVALID;
  wire source_200Mhz_resetn;

  assign S_AXI_CC_arready = smartconnect_M00_AXI_ARREADY;
  assign S_AXI_CC_awready = smartconnect_M00_AXI_AWREADY;
  assign S_AXI_CC_bresp[1:0] = smartconnect_M00_AXI_BRESP;
  assign S_AXI_CC_bvalid = smartconnect_M00_AXI_BVALID;
  assign S_AXI_CC_rdata[31:0] = smartconnect_M00_AXI_RDATA;
  assign S_AXI_CC_rresp[1:0] = smartconnect_M00_AXI_RRESP;
  assign S_AXI_CC_rvalid = smartconnect_M00_AXI_RVALID;
  assign S_AXI_CC_wready = smartconnect_M00_AXI_WREADY;
  assign S_AXI_ER0_arready = S_AXI_ER_1_ARREADY;
  assign S_AXI_ER0_awready = S_AXI_ER_1_AWREADY;
  assign S_AXI_ER0_bresp[1:0] = S_AXI_ER_1_BRESP;
  assign S_AXI_ER0_bvalid = S_AXI_ER_1_BVALID;
  assign S_AXI_ER0_rdata[31:0] = S_AXI_ER_1_RDATA;
  assign S_AXI_ER0_rresp[1:0] = S_AXI_ER_1_RRESP;
  assign S_AXI_ER0_rvalid = S_AXI_ER_1_RVALID;
  assign S_AXI_ER0_wready = S_AXI_ER_1_WREADY;
  assign S_AXI_ER1_1_ARADDR = S_AXI_ER1_araddr[0];
  assign S_AXI_ER1_1_ARPROT = S_AXI_ER1_arprot[2:0];
  assign S_AXI_ER1_1_ARVALID = S_AXI_ER1_arvalid;
  assign S_AXI_ER1_1_AWADDR = S_AXI_ER1_awaddr[0];
  assign S_AXI_ER1_1_AWPROT = S_AXI_ER1_awprot[2:0];
  assign S_AXI_ER1_1_AWVALID = S_AXI_ER1_awvalid;
  assign S_AXI_ER1_1_BREADY = S_AXI_ER1_bready;
  assign S_AXI_ER1_1_RREADY = S_AXI_ER1_rready;
  assign S_AXI_ER1_1_WDATA = S_AXI_ER1_wdata[0];
  assign S_AXI_ER1_1_WSTRB = S_AXI_ER1_wstrb[0];
  assign S_AXI_ER1_1_WVALID = S_AXI_ER1_wvalid;
  assign S_AXI_ER1_arready = S_AXI_ER1_1_ARREADY;
  assign S_AXI_ER1_awready = S_AXI_ER1_1_AWREADY;
  assign S_AXI_ER1_bresp[1:0] = S_AXI_ER1_1_BRESP;
  assign S_AXI_ER1_bvalid = S_AXI_ER1_1_BVALID;
  assign S_AXI_ER1_rdata[31:0] = S_AXI_ER1_1_RDATA;
  assign S_AXI_ER1_rresp[1:0] = S_AXI_ER1_1_RRESP;
  assign S_AXI_ER1_rvalid = S_AXI_ER1_1_RVALID;
  assign S_AXI_ER1_wready = S_AXI_ER1_1_WREADY;
  assign S_AXI_ER_1_ARADDR = S_AXI_ER0_araddr[0];
  assign S_AXI_ER_1_ARPROT = S_AXI_ER0_arprot[2:0];
  assign S_AXI_ER_1_ARVALID = S_AXI_ER0_arvalid;
  assign S_AXI_ER_1_AWADDR = S_AXI_ER0_awaddr[0];
  assign S_AXI_ER_1_AWPROT = S_AXI_ER0_awprot[2:0];
  assign S_AXI_ER_1_AWVALID = S_AXI_ER0_awvalid;
  assign S_AXI_ER_1_BREADY = S_AXI_ER0_bready;
  assign S_AXI_ER_1_RREADY = S_AXI_ER0_rready;
  assign S_AXI_ER_1_WDATA = S_AXI_ER0_wdata[0];
  assign S_AXI_ER_1_WSTRB = S_AXI_ER0_wstrb[0];
  assign S_AXI_ER_1_WVALID = S_AXI_ER0_wvalid;
  assign S_AXI_MC_1_ARADDR = S_AXI_MC_araddr[0];
  assign S_AXI_MC_1_ARPROT = S_AXI_MC_arprot[2:0];
  assign S_AXI_MC_1_ARVALID = S_AXI_MC_arvalid;
  assign S_AXI_MC_1_AWADDR = S_AXI_MC_awaddr[0];
  assign S_AXI_MC_1_AWPROT = S_AXI_MC_awprot[2:0];
  assign S_AXI_MC_1_AWVALID = S_AXI_MC_awvalid;
  assign S_AXI_MC_1_BREADY = S_AXI_MC_bready;
  assign S_AXI_MC_1_RREADY = S_AXI_MC_rready;
  assign S_AXI_MC_1_WDATA = S_AXI_MC_wdata[0];
  assign S_AXI_MC_1_WSTRB = S_AXI_MC_wstrb[0];
  assign S_AXI_MC_1_WVALID = S_AXI_MC_wvalid;
  assign S_AXI_MC_arready = S_AXI_MC_1_ARREADY;
  assign S_AXI_MC_awready = S_AXI_MC_1_AWREADY;
  assign S_AXI_MC_bresp[1:0] = S_AXI_MC_1_BRESP;
  assign S_AXI_MC_bvalid = S_AXI_MC_1_BVALID;
  assign S_AXI_MC_rdata[31:0] = S_AXI_MC_1_RDATA;
  assign S_AXI_MC_rresp[1:0] = S_AXI_MC_1_RRESP;
  assign S_AXI_MC_rvalid = S_AXI_MC_1_RVALID;
  assign S_AXI_MC_wready = S_AXI_MC_1_WREADY;
  assign bad_packet_filter_0_AXIS_OUT_TDATA = eth0_rx_tdata[511:0];
  assign bad_packet_filter_0_AXIS_OUT_TKEEP = eth0_rx_tkeep[63:0];
  assign bad_packet_filter_0_AXIS_OUT_TLAST = eth0_rx_tlast;
  assign bad_packet_filter_0_AXIS_OUT_TUSER = eth0_rx_tuser;
  assign bad_packet_filter_0_AXIS_OUT_TVALID = eth0_rx_tvalid;
  assign bad_packet_filter_1_AXIS_OUT_TDATA = eth1_rx_tdata[511:0];
  assign bad_packet_filter_1_AXIS_OUT_TKEEP = eth1_rx_tkeep[63:0];
  assign bad_packet_filter_1_AXIS_OUT_TLAST = eth1_rx_tlast;
  assign bad_packet_filter_1_AXIS_OUT_TUSER = eth1_rx_tuser;
  assign bad_packet_filter_1_AXIS_OUT_TVALID = eth1_rx_tvalid;
  assign eth0_rx_tready = bad_packet_filter_0_AXIS_OUT_TREADY;
  assign eth1_rx_tready = bad_packet_filter_1_AXIS_OUT_TREADY;
  assign pcie_axi_aclk = clk;
  assign smartconnect_M00_AXI_ARADDR = S_AXI_CC_araddr[0];
  assign smartconnect_M00_AXI_ARVALID = S_AXI_CC_arvalid;
  assign smartconnect_M00_AXI_AWADDR = S_AXI_CC_awaddr[0];
  assign smartconnect_M00_AXI_AWVALID = S_AXI_CC_awvalid;
  assign smartconnect_M00_AXI_BREADY = S_AXI_CC_bready;
  assign smartconnect_M00_AXI_RREADY = S_AXI_CC_rready;
  assign smartconnect_M00_AXI_WDATA = S_AXI_CC_wdata[0];
  assign smartconnect_M00_AXI_WSTRB = S_AXI_CC_wstrb[0];
  assign smartconnect_M00_AXI_WVALID = S_AXI_CC_wvalid;
  assign source_200Mhz_resetn = resetn;
  assign sys_resetn_out = checker_ctl_sys_resetn_out;
  top_level_axis_duplicate_0_0 axis_duplicate
       (.axis_in_tdata(checker_output_TDATA),
        .axis_in_tready(checker_output_TREADY),
        .axis_in_tvalid(checker_output_TVALID),
        .axis_out0_tdata(axis_duplicate_axis_out0_TDATA),
        .axis_out0_tready(axis_duplicate_axis_out0_TREADY),
        .axis_out0_tvalid(axis_duplicate_axis_out0_TVALID),
        .axis_out1_tdata(axis_duplicate_axis_out1_TDATA),
        .axis_out1_tready(axis_duplicate_axis_out1_TREADY),
        .axis_out1_tvalid(axis_duplicate_axis_out1_TVALID),
        .clk(pcie_axi_aclk),
        .resetn(checker_ctl_sys_resetn_out));
  top_level_checker_ctl_0_0 checker_ctl
       (.AXIS_OUT_TDATA(checker_output_TDATA),
        .AXIS_OUT_TREADY(checker_output_TREADY),
        .AXIS_OUT_TVALID(checker_output_TVALID),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,smartconnect_M00_AXI_ARADDR}),
        .S_AXI_ARREADY(smartconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,smartconnect_M00_AXI_AWADDR}),
        .S_AXI_AWREADY(smartconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,smartconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,smartconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M00_AXI_WVALID),
        .clk(pcie_axi_aclk),
        .resetn(source_200Mhz_resetn),
        .sys_resetn_out(checker_ctl_sys_resetn_out));
  top_level_system_ila_0_4 eth_rx_ila
       (.SLOT_0_AXIS_tdata(bad_packet_filter_0_AXIS_OUT_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(bad_packet_filter_0_AXIS_OUT_TKEEP[0]),
        .SLOT_0_AXIS_tlast(bad_packet_filter_0_AXIS_OUT_TLAST),
        .SLOT_0_AXIS_tready(bad_packet_filter_0_AXIS_OUT_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(bad_packet_filter_0_AXIS_OUT_TUSER),
        .SLOT_0_AXIS_tvalid(bad_packet_filter_0_AXIS_OUT_TVALID),
        .SLOT_1_AXIS_tdata(bad_packet_filter_1_AXIS_OUT_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(bad_packet_filter_1_AXIS_OUT_TKEEP[0]),
        .SLOT_1_AXIS_tlast(bad_packet_filter_1_AXIS_OUT_TLAST),
        .SLOT_1_AXIS_tready(bad_packet_filter_1_AXIS_OUT_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(bad_packet_filter_1_AXIS_OUT_TUSER),
        .SLOT_1_AXIS_tvalid(bad_packet_filter_1_AXIS_OUT_TVALID),
        .clk(pcie_axi_aclk),
        .probe0(ch0_ok),
        .probe1(ch1_ok),
        .resetn(1'b0));
  top_level_mindy_core_ctl_0_0 mindy_core_ctl
       (.FRAME_SIZE(mindy_core_ctl_0_FRAME_SIZE),
        .PACKETS_PER_GROUP(mindy_core_ctl_PACKETS_PER_GROUP),
        .PACKET_SIZE(mindy_core_ctl_0_PACKET_SIZE),
        .RFC_ADDR(mindy_core_ctl_RFC_ADDR),
        .RFD_ADDR(mindy_core_ctl_RFD_ADDR),
        .RFD_SIZE(mindy_core_ctl_RFD_SIZE),
        .RMD_ADDR(mindy_core_ctl_RMD_ADDR),
        .RMD_SIZE(mindy_core_ctl_RMD_SIZE),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_MC_1_ARADDR}),
        .S_AXI_ARPROT(S_AXI_MC_1_ARPROT),
        .S_AXI_ARREADY(S_AXI_MC_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_MC_1_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_MC_1_AWADDR}),
        .S_AXI_AWPROT(S_AXI_MC_1_AWPROT),
        .S_AXI_AWREADY(S_AXI_MC_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_MC_1_AWVALID),
        .S_AXI_BREADY(S_AXI_MC_1_BREADY),
        .S_AXI_BRESP(S_AXI_MC_1_BRESP),
        .S_AXI_BVALID(S_AXI_MC_1_BVALID),
        .S_AXI_RDATA(S_AXI_MC_1_RDATA),
        .S_AXI_RREADY(S_AXI_MC_1_RREADY),
        .S_AXI_RRESP(S_AXI_MC_1_RRESP),
        .S_AXI_RVALID(S_AXI_MC_1_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_MC_1_WDATA}),
        .S_AXI_WREADY(S_AXI_MC_1_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,S_AXI_MC_1_WSTRB}),
        .S_AXI_WVALID(S_AXI_MC_1_WVALID),
        .channel_0(mindy_core_ctl_channel0),
        .channel_1(mindy_core_ctl_channel1),
        .clk(pcie_axi_aclk),
        .ignore_rdmx_flags(mindy_core_ctl_ignore_rdmx_flags),
        .resetn(source_200Mhz_resetn));
  reporter_0_imp_14RIEO2 reporter_0
       (.FRAME_SIZE(mindy_core_ctl_0_FRAME_SIZE),
        .PACKETS_PER_GROUP(mindy_core_ctl_PACKETS_PER_GROUP),
        .PACKET_SIZE(mindy_core_ctl_0_PACKET_SIZE),
        .RFC_ADDR(mindy_core_ctl_RFC_ADDR),
        .RFD_ADDR(mindy_core_ctl_RFD_ADDR),
        .RFD_SIZE(mindy_core_ctl_RFD_SIZE),
        .RMD_ADDR(mindy_core_ctl_RMD_ADDR),
        .RMD_SIZE1(mindy_core_ctl_RMD_SIZE),
        .S_AXI_ER_araddr(S_AXI_ER_1_ARADDR),
        .S_AXI_ER_arprot(S_AXI_ER_1_ARPROT),
        .S_AXI_ER_arready(S_AXI_ER_1_ARREADY),
        .S_AXI_ER_arvalid(S_AXI_ER_1_ARVALID),
        .S_AXI_ER_awaddr(S_AXI_ER_1_AWADDR),
        .S_AXI_ER_awprot(S_AXI_ER_1_AWPROT),
        .S_AXI_ER_awready(S_AXI_ER_1_AWREADY),
        .S_AXI_ER_awvalid(S_AXI_ER_1_AWVALID),
        .S_AXI_ER_bready(S_AXI_ER_1_BREADY),
        .S_AXI_ER_bresp(S_AXI_ER_1_BRESP),
        .S_AXI_ER_bvalid(S_AXI_ER_1_BVALID),
        .S_AXI_ER_rdata(S_AXI_ER_1_RDATA),
        .S_AXI_ER_rready(S_AXI_ER_1_RREADY),
        .S_AXI_ER_rresp(S_AXI_ER_1_RRESP),
        .S_AXI_ER_rvalid(S_AXI_ER_1_RVALID),
        .S_AXI_ER_wdata(S_AXI_ER_1_WDATA),
        .S_AXI_ER_wready(S_AXI_ER_1_WREADY),
        .S_AXI_ER_wstrb(S_AXI_ER_1_WSTRB),
        .S_AXI_ER_wvalid(S_AXI_ER_1_WVALID),
        .axis_in_tdata(axis_duplicate_axis_out0_TDATA),
        .axis_in_tready(axis_duplicate_axis_out0_TREADY),
        .axis_in_tvalid(axis_duplicate_axis_out0_TVALID),
        .chan_ok(ch0_ok),
        .channel(mindy_core_ctl_channel0),
        .clk(pcie_axi_aclk),
        .eth_rx_tdata(bad_packet_filter_0_AXIS_OUT_TDATA),
        .eth_rx_tkeep(bad_packet_filter_0_AXIS_OUT_TKEEP),
        .eth_rx_tlast(bad_packet_filter_0_AXIS_OUT_TLAST),
        .eth_rx_tready(bad_packet_filter_0_AXIS_OUT_TREADY),
        .eth_rx_tuser(bad_packet_filter_0_AXIS_OUT_TUSER),
        .eth_rx_tvalid(bad_packet_filter_0_AXIS_OUT_TVALID),
        .ignore_rdmx_flags(mindy_core_ctl_ignore_rdmx_flags),
        .sys_resetn(checker_ctl_sys_resetn_out));
  reporter_1_imp_YQ6NLO reporter_1
       (.FRAME_SIZE(mindy_core_ctl_0_FRAME_SIZE),
        .PACKETS_PER_GROUP(mindy_core_ctl_PACKETS_PER_GROUP),
        .PACKET_SIZE(mindy_core_ctl_0_PACKET_SIZE),
        .RFC_ADDR(mindy_core_ctl_RFC_ADDR),
        .RFD_ADDR(mindy_core_ctl_RFD_ADDR),
        .RFD_SIZE(mindy_core_ctl_RFD_SIZE),
        .RMD_ADDR(mindy_core_ctl_RMD_ADDR),
        .RMD_SIZE(mindy_core_ctl_RMD_SIZE),
        .S_AXI_ER_araddr(S_AXI_ER1_1_ARADDR),
        .S_AXI_ER_arprot(S_AXI_ER1_1_ARPROT),
        .S_AXI_ER_arready(S_AXI_ER1_1_ARREADY),
        .S_AXI_ER_arvalid(S_AXI_ER1_1_ARVALID),
        .S_AXI_ER_awaddr(S_AXI_ER1_1_AWADDR),
        .S_AXI_ER_awprot(S_AXI_ER1_1_AWPROT),
        .S_AXI_ER_awready(S_AXI_ER1_1_AWREADY),
        .S_AXI_ER_awvalid(S_AXI_ER1_1_AWVALID),
        .S_AXI_ER_bready(S_AXI_ER1_1_BREADY),
        .S_AXI_ER_bresp(S_AXI_ER1_1_BRESP),
        .S_AXI_ER_bvalid(S_AXI_ER1_1_BVALID),
        .S_AXI_ER_rdata(S_AXI_ER1_1_RDATA),
        .S_AXI_ER_rready(S_AXI_ER1_1_RREADY),
        .S_AXI_ER_rresp(S_AXI_ER1_1_RRESP),
        .S_AXI_ER_rvalid(S_AXI_ER1_1_RVALID),
        .S_AXI_ER_wdata(S_AXI_ER1_1_WDATA),
        .S_AXI_ER_wready(S_AXI_ER1_1_WREADY),
        .S_AXI_ER_wstrb(S_AXI_ER1_1_WSTRB),
        .S_AXI_ER_wvalid(S_AXI_ER1_1_WVALID),
        .axis_in_tdata(axis_duplicate_axis_out1_TDATA),
        .axis_in_tready(axis_duplicate_axis_out1_TREADY),
        .axis_in_tvalid(axis_duplicate_axis_out1_TVALID),
        .chan_ok(ch1_ok),
        .channel(mindy_core_ctl_channel1),
        .clk(pcie_axi_aclk),
        .eth_rx_tdata(bad_packet_filter_1_AXIS_OUT_TDATA),
        .eth_rx_tkeep(bad_packet_filter_1_AXIS_OUT_TKEEP),
        .eth_rx_tlast(bad_packet_filter_1_AXIS_OUT_TLAST),
        .eth_rx_tready(bad_packet_filter_1_AXIS_OUT_TREADY),
        .eth_rx_tuser(bad_packet_filter_1_AXIS_OUT_TUSER),
        .eth_rx_tvalid(bad_packet_filter_1_AXIS_OUT_TVALID),
        .ignore_rdmx_flags(mindy_core_ctl_ignore_rdmx_flags),
        .sys_resetn(checker_ctl_sys_resetn_out));
endmodule

module eth_0_imp_INHW46
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    stream_clk,
    stream_resetn,
    sys_resetn_in);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input axis_tx_tdata;
  input axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output stream_clk;
  output stream_resetn;
  input [0:0]sys_resetn_in;

  wire [511:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire axis_tx_1_TDATA;
  wire axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire [511:0]cmac_control_rx_out_TDATA;
  wire [63:0]cmac_control_rx_out_TKEEP;
  wire cmac_control_rx_out_TLAST;
  wire cmac_control_rx_out_TUSER;
  wire cmac_control_rx_out_TVALID;
  wire cmac_control_sys_resetn_out;
  wire cmac_gt_rxusrclk2;
  wire cmac_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_0_1;
  wire startup_delay_reset_out;
  wire [0:0]sys_resetn_in_1;

  assign aligned = cmac_stat_rx_aligned;
  assign axis_rx_tdata[511:0] = cmac_control_rx_out_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_control_rx_out_TKEEP;
  assign axis_rx_tlast = cmac_control_rx_out_TLAST;
  assign axis_rx_tuser = cmac_control_rx_out_TUSER;
  assign axis_rx_tvalid = cmac_control_rx_out_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata;
  assign axis_tx_1_TKEEP = axis_tx_tkeep;
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp_clk_clk_p;
  assign init_clk_0_1 = init_clk;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_control_sys_resetn_out;
  assign sys_resetn_in_1 = sys_resetn_in[0];
  top_level_axis_register_slice_0_2 axis_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(cmac_control_sys_resetn_out),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata({axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA}),
        .s_axis_tkeep({axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP}),
        .s_axis_tlast(axis_tx_1_TLAST),
        .s_axis_tready(axis_tx_1_TREADY),
        .s_axis_tvalid(axis_tx_1_TVALID));
  top_level_cmac_usplus_0_0 cmac
       (.core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_0_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_0_1_CLK_N),
        .gt_ref_clk_p(gt_ref_clk_0_1_CLK_P),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_0_1),
        .rx_axis_tdata(cmac_control_rx_out_TDATA),
        .rx_axis_tkeep(cmac_control_rx_out_TKEEP),
        .rx_axis_tlast(cmac_control_rx_out_TLAST),
        .rx_axis_tuser(cmac_control_rx_out_TUSER),
        .rx_axis_tvalid(cmac_control_rx_out_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_reset(startup_delay_reset_out),
        .tx_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .tx_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .tx_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .tx_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_0_0 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_gt_rxusrclk2),
        .rx_resetn_out(cmac_control_sys_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_resetn_in(sys_resetn_in_1));
  top_level_startup_delay_0_0 startup_delay
       (.clk(init_clk_0_1),
        .reset_out(startup_delay_reset_out));
endmodule

module eth_1_imp_1BZVVMW
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    stream_clk,
    stream_resetn,
    sys_resetn_in);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input axis_tx_tdata;
  input axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  output stream_clk;
  output stream_resetn;
  input [0:0]sys_resetn_in;

  wire [511:0]axis_register_slice_M_AXIS_TDATA;
  wire [63:0]axis_register_slice_M_AXIS_TKEEP;
  wire axis_register_slice_M_AXIS_TLAST;
  wire axis_register_slice_M_AXIS_TREADY;
  wire axis_register_slice_M_AXIS_TVALID;
  wire axis_tx_1_TDATA;
  wire axis_tx_1_TKEEP;
  wire axis_tx_1_TLAST;
  wire axis_tx_1_TREADY;
  wire axis_tx_1_TVALID;
  wire cmac_control_ctl_rx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_enable;
  wire cmac_control_ctl_tx_ctl_tx_send_rfi;
  wire cmac_control_reset_rx_datapath;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_rs_fec_ctl_tx_rsfec_enable;
  wire [511:0]cmac_control_rx_out_TDATA;
  wire [63:0]cmac_control_rx_out_TKEEP;
  wire cmac_control_rx_out_TLAST;
  wire cmac_control_rx_out_TUSER;
  wire cmac_control_rx_out_TVALID;
  wire cmac_control_sys_resetn_out;
  wire cmac_gt_rxusrclk2;
  wire cmac_stat_rx_aligned;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_1;
  wire startup_delay_reset_out;
  wire [0:0]sys_resetn_in_1;

  assign aligned = cmac_stat_rx_aligned;
  assign axis_rx_tdata[511:0] = cmac_control_rx_out_TDATA;
  assign axis_rx_tkeep[63:0] = cmac_control_rx_out_TKEEP;
  assign axis_rx_tlast = cmac_control_rx_out_TLAST;
  assign axis_rx_tuser = cmac_control_rx_out_TUSER;
  assign axis_rx_tvalid = cmac_control_rx_out_TVALID;
  assign axis_tx_1_TDATA = axis_tx_tdata;
  assign axis_tx_1_TKEEP = axis_tx_tkeep;
  assign axis_tx_1_TLAST = axis_tx_tlast;
  assign axis_tx_1_TVALID = axis_tx_tvalid;
  assign axis_tx_tready = axis_tx_1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp_clk_clk_p;
  assign init_clk_1 = init_clk;
  assign qsfp_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign stream_clk = cmac_gt_rxusrclk2;
  assign stream_resetn = cmac_control_sys_resetn_out;
  assign sys_resetn_in_1 = sys_resetn_in[0];
  top_level_axis_register_slice_1 axis_register_slice
       (.aclk(cmac_gt_rxusrclk2),
        .aresetn(cmac_control_sys_resetn_out),
        .m_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_M_AXIS_TVALID),
        .s_axis_tdata({axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA,axis_tx_1_TDATA}),
        .s_axis_tkeep({axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP,axis_tx_1_TKEEP}),
        .s_axis_tlast(axis_tx_1_TLAST),
        .s_axis_tready(axis_tx_1_TREADY),
        .s_axis_tvalid(axis_tx_1_TVALID));
  top_level_cmac_0 cmac
       (.core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk_1),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(gt_ref_clk_0_1_CLK_N),
        .gt_ref_clk_p(gt_ref_clk_0_1_CLK_P),
        .gt_rxn_in(cmac_usplus_0_gt_serial_port_GRX_N),
        .gt_rxp_in(cmac_usplus_0_gt_serial_port_GRX_P),
        .gt_txn_out(cmac_usplus_0_gt_serial_port_GTX_N),
        .gt_txp_out(cmac_usplus_0_gt_serial_port_GTX_P),
        .gt_txusrclk2(cmac_gt_rxusrclk2),
        .gtwiz_reset_rx_datapath(cmac_control_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk_1),
        .rx_axis_tdata(cmac_control_rx_out_TDATA),
        .rx_axis_tkeep(cmac_control_rx_out_TKEEP),
        .rx_axis_tlast(cmac_control_rx_out_TLAST),
        .rx_axis_tuser(cmac_control_rx_out_TUSER),
        .rx_axis_tvalid(cmac_control_rx_out_TVALID),
        .rx_clk(cmac_gt_rxusrclk2),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_reset(startup_delay_reset_out),
        .tx_axis_tdata(axis_register_slice_M_AXIS_TDATA),
        .tx_axis_tkeep(axis_register_slice_M_AXIS_TKEEP),
        .tx_axis_tlast(axis_register_slice_M_AXIS_TLAST),
        .tx_axis_tready(axis_register_slice_M_AXIS_TREADY),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(axis_register_slice_M_AXIS_TVALID),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_1 cmac_control
       (.ctl_rx_enable(cmac_control_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ctl_tx_ctl_tx_send_rfi),
        .reset_rx_datapath(cmac_control_reset_rx_datapath),
        .rx_clk(cmac_gt_rxusrclk2),
        .rx_resetn_out(cmac_control_sys_resetn_out),
        .stat_rx_aligned(cmac_stat_rx_aligned),
        .sys_resetn_in(sys_resetn_in_1));
  top_level_startup_delay_0_1 startup_delay
       (.clk(init_clk_1),
        .reset_out(startup_delay_reset_out));
endmodule

module ethernet_imp_1SW6PPD
   (ETH0_RX_tdata,
    ETH0_RX_tkeep,
    ETH0_RX_tlast,
    ETH0_RX_tready,
    ETH0_RX_tuser,
    ETH0_RX_tvalid,
    ETH1_RX_tdata,
    ETH1_RX_tkeep,
    ETH1_RX_tlast,
    ETH1_RX_tready,
    ETH1_RX_tuser,
    ETH1_RX_tvalid,
    S_AXI_ETH_STATUS_araddr,
    S_AXI_ETH_STATUS_arready,
    S_AXI_ETH_STATUS_arvalid,
    S_AXI_ETH_STATUS_awaddr,
    S_AXI_ETH_STATUS_awready,
    S_AXI_ETH_STATUS_awvalid,
    S_AXI_ETH_STATUS_bready,
    S_AXI_ETH_STATUS_bresp,
    S_AXI_ETH_STATUS_bvalid,
    S_AXI_ETH_STATUS_rdata,
    S_AXI_ETH_STATUS_rready,
    S_AXI_ETH_STATUS_rresp,
    S_AXI_ETH_STATUS_rvalid,
    S_AXI_ETH_STATUS_wdata,
    S_AXI_ETH_STATUS_wready,
    S_AXI_ETH_STATUS_wstrb,
    S_AXI_ETH_STATUS_wvalid,
    axis_tx0_tdata,
    axis_tx0_tkeep,
    axis_tx0_tlast,
    axis_tx0_tready,
    axis_tx0_tvalid,
    axis_tx1_tdata,
    axis_tx1_tkeep,
    axis_tx1_tlast,
    axis_tx1_tready,
    axis_tx1_tvalid,
    eth0_tx_clk,
    eth1_tx_clk,
    init_clk,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_up,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_up,
    sys_clk,
    sys_resetn);
  output [511:0]ETH0_RX_tdata;
  output [63:0]ETH0_RX_tkeep;
  output ETH0_RX_tlast;
  input ETH0_RX_tready;
  output ETH0_RX_tuser;
  output ETH0_RX_tvalid;
  output [511:0]ETH1_RX_tdata;
  output [63:0]ETH1_RX_tkeep;
  output ETH1_RX_tlast;
  input ETH1_RX_tready;
  output ETH1_RX_tuser;
  output ETH1_RX_tvalid;
  input S_AXI_ETH_STATUS_araddr;
  output [0:0]S_AXI_ETH_STATUS_arready;
  input [0:0]S_AXI_ETH_STATUS_arvalid;
  input S_AXI_ETH_STATUS_awaddr;
  output [0:0]S_AXI_ETH_STATUS_awready;
  input [0:0]S_AXI_ETH_STATUS_awvalid;
  input [0:0]S_AXI_ETH_STATUS_bready;
  output [1:0]S_AXI_ETH_STATUS_bresp;
  output [0:0]S_AXI_ETH_STATUS_bvalid;
  output S_AXI_ETH_STATUS_rdata;
  input [0:0]S_AXI_ETH_STATUS_rready;
  output [1:0]S_AXI_ETH_STATUS_rresp;
  output [0:0]S_AXI_ETH_STATUS_rvalid;
  input S_AXI_ETH_STATUS_wdata;
  output [0:0]S_AXI_ETH_STATUS_wready;
  input S_AXI_ETH_STATUS_wstrb;
  input [0:0]S_AXI_ETH_STATUS_wvalid;
  input axis_tx0_tdata;
  input axis_tx0_tkeep;
  input axis_tx0_tlast;
  output axis_tx0_tready;
  input axis_tx0_tvalid;
  input axis_tx1_tdata;
  input axis_tx1_tkeep;
  input axis_tx1_tlast;
  output axis_tx1_tready;
  input axis_tx1_tvalid;
  output eth0_tx_clk;
  output eth1_tx_clk;
  input init_clk;
  input qsfp0_clk_clk_n;
  input qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  output qsfp0_up;
  input qsfp1_clk_clk_n;
  input qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  output qsfp1_up;
  input sys_clk;
  input sys_resetn;

  wire S_AXI_ETH_STATUS_1_ARADDR;
  wire S_AXI_ETH_STATUS_1_ARREADY;
  wire [0:0]S_AXI_ETH_STATUS_1_ARVALID;
  wire S_AXI_ETH_STATUS_1_AWADDR;
  wire S_AXI_ETH_STATUS_1_AWREADY;
  wire [0:0]S_AXI_ETH_STATUS_1_AWVALID;
  wire [0:0]S_AXI_ETH_STATUS_1_BREADY;
  wire [1:0]S_AXI_ETH_STATUS_1_BRESP;
  wire S_AXI_ETH_STATUS_1_BVALID;
  wire [31:0]S_AXI_ETH_STATUS_1_RDATA;
  wire [0:0]S_AXI_ETH_STATUS_1_RREADY;
  wire [1:0]S_AXI_ETH_STATUS_1_RRESP;
  wire S_AXI_ETH_STATUS_1_RVALID;
  wire S_AXI_ETH_STATUS_1_WDATA;
  wire S_AXI_ETH_STATUS_1_WREADY;
  wire S_AXI_ETH_STATUS_1_WSTRB;
  wire [0:0]S_AXI_ETH_STATUS_1_WVALID;
  wire axi_clk_1;
  wire axi_resetn_1;
  wire axis_tx0_1_TDATA;
  wire axis_tx0_1_TKEEP;
  wire axis_tx0_1_TLAST;
  wire axis_tx0_1_TREADY;
  wire axis_tx0_1_TVALID;
  wire axis_tx1_1_TDATA;
  wire axis_tx1_1_TKEEP;
  wire axis_tx1_1_TLAST;
  wire axis_tx1_1_TREADY;
  wire axis_tx1_1_TVALID;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire [511:0]eth_0_axis_rx_TDATA;
  wire [63:0]eth_0_axis_rx_TKEEP;
  wire eth_0_axis_rx_TLAST;
  wire eth_0_axis_rx_TUSER;
  wire eth_0_axis_rx_TVALID;
  wire eth_0_stat_rx_aligned_0;
  wire eth_0_stream_clk;
  wire eth_0_stream_resetn;
  wire [511:0]eth_1_axis_rx_TDATA;
  wire [63:0]eth_1_axis_rx_TKEEP;
  wire eth_1_axis_rx_TLAST;
  wire eth_1_axis_rx_TUSER;
  wire eth_1_axis_rx_TVALID;
  wire [3:0]eth_1_qsfp_gt_GRX_N;
  wire [3:0]eth_1_qsfp_gt_GRX_P;
  wire [3:0]eth_1_qsfp_gt_GTX_N;
  wire [3:0]eth_1_qsfp_gt_GTX_P;
  wire eth_1_stat_rx_aligned_0;
  wire eth_1_stream_clk;
  wire eth_1_stream_resetn;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_0_1;
  wire qsfp_clk_0_1_CLK_N;
  wire qsfp_clk_0_1_CLK_P;
  wire [511:0]rdmx_0_M_AXIS_TDATA;
  wire [63:0]rdmx_0_M_AXIS_TKEEP;
  wire rdmx_0_M_AXIS_TLAST;
  wire rdmx_0_M_AXIS_TREADY;
  wire rdmx_0_M_AXIS_TUSER;
  wire rdmx_0_M_AXIS_TVALID;
  wire [511:0]rdmx_1_M_AXIS_TDATA;
  wire [63:0]rdmx_1_M_AXIS_TKEEP;
  wire rdmx_1_M_AXIS_TLAST;
  wire rdmx_1_M_AXIS_TREADY;
  wire rdmx_1_M_AXIS_TUSER;
  wire rdmx_1_M_AXIS_TVALID;

  assign ETH0_RX_tdata[511:0] = rdmx_0_M_AXIS_TDATA;
  assign ETH0_RX_tkeep[63:0] = rdmx_0_M_AXIS_TKEEP;
  assign ETH0_RX_tlast = rdmx_0_M_AXIS_TLAST;
  assign ETH0_RX_tuser = rdmx_0_M_AXIS_TUSER;
  assign ETH0_RX_tvalid = rdmx_0_M_AXIS_TVALID;
  assign ETH1_RX_tdata[511:0] = rdmx_1_M_AXIS_TDATA;
  assign ETH1_RX_tkeep[63:0] = rdmx_1_M_AXIS_TKEEP;
  assign ETH1_RX_tlast = rdmx_1_M_AXIS_TLAST;
  assign ETH1_RX_tuser = rdmx_1_M_AXIS_TUSER;
  assign ETH1_RX_tvalid = rdmx_1_M_AXIS_TVALID;
  assign S_AXI_ETH_STATUS_1_ARADDR = S_AXI_ETH_STATUS_araddr;
  assign S_AXI_ETH_STATUS_1_ARVALID = S_AXI_ETH_STATUS_arvalid[0];
  assign S_AXI_ETH_STATUS_1_AWADDR = S_AXI_ETH_STATUS_awaddr;
  assign S_AXI_ETH_STATUS_1_AWVALID = S_AXI_ETH_STATUS_awvalid[0];
  assign S_AXI_ETH_STATUS_1_BREADY = S_AXI_ETH_STATUS_bready[0];
  assign S_AXI_ETH_STATUS_1_RREADY = S_AXI_ETH_STATUS_rready[0];
  assign S_AXI_ETH_STATUS_1_WDATA = S_AXI_ETH_STATUS_wdata;
  assign S_AXI_ETH_STATUS_1_WSTRB = S_AXI_ETH_STATUS_wstrb;
  assign S_AXI_ETH_STATUS_1_WVALID = S_AXI_ETH_STATUS_wvalid[0];
  assign S_AXI_ETH_STATUS_arready[0] = S_AXI_ETH_STATUS_1_ARREADY;
  assign S_AXI_ETH_STATUS_awready[0] = S_AXI_ETH_STATUS_1_AWREADY;
  assign S_AXI_ETH_STATUS_bresp[1:0] = S_AXI_ETH_STATUS_1_BRESP;
  assign S_AXI_ETH_STATUS_bvalid[0] = S_AXI_ETH_STATUS_1_BVALID;
  assign S_AXI_ETH_STATUS_rdata = S_AXI_ETH_STATUS_1_RDATA[0];
  assign S_AXI_ETH_STATUS_rresp[1:0] = S_AXI_ETH_STATUS_1_RRESP;
  assign S_AXI_ETH_STATUS_rvalid[0] = S_AXI_ETH_STATUS_1_RVALID;
  assign S_AXI_ETH_STATUS_wready[0] = S_AXI_ETH_STATUS_1_WREADY;
  assign axi_clk_1 = sys_clk;
  assign axi_resetn_1 = sys_resetn;
  assign axis_tx0_1_TDATA = axis_tx0_tdata;
  assign axis_tx0_1_TKEEP = axis_tx0_tkeep;
  assign axis_tx0_1_TLAST = axis_tx0_tlast;
  assign axis_tx0_1_TVALID = axis_tx0_tvalid;
  assign axis_tx0_tready = axis_tx0_1_TREADY;
  assign axis_tx1_1_TDATA = axis_tx1_tdata;
  assign axis_tx1_1_TKEEP = axis_tx1_tkeep;
  assign axis_tx1_1_TLAST = axis_tx1_tlast;
  assign axis_tx1_1_TVALID = axis_tx1_tvalid;
  assign axis_tx1_tready = axis_tx1_1_TREADY;
  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp0_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp0_gt_grx_p[3:0];
  assign eth0_tx_clk = eth_0_stream_clk;
  assign eth1_tx_clk = eth_1_stream_clk;
  assign eth_1_qsfp_gt_GRX_N = qsfp1_gt_grx_n[3:0];
  assign eth_1_qsfp_gt_GRX_P = qsfp1_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp0_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp0_clk_clk_p;
  assign init_clk_0_1 = init_clk;
  assign qsfp0_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp0_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign qsfp0_up = eth_0_stat_rx_aligned_0;
  assign qsfp1_gt_gtx_n[3:0] = eth_1_qsfp_gt_GTX_N;
  assign qsfp1_gt_gtx_p[3:0] = eth_1_qsfp_gt_GTX_P;
  assign qsfp1_up = eth_1_stat_rx_aligned_0;
  assign qsfp_clk_0_1_CLK_N = qsfp1_clk_clk_n;
  assign qsfp_clk_0_1_CLK_P = qsfp1_clk_clk_p;
  assign rdmx_0_M_AXIS_TREADY = ETH0_RX_tready;
  assign rdmx_1_M_AXIS_TREADY = ETH1_RX_tready;
  top_level_axi_eth_status_0_0 axi_eth_status
       (.S_AXI_ARADDR({S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR,S_AXI_ETH_STATUS_1_ARADDR}),
        .S_AXI_ARREADY(S_AXI_ETH_STATUS_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_ETH_STATUS_1_ARVALID),
        .S_AXI_AWADDR({S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR,S_AXI_ETH_STATUS_1_AWADDR}),
        .S_AXI_AWREADY(S_AXI_ETH_STATUS_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_ETH_STATUS_1_AWVALID),
        .S_AXI_BREADY(S_AXI_ETH_STATUS_1_BREADY),
        .S_AXI_BRESP(S_AXI_ETH_STATUS_1_BRESP),
        .S_AXI_BVALID(S_AXI_ETH_STATUS_1_BVALID),
        .S_AXI_RDATA(S_AXI_ETH_STATUS_1_RDATA),
        .S_AXI_RREADY(S_AXI_ETH_STATUS_1_RREADY),
        .S_AXI_RRESP(S_AXI_ETH_STATUS_1_RRESP),
        .S_AXI_RVALID(S_AXI_ETH_STATUS_1_RVALID),
        .S_AXI_WDATA({S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA,S_AXI_ETH_STATUS_1_WDATA}),
        .S_AXI_WREADY(S_AXI_ETH_STATUS_1_WREADY),
        .S_AXI_WSTRB({S_AXI_ETH_STATUS_1_WSTRB,S_AXI_ETH_STATUS_1_WSTRB,S_AXI_ETH_STATUS_1_WSTRB,S_AXI_ETH_STATUS_1_WSTRB}),
        .S_AXI_WVALID(S_AXI_ETH_STATUS_1_WVALID),
        .axi_clk(axi_clk_1),
        .axi_resetn(axi_resetn_1),
        .ss0_channel_up_async(eth_0_stat_rx_aligned_0),
        .ss1_channel_up_async(eth_1_stat_rx_aligned_0));
  eth_0_imp_INHW46 eth_0
       (.aligned(eth_0_stat_rx_aligned_0),
        .axis_rx_tdata(eth_0_axis_rx_TDATA),
        .axis_rx_tkeep(eth_0_axis_rx_TKEEP),
        .axis_rx_tlast(eth_0_axis_rx_TLAST),
        .axis_rx_tuser(eth_0_axis_rx_TUSER),
        .axis_rx_tvalid(eth_0_axis_rx_TVALID),
        .axis_tx_tdata(axis_tx0_1_TDATA),
        .axis_tx_tkeep(axis_tx0_1_TKEEP),
        .axis_tx_tlast(axis_tx0_1_TLAST),
        .axis_tx_tready(axis_tx0_1_TREADY),
        .axis_tx_tvalid(axis_tx0_1_TVALID),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(gt_ref_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(gt_ref_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(cmac_usplus_0_gt_serial_port_GRX_N),
        .qsfp_gt_grx_p(cmac_usplus_0_gt_serial_port_GRX_P),
        .qsfp_gt_gtx_n(cmac_usplus_0_gt_serial_port_GTX_N),
        .qsfp_gt_gtx_p(cmac_usplus_0_gt_serial_port_GTX_P),
        .stream_clk(eth_0_stream_clk),
        .stream_resetn(eth_0_stream_resetn),
        .sys_resetn_in(axi_resetn_1));
  eth_1_imp_1BZVVMW eth_1
       (.aligned(eth_1_stat_rx_aligned_0),
        .axis_rx_tdata(eth_1_axis_rx_TDATA),
        .axis_rx_tkeep(eth_1_axis_rx_TKEEP),
        .axis_rx_tlast(eth_1_axis_rx_TLAST),
        .axis_rx_tuser(eth_1_axis_rx_TUSER),
        .axis_rx_tvalid(eth_1_axis_rx_TVALID),
        .axis_tx_tdata(axis_tx1_1_TDATA),
        .axis_tx_tkeep(axis_tx1_1_TKEEP),
        .axis_tx_tlast(axis_tx1_1_TLAST),
        .axis_tx_tready(axis_tx1_1_TREADY),
        .axis_tx_tvalid(axis_tx1_1_TVALID),
        .init_clk(init_clk_0_1),
        .qsfp_clk_clk_n(qsfp_clk_0_1_CLK_N),
        .qsfp_clk_clk_p(qsfp_clk_0_1_CLK_P),
        .qsfp_gt_grx_n(eth_1_qsfp_gt_GRX_N),
        .qsfp_gt_grx_p(eth_1_qsfp_gt_GRX_P),
        .qsfp_gt_gtx_n(eth_1_qsfp_gt_GTX_N),
        .qsfp_gt_gtx_p(eth_1_qsfp_gt_GTX_P),
        .stream_clk(eth_1_stream_clk),
        .stream_resetn(eth_1_stream_resetn),
        .sys_resetn_in(axi_resetn_1));
  rx0_path_imp_11WKP11 rx0_path
       (.AXIS_IN_tdata(eth_0_axis_rx_TDATA),
        .AXIS_IN_tkeep(eth_0_axis_rx_TKEEP),
        .AXIS_IN_tlast(eth_0_axis_rx_TLAST),
        .AXIS_IN_tuser(eth_0_axis_rx_TUSER),
        .AXIS_IN_tvalid(eth_0_axis_rx_TVALID),
        .M_AXIS_tdata(rdmx_0_M_AXIS_TDATA),
        .M_AXIS_tkeep(rdmx_0_M_AXIS_TKEEP),
        .M_AXIS_tlast(rdmx_0_M_AXIS_TLAST),
        .M_AXIS_tready(rdmx_0_M_AXIS_TREADY),
        .M_AXIS_tuser(rdmx_0_M_AXIS_TUSER),
        .M_AXIS_tvalid(rdmx_0_M_AXIS_TVALID),
        .eth_clk(eth_0_stream_clk),
        .eth_resetn(eth_0_stream_resetn),
        .sys_clk(axi_clk_1));
  rx1_path_imp_DPH8WT rx1_path
       (.AXIS_IN_tdata(eth_1_axis_rx_TDATA),
        .AXIS_IN_tkeep(eth_1_axis_rx_TKEEP),
        .AXIS_IN_tlast(eth_1_axis_rx_TLAST),
        .AXIS_IN_tuser(eth_1_axis_rx_TUSER),
        .AXIS_IN_tvalid(eth_1_axis_rx_TVALID),
        .M_AXIS_tdata(rdmx_1_M_AXIS_TDATA),
        .M_AXIS_tkeep(rdmx_1_M_AXIS_TKEEP),
        .M_AXIS_tlast(rdmx_1_M_AXIS_TLAST),
        .M_AXIS_tready(rdmx_1_M_AXIS_TREADY),
        .M_AXIS_tuser(rdmx_1_M_AXIS_TUSER),
        .M_AXIS_tvalid(rdmx_1_M_AXIS_TVALID),
        .eth_clk(eth_1_stream_clk),
        .eth_resetn(eth_1_stream_resetn),
        .sys_clk(axi_clk_1));
endmodule

module pcie_imp_P7FEFP
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_B_araddr,
    S_AXI_B_arburst,
    S_AXI_B_arid,
    S_AXI_B_arlen,
    S_AXI_B_arready,
    S_AXI_B_arregion,
    S_AXI_B_arsize,
    S_AXI_B_arvalid,
    S_AXI_B_awaddr,
    S_AXI_B_awburst,
    S_AXI_B_awid,
    S_AXI_B_awlen,
    S_AXI_B_awready,
    S_AXI_B_awregion,
    S_AXI_B_awsize,
    S_AXI_B_awvalid,
    S_AXI_B_bid,
    S_AXI_B_bready,
    S_AXI_B_bresp,
    S_AXI_B_bvalid,
    S_AXI_B_rdata,
    S_AXI_B_rid,
    S_AXI_B_rlast,
    S_AXI_B_rready,
    S_AXI_B_rresp,
    S_AXI_B_rvalid,
    S_AXI_B_wdata,
    S_AXI_B_wlast,
    S_AXI_B_wready,
    S_AXI_B_wstrb,
    S_AXI_B_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arprot,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awprot,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wstrb,
    S_AXI_LITE_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  input S_AXI_B_araddr;
  input S_AXI_B_arburst;
  input S_AXI_B_arid;
  input S_AXI_B_arlen;
  output S_AXI_B_arready;
  input S_AXI_B_arregion;
  input S_AXI_B_arsize;
  input S_AXI_B_arvalid;
  input S_AXI_B_awaddr;
  input S_AXI_B_awburst;
  input S_AXI_B_awid;
  input S_AXI_B_awlen;
  output S_AXI_B_awready;
  input S_AXI_B_awregion;
  input S_AXI_B_awsize;
  input S_AXI_B_awvalid;
  output S_AXI_B_bid;
  input S_AXI_B_bready;
  output S_AXI_B_bresp;
  output S_AXI_B_bvalid;
  output S_AXI_B_rdata;
  output S_AXI_B_rid;
  output S_AXI_B_rlast;
  input S_AXI_B_rready;
  output S_AXI_B_rresp;
  output S_AXI_B_rvalid;
  input S_AXI_B_wdata;
  input S_AXI_B_wlast;
  output S_AXI_B_wready;
  input S_AXI_B_wstrb;
  input S_AXI_B_wvalid;
  input S_AXI_LITE_araddr;
  input [2:0]S_AXI_LITE_arprot;
  output [0:0]S_AXI_LITE_arready;
  input [0:0]S_AXI_LITE_arvalid;
  input S_AXI_LITE_awaddr;
  input [2:0]S_AXI_LITE_awprot;
  output [0:0]S_AXI_LITE_awready;
  input [0:0]S_AXI_LITE_awvalid;
  input [0:0]S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output [0:0]S_AXI_LITE_bvalid;
  output S_AXI_LITE_rdata;
  input [0:0]S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output [0:0]S_AXI_LITE_rvalid;
  input S_AXI_LITE_wdata;
  output [0:0]S_AXI_LITE_wready;
  input S_AXI_LITE_wstrb;
  input [0:0]S_AXI_LITE_wvalid;
  output axi_aclk;
  output [0:0]axi_aresetn;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [0:0]Conn1_CLK_N;
  wire [0:0]Conn1_CLK_P;
  wire S_AXI_B_1_ARADDR;
  wire S_AXI_B_1_ARBURST;
  wire S_AXI_B_1_ARID;
  wire S_AXI_B_1_ARLEN;
  wire S_AXI_B_1_ARREADY;
  wire S_AXI_B_1_ARREGION;
  wire S_AXI_B_1_ARSIZE;
  wire S_AXI_B_1_ARVALID;
  wire S_AXI_B_1_AWADDR;
  wire S_AXI_B_1_AWBURST;
  wire S_AXI_B_1_AWID;
  wire S_AXI_B_1_AWLEN;
  wire S_AXI_B_1_AWREADY;
  wire S_AXI_B_1_AWREGION;
  wire S_AXI_B_1_AWSIZE;
  wire S_AXI_B_1_AWVALID;
  wire [3:0]S_AXI_B_1_BID;
  wire S_AXI_B_1_BREADY;
  wire [1:0]S_AXI_B_1_BRESP;
  wire S_AXI_B_1_BVALID;
  wire [511:0]S_AXI_B_1_RDATA;
  wire [3:0]S_AXI_B_1_RID;
  wire S_AXI_B_1_RLAST;
  wire S_AXI_B_1_RREADY;
  wire [1:0]S_AXI_B_1_RRESP;
  wire S_AXI_B_1_RVALID;
  wire S_AXI_B_1_WDATA;
  wire S_AXI_B_1_WLAST;
  wire S_AXI_B_1_WREADY;
  wire S_AXI_B_1_WSTRB;
  wire S_AXI_B_1_WVALID;
  wire [0:0]bridge_input_clock_IBUF_DS_ODIV2;
  wire [0:0]bridge_input_clock_IBUF_OUT;
  wire [0:0]one_dout;
  wire pcie_bridge_axi_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [0:0]smartconnect_0_M01_AXI_ARVALID;
  wire smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [0:0]smartconnect_0_M01_AXI_AWVALID;
  wire [0:0]smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire [0:0]smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire smartconnect_0_M01_AXI_WSTRB;
  wire [0:0]smartconnect_0_M01_AXI_WVALID;
  wire [63:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire [0:0]xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [63:0]xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire [0:0]xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire xdma_0_M_AXI_B_AWVALID;
  wire xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire [0:0]xdma_0_M_AXI_B_BVALID;
  wire xdma_0_M_AXI_B_RDATA;
  wire xdma_0_M_AXI_B_RID;
  wire [0:0]xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire [0:0]xdma_0_M_AXI_B_RVALID;
  wire [511:0]xdma_0_M_AXI_B_WDATA;
  wire xdma_0_M_AXI_B_WLAST;
  wire [0:0]xdma_0_M_AXI_B_WREADY;
  wire [63:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_M_AXI_B_WVALID;
  wire xdma_0_axi_aclk;
  wire [15:0]xdma_0_pcie_mgt_rxn;
  wire [15:0]xdma_0_pcie_mgt_rxp;
  wire [15:0]xdma_0_pcie_mgt_txn;
  wire [15:0]xdma_0_pcie_mgt_txp;

  assign Conn1_CLK_N = pcie_refclk_clk_n[0];
  assign Conn1_CLK_P = pcie_refclk_clk_p[0];
  assign M_AXI_B_araddr = xdma_0_M_AXI_B_ARADDR[0];
  assign M_AXI_B_arburst[1:0] = xdma_0_M_AXI_B_ARBURST;
  assign M_AXI_B_arcache[3:0] = xdma_0_M_AXI_B_ARCACHE;
  assign M_AXI_B_arid = xdma_0_M_AXI_B_ARID[0];
  assign M_AXI_B_arlen = xdma_0_M_AXI_B_ARLEN[0];
  assign M_AXI_B_arlock = xdma_0_M_AXI_B_ARLOCK;
  assign M_AXI_B_arprot[2:0] = xdma_0_M_AXI_B_ARPROT;
  assign M_AXI_B_arsize[2:0] = xdma_0_M_AXI_B_ARSIZE;
  assign M_AXI_B_arvalid[0] = xdma_0_M_AXI_B_ARVALID;
  assign M_AXI_B_awaddr = xdma_0_M_AXI_B_AWADDR[0];
  assign M_AXI_B_awburst[1:0] = xdma_0_M_AXI_B_AWBURST;
  assign M_AXI_B_awcache[3:0] = xdma_0_M_AXI_B_AWCACHE;
  assign M_AXI_B_awid = xdma_0_M_AXI_B_AWID[0];
  assign M_AXI_B_awlen = xdma_0_M_AXI_B_AWLEN[0];
  assign M_AXI_B_awlock = xdma_0_M_AXI_B_AWLOCK;
  assign M_AXI_B_awprot[2:0] = xdma_0_M_AXI_B_AWPROT;
  assign M_AXI_B_awsize[2:0] = xdma_0_M_AXI_B_AWSIZE;
  assign M_AXI_B_awvalid[0] = xdma_0_M_AXI_B_AWVALID;
  assign M_AXI_B_bready[0] = xdma_0_M_AXI_B_BREADY;
  assign M_AXI_B_rready[0] = xdma_0_M_AXI_B_RREADY;
  assign M_AXI_B_wdata = xdma_0_M_AXI_B_WDATA[0];
  assign M_AXI_B_wlast[0] = xdma_0_M_AXI_B_WLAST;
  assign M_AXI_B_wstrb = xdma_0_M_AXI_B_WSTRB[0];
  assign M_AXI_B_wvalid[0] = xdma_0_M_AXI_B_WVALID;
  assign S_AXI_B_1_ARADDR = S_AXI_B_araddr;
  assign S_AXI_B_1_ARBURST = S_AXI_B_arburst;
  assign S_AXI_B_1_ARID = S_AXI_B_arid;
  assign S_AXI_B_1_ARLEN = S_AXI_B_arlen;
  assign S_AXI_B_1_ARREGION = S_AXI_B_arregion;
  assign S_AXI_B_1_ARSIZE = S_AXI_B_arsize;
  assign S_AXI_B_1_ARVALID = S_AXI_B_arvalid;
  assign S_AXI_B_1_AWADDR = S_AXI_B_awaddr;
  assign S_AXI_B_1_AWBURST = S_AXI_B_awburst;
  assign S_AXI_B_1_AWID = S_AXI_B_awid;
  assign S_AXI_B_1_AWLEN = S_AXI_B_awlen;
  assign S_AXI_B_1_AWREGION = S_AXI_B_awregion;
  assign S_AXI_B_1_AWSIZE = S_AXI_B_awsize;
  assign S_AXI_B_1_AWVALID = S_AXI_B_awvalid;
  assign S_AXI_B_1_BREADY = S_AXI_B_bready;
  assign S_AXI_B_1_RREADY = S_AXI_B_rready;
  assign S_AXI_B_1_WDATA = S_AXI_B_wdata;
  assign S_AXI_B_1_WLAST = S_AXI_B_wlast;
  assign S_AXI_B_1_WSTRB = S_AXI_B_wstrb;
  assign S_AXI_B_1_WVALID = S_AXI_B_wvalid;
  assign S_AXI_B_arready = S_AXI_B_1_ARREADY;
  assign S_AXI_B_awready = S_AXI_B_1_AWREADY;
  assign S_AXI_B_bid = S_AXI_B_1_BID[0];
  assign S_AXI_B_bresp = S_AXI_B_1_BRESP[0];
  assign S_AXI_B_bvalid = S_AXI_B_1_BVALID;
  assign S_AXI_B_rdata = S_AXI_B_1_RDATA[0];
  assign S_AXI_B_rid = S_AXI_B_1_RID[0];
  assign S_AXI_B_rlast = S_AXI_B_1_RLAST;
  assign S_AXI_B_rresp = S_AXI_B_1_RRESP[0];
  assign S_AXI_B_rvalid = S_AXI_B_1_RVALID;
  assign S_AXI_B_wready = S_AXI_B_1_WREADY;
  assign S_AXI_LITE_arready[0] = smartconnect_0_M01_AXI_ARREADY;
  assign S_AXI_LITE_awready[0] = smartconnect_0_M01_AXI_AWREADY;
  assign S_AXI_LITE_bresp[1:0] = smartconnect_0_M01_AXI_BRESP;
  assign S_AXI_LITE_bvalid[0] = smartconnect_0_M01_AXI_BVALID;
  assign S_AXI_LITE_rdata = smartconnect_0_M01_AXI_RDATA[0];
  assign S_AXI_LITE_rresp[1:0] = smartconnect_0_M01_AXI_RRESP;
  assign S_AXI_LITE_rvalid[0] = smartconnect_0_M01_AXI_RVALID;
  assign S_AXI_LITE_wready[0] = smartconnect_0_M01_AXI_WREADY;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn[0] = proc_sys_reset_0_peripheral_aresetn;
  assign pcie_mgt_txn[15:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_0_pcie_mgt_txp;
  assign smartconnect_0_M01_AXI_ARADDR = S_AXI_LITE_araddr;
  assign smartconnect_0_M01_AXI_ARPROT = S_AXI_LITE_arprot[2:0];
  assign smartconnect_0_M01_AXI_ARVALID = S_AXI_LITE_arvalid[0];
  assign smartconnect_0_M01_AXI_AWADDR = S_AXI_LITE_awaddr;
  assign smartconnect_0_M01_AXI_AWPROT = S_AXI_LITE_awprot[2:0];
  assign smartconnect_0_M01_AXI_AWVALID = S_AXI_LITE_awvalid[0];
  assign smartconnect_0_M01_AXI_BREADY = S_AXI_LITE_bready[0];
  assign smartconnect_0_M01_AXI_RREADY = S_AXI_LITE_rready[0];
  assign smartconnect_0_M01_AXI_WDATA = S_AXI_LITE_wdata;
  assign smartconnect_0_M01_AXI_WSTRB = S_AXI_LITE_wstrb;
  assign smartconnect_0_M01_AXI_WVALID = S_AXI_LITE_wvalid[0];
  assign xdma_0_M_AXI_B_ARREADY = M_AXI_B_arready[0];
  assign xdma_0_M_AXI_B_AWREADY = M_AXI_B_awready[0];
  assign xdma_0_M_AXI_B_BID = M_AXI_B_bid;
  assign xdma_0_M_AXI_B_BRESP = M_AXI_B_bresp[1:0];
  assign xdma_0_M_AXI_B_BVALID = M_AXI_B_bvalid[0];
  assign xdma_0_M_AXI_B_RDATA = M_AXI_B_rdata;
  assign xdma_0_M_AXI_B_RID = M_AXI_B_rid;
  assign xdma_0_M_AXI_B_RLAST = M_AXI_B_rlast[0];
  assign xdma_0_M_AXI_B_RRESP = M_AXI_B_rresp[1:0];
  assign xdma_0_M_AXI_B_RVALID = M_AXI_B_rvalid[0];
  assign xdma_0_M_AXI_B_WREADY = M_AXI_B_wready[0];
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  top_level_util_ds_buf_0_0 bridge_input_clock
       (.IBUF_DS_N(Conn1_CLK_N),
        .IBUF_DS_ODIV2(bridge_input_clock_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn1_CLK_P),
        .IBUF_OUT(bridge_input_clock_IBUF_OUT));
  top_level_xlconstant_0_0 one
       (.dout(one_dout));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(xdma_0_M_AXI_B_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_B_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_B_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_B_ARID),
        .m_axib_arlen(xdma_0_M_AXI_B_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_B_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_B_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_B_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_B_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_B_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_B_AWID),
        .m_axib_awlen(xdma_0_M_AXI_B_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_B_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_B_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_B_AWVALID),
        .m_axib_bid({xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID,xdma_0_M_AXI_B_BID}),
        .m_axib_bready(xdma_0_M_AXI_B_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_B_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_B_BVALID),
        .m_axib_rdata({xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA,xdma_0_M_AXI_B_RDATA}),
        .m_axib_rid({xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID,xdma_0_M_AXI_B_RID}),
        .m_axib_rlast(xdma_0_M_AXI_B_RLAST),
        .m_axib_rready(xdma_0_M_AXI_B_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_B_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_B_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_B_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_B_WLAST),
        .m_axib_wready(xdma_0_M_AXI_B_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_B_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axib_araddr({S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR,S_AXI_B_1_ARADDR}),
        .s_axib_arburst({S_AXI_B_1_ARBURST,S_AXI_B_1_ARBURST}),
        .s_axib_arid({S_AXI_B_1_ARID,S_AXI_B_1_ARID,S_AXI_B_1_ARID,S_AXI_B_1_ARID}),
        .s_axib_arlen({S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN,S_AXI_B_1_ARLEN}),
        .s_axib_arready(S_AXI_B_1_ARREADY),
        .s_axib_arregion({S_AXI_B_1_ARREGION,S_AXI_B_1_ARREGION,S_AXI_B_1_ARREGION,S_AXI_B_1_ARREGION}),
        .s_axib_arsize({S_AXI_B_1_ARSIZE,S_AXI_B_1_ARSIZE,S_AXI_B_1_ARSIZE}),
        .s_axib_arvalid(S_AXI_B_1_ARVALID),
        .s_axib_awaddr({S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR,S_AXI_B_1_AWADDR}),
        .s_axib_awburst({S_AXI_B_1_AWBURST,S_AXI_B_1_AWBURST}),
        .s_axib_awid({S_AXI_B_1_AWID,S_AXI_B_1_AWID,S_AXI_B_1_AWID,S_AXI_B_1_AWID}),
        .s_axib_awlen({S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN,S_AXI_B_1_AWLEN}),
        .s_axib_awready(S_AXI_B_1_AWREADY),
        .s_axib_awregion({S_AXI_B_1_AWREGION,S_AXI_B_1_AWREGION,S_AXI_B_1_AWREGION,S_AXI_B_1_AWREGION}),
        .s_axib_awsize({S_AXI_B_1_AWSIZE,S_AXI_B_1_AWSIZE,S_AXI_B_1_AWSIZE}),
        .s_axib_awvalid(S_AXI_B_1_AWVALID),
        .s_axib_bid(S_AXI_B_1_BID),
        .s_axib_bready(S_AXI_B_1_BREADY),
        .s_axib_bresp(S_AXI_B_1_BRESP),
        .s_axib_bvalid(S_AXI_B_1_BVALID),
        .s_axib_rdata(S_AXI_B_1_RDATA),
        .s_axib_rid(S_AXI_B_1_RID),
        .s_axib_rlast(S_AXI_B_1_RLAST),
        .s_axib_rready(S_AXI_B_1_RREADY),
        .s_axib_rresp(S_AXI_B_1_RRESP),
        .s_axib_rvalid(S_AXI_B_1_RVALID),
        .s_axib_wdata({S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA,S_AXI_B_1_WDATA}),
        .s_axib_wlast(S_AXI_B_1_WLAST),
        .s_axib_wready(S_AXI_B_1_WREADY),
        .s_axib_wstrb({S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB,S_AXI_B_1_WSTRB}),
        .s_axib_wvalid(S_AXI_B_1_WVALID),
        .s_axil_araddr({smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR,smartconnect_0_M01_AXI_ARADDR}),
        .s_axil_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axil_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axil_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axil_awaddr({smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR,smartconnect_0_M01_AXI_AWADDR}),
        .s_axil_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axil_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axil_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axil_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axil_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axil_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axil_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axil_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axil_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axil_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axil_wdata({smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA,smartconnect_0_M01_AXI_WDATA}),
        .s_axil_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axil_wstrb({smartconnect_0_M01_AXI_WSTRB,smartconnect_0_M01_AXI_WSTRB,smartconnect_0_M01_AXI_WSTRB,smartconnect_0_M01_AXI_WSTRB}),
        .s_axil_wvalid(smartconnect_0_M01_AXI_WVALID),
        .sys_clk(bridge_input_clock_IBUF_DS_ODIV2),
        .sys_clk_gt(bridge_input_clock_IBUF_OUT),
        .sys_rst_n(one_dout),
        .usr_irq_req(1'b0));
  top_level_proc_sys_reset_0_1 reset_extender
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie_bridge_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(xdma_0_axi_aclk));
endmodule

module reporter_0_imp_14RIEO2
   (FRAME_SIZE,
    PACKETS_PER_GROUP,
    PACKET_SIZE,
    RFC_ADDR,
    RFD_ADDR,
    RFD_SIZE,
    RMD_ADDR,
    RMD_SIZE1,
    S_AXI_ER_araddr,
    S_AXI_ER_arprot,
    S_AXI_ER_arready,
    S_AXI_ER_arvalid,
    S_AXI_ER_awaddr,
    S_AXI_ER_awprot,
    S_AXI_ER_awready,
    S_AXI_ER_awvalid,
    S_AXI_ER_bready,
    S_AXI_ER_bresp,
    S_AXI_ER_bvalid,
    S_AXI_ER_rdata,
    S_AXI_ER_rready,
    S_AXI_ER_rresp,
    S_AXI_ER_rvalid,
    S_AXI_ER_wdata,
    S_AXI_ER_wready,
    S_AXI_ER_wstrb,
    S_AXI_ER_wvalid,
    axis_in_tdata,
    axis_in_tready,
    axis_in_tvalid,
    chan_ok,
    channel,
    clk,
    eth_rx_tdata,
    eth_rx_tkeep,
    eth_rx_tlast,
    eth_rx_tready,
    eth_rx_tuser,
    eth_rx_tvalid,
    ignore_rdmx_flags,
    sys_resetn);
  input [31:0]FRAME_SIZE;
  input [31:0]PACKETS_PER_GROUP;
  input [15:0]PACKET_SIZE;
  input [63:0]RFC_ADDR;
  input [63:0]RFD_ADDR;
  input [63:0]RFD_SIZE;
  input [63:0]RMD_ADDR;
  input [63:0]RMD_SIZE1;
  input [0:0]S_AXI_ER_araddr;
  input [2:0]S_AXI_ER_arprot;
  output S_AXI_ER_arready;
  input S_AXI_ER_arvalid;
  input [0:0]S_AXI_ER_awaddr;
  input [2:0]S_AXI_ER_awprot;
  output S_AXI_ER_awready;
  input S_AXI_ER_awvalid;
  input S_AXI_ER_bready;
  output [1:0]S_AXI_ER_bresp;
  output S_AXI_ER_bvalid;
  output [31:0]S_AXI_ER_rdata;
  input S_AXI_ER_rready;
  output [1:0]S_AXI_ER_rresp;
  output S_AXI_ER_rvalid;
  input [0:0]S_AXI_ER_wdata;
  output S_AXI_ER_wready;
  input [0:0]S_AXI_ER_wstrb;
  input S_AXI_ER_wvalid;
  input [31:0]axis_in_tdata;
  output axis_in_tready;
  input axis_in_tvalid;
  output chan_ok;
  input channel;
  input clk;
  input [511:0]eth_rx_tdata;
  input [63:0]eth_rx_tkeep;
  input eth_rx_tlast;
  output eth_rx_tready;
  input eth_rx_tuser;
  input eth_rx_tvalid;
  input ignore_rdmx_flags;
  input sys_resetn;

  wire [0:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [0:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [0:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [0:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]PACKETS_PER_GROUP_1;
  wire [63:0]RFC_ADDR_1;
  wire [63:0]RFD_ADDR_1;
  wire [63:0]RFD_SIZE_1;
  wire [63:0]RMD_ADDR_1;
  wire [63:0]RMD_SIZE1_1;
  wire [31:0]axis_in0_1_TDATA;
  wire axis_in0_1_TREADY;
  wire axis_in0_1_TVALID;
  wire [31:0]ch0_axis_pattern_TDATA;
  wire ch0_axis_pattern_TREADY;
  wire ch0_axis_pattern_TVALID;
  wire channel_1;
  wire checker_ctl_sys_resetn_out;
  wire data_checker_eth_active;
  wire [31:0]data_checker_expected_fc;
  wire [63:0]data_checker_expected_rdmx_addr;
  wire [15:0]data_checker_expected_rdmx_seq;
  wire [63:0]data_checker_malformed_packets;
  wire [63:0]data_checker_total_packets_rcvd;
  wire ignore_rdmx_flags_1;
  wire ila0_all_good;
  wire [31:0]ila0_error;
  wire [511:0]ila0_error_data;
  wire [511:0]ila0_eth_rx_TDATA;
  wire ila0_eth_rx_TLAST;
  wire ila0_eth_rx_TREADY;
  wire ila0_eth_rx_TUSER;
  wire ila0_eth_rx_TVALID;
  wire [31:0]ila0_expected_frame_pattern;
  wire [31:0]mindy_core_ctl_0_FRAME_SIZE;
  wire [15:0]mindy_core_ctl_0_PACKET_SIZE;
  wire pcie_axi_aclk;

  assign Conn1_ARADDR = S_AXI_ER_araddr[0];
  assign Conn1_ARPROT = S_AXI_ER_arprot[2:0];
  assign Conn1_ARVALID = S_AXI_ER_arvalid;
  assign Conn1_AWADDR = S_AXI_ER_awaddr[0];
  assign Conn1_AWPROT = S_AXI_ER_awprot[2:0];
  assign Conn1_AWVALID = S_AXI_ER_awvalid;
  assign Conn1_BREADY = S_AXI_ER_bready;
  assign Conn1_RREADY = S_AXI_ER_rready;
  assign Conn1_WDATA = S_AXI_ER_wdata[0];
  assign Conn1_WSTRB = S_AXI_ER_wstrb[0];
  assign Conn1_WVALID = S_AXI_ER_wvalid;
  assign PACKETS_PER_GROUP_1 = PACKETS_PER_GROUP[31:0];
  assign RFC_ADDR_1 = RFC_ADDR[63:0];
  assign RFD_ADDR_1 = RFD_ADDR[63:0];
  assign RFD_SIZE_1 = RFD_SIZE[63:0];
  assign RMD_ADDR_1 = RMD_ADDR[63:0];
  assign RMD_SIZE1_1 = RMD_SIZE1[63:0];
  assign S_AXI_ER_arready = Conn1_ARREADY;
  assign S_AXI_ER_awready = Conn1_AWREADY;
  assign S_AXI_ER_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_ER_bvalid = Conn1_BVALID;
  assign S_AXI_ER_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_ER_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_ER_rvalid = Conn1_RVALID;
  assign S_AXI_ER_wready = Conn1_WREADY;
  assign axis_in0_1_TDATA = axis_in_tdata[31:0];
  assign axis_in0_1_TVALID = axis_in_tvalid;
  assign axis_in_tready = axis_in0_1_TREADY;
  assign chan_ok = ila0_all_good;
  assign channel_1 = channel;
  assign checker_ctl_sys_resetn_out = sys_resetn;
  assign eth_rx_tready = ila0_eth_rx_TREADY;
  assign ignore_rdmx_flags_1 = ignore_rdmx_flags;
  assign ila0_eth_rx_TDATA = eth_rx_tdata[511:0];
  assign ila0_eth_rx_TLAST = eth_rx_tlast;
  assign ila0_eth_rx_TUSER = eth_rx_tuser;
  assign ila0_eth_rx_TVALID = eth_rx_tvalid;
  assign mindy_core_ctl_0_FRAME_SIZE = FRAME_SIZE[31:0];
  assign mindy_core_ctl_0_PACKET_SIZE = PACKET_SIZE[15:0];
  assign pcie_axi_aclk = clk;
  top_level_axi_reporter_0_0 axi_reporter
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Conn1_ARADDR}),
        .S_AXI_ARPROT(Conn1_ARPROT),
        .S_AXI_ARREADY(Conn1_ARREADY),
        .S_AXI_ARVALID(Conn1_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Conn1_AWADDR}),
        .S_AXI_AWPROT(Conn1_AWPROT),
        .S_AXI_AWREADY(Conn1_AWREADY),
        .S_AXI_AWVALID(Conn1_AWVALID),
        .S_AXI_BREADY(Conn1_BREADY),
        .S_AXI_BRESP(Conn1_BRESP),
        .S_AXI_BVALID(Conn1_BVALID),
        .S_AXI_RDATA(Conn1_RDATA),
        .S_AXI_RREADY(Conn1_RREADY),
        .S_AXI_RRESP(Conn1_RRESP),
        .S_AXI_RVALID(Conn1_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Conn1_WDATA}),
        .S_AXI_WREADY(Conn1_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,Conn1_WSTRB}),
        .S_AXI_WVALID(Conn1_WVALID),
        .clk(pcie_axi_aclk),
        .error(ila0_error),
        .error_data(ila0_error_data),
        .eth_active(data_checker_eth_active),
        .expected_fc(data_checker_expected_fc),
        .expected_fdata(ila0_expected_frame_pattern),
        .expected_seq(data_checker_expected_rdmx_seq),
        .expected_taddr(data_checker_expected_rdmx_addr),
        .malformed_packets(data_checker_malformed_packets),
        .packets_rcvd(data_checker_total_packets_rcvd),
        .resetn(checker_ctl_sys_resetn_out),
        .run_status(ila0_all_good));
  top_level_data_checker_0_0 data_checker
       (.FRAME_SIZE(mindy_core_ctl_0_FRAME_SIZE),
        .PACKETS_PER_GROUP(PACKETS_PER_GROUP_1),
        .PACKET_SIZE(mindy_core_ctl_0_PACKET_SIZE),
        .RFC_ADDR(RFC_ADDR_1),
        .RFD_ADDR(RFD_ADDR_1),
        .RFD_SIZE(RFD_SIZE_1),
        .RMD_ADDR(RMD_ADDR_1),
        .RMD_SIZE(RMD_SIZE1_1),
        .all_good(ila0_all_good),
        .axis_eth_tdata(ila0_eth_rx_TDATA),
        .axis_eth_tlast(ila0_eth_rx_TLAST),
        .axis_eth_tready(ila0_eth_rx_TREADY),
        .axis_eth_tuser(ila0_eth_rx_TUSER),
        .axis_eth_tvalid(ila0_eth_rx_TVALID),
        .axis_pattern_tdata(ch0_axis_pattern_TDATA),
        .axis_pattern_tready(ch0_axis_pattern_TREADY),
        .axis_pattern_tvalid(ch0_axis_pattern_TVALID),
        .channel(channel_1),
        .clk(pcie_axi_aclk),
        .error(ila0_error),
        .error_data(ila0_error_data),
        .eth_active(data_checker_eth_active),
        .expected_fc(data_checker_expected_fc),
        .expected_frame_pattern(ila0_expected_frame_pattern),
        .expected_rdmx_addr(data_checker_expected_rdmx_addr),
        .expected_rdmx_seq(data_checker_expected_rdmx_seq),
        .ignore_rdmx_flags(ignore_rdmx_flags_1),
        .malformed_packets(data_checker_malformed_packets),
        .resetn(checker_ctl_sys_resetn_out),
        .total_packets_rcvd(data_checker_total_packets_rcvd));
  top_level_axis_data_fifo_0_1 pattern_fifo
       (.m_axis_tdata(ch0_axis_pattern_TDATA),
        .m_axis_tready(ch0_axis_pattern_TREADY),
        .m_axis_tvalid(ch0_axis_pattern_TVALID),
        .s_axis_aclk(pcie_axi_aclk),
        .s_axis_aresetn(checker_ctl_sys_resetn_out),
        .s_axis_tdata(axis_in0_1_TDATA),
        .s_axis_tready(axis_in0_1_TREADY),
        .s_axis_tvalid(axis_in0_1_TVALID));
endmodule

module reporter_1_imp_YQ6NLO
   (FRAME_SIZE,
    PACKETS_PER_GROUP,
    PACKET_SIZE,
    RFC_ADDR,
    RFD_ADDR,
    RFD_SIZE,
    RMD_ADDR,
    RMD_SIZE,
    S_AXI_ER_araddr,
    S_AXI_ER_arprot,
    S_AXI_ER_arready,
    S_AXI_ER_arvalid,
    S_AXI_ER_awaddr,
    S_AXI_ER_awprot,
    S_AXI_ER_awready,
    S_AXI_ER_awvalid,
    S_AXI_ER_bready,
    S_AXI_ER_bresp,
    S_AXI_ER_bvalid,
    S_AXI_ER_rdata,
    S_AXI_ER_rready,
    S_AXI_ER_rresp,
    S_AXI_ER_rvalid,
    S_AXI_ER_wdata,
    S_AXI_ER_wready,
    S_AXI_ER_wstrb,
    S_AXI_ER_wvalid,
    axis_in_tdata,
    axis_in_tready,
    axis_in_tvalid,
    chan_ok,
    channel,
    clk,
    eth_rx_tdata,
    eth_rx_tkeep,
    eth_rx_tlast,
    eth_rx_tready,
    eth_rx_tuser,
    eth_rx_tvalid,
    ignore_rdmx_flags,
    sys_resetn);
  input [31:0]FRAME_SIZE;
  input [31:0]PACKETS_PER_GROUP;
  input [15:0]PACKET_SIZE;
  input [63:0]RFC_ADDR;
  input [63:0]RFD_ADDR;
  input [63:0]RFD_SIZE;
  input [63:0]RMD_ADDR;
  input [63:0]RMD_SIZE;
  input [0:0]S_AXI_ER_araddr;
  input [2:0]S_AXI_ER_arprot;
  output S_AXI_ER_arready;
  input S_AXI_ER_arvalid;
  input [0:0]S_AXI_ER_awaddr;
  input [2:0]S_AXI_ER_awprot;
  output S_AXI_ER_awready;
  input S_AXI_ER_awvalid;
  input S_AXI_ER_bready;
  output [1:0]S_AXI_ER_bresp;
  output S_AXI_ER_bvalid;
  output [31:0]S_AXI_ER_rdata;
  input S_AXI_ER_rready;
  output [1:0]S_AXI_ER_rresp;
  output S_AXI_ER_rvalid;
  input [0:0]S_AXI_ER_wdata;
  output S_AXI_ER_wready;
  input [0:0]S_AXI_ER_wstrb;
  input S_AXI_ER_wvalid;
  input [31:0]axis_in_tdata;
  output axis_in_tready;
  input axis_in_tvalid;
  output chan_ok;
  input channel;
  input clk;
  input [511:0]eth_rx_tdata;
  input [63:0]eth_rx_tkeep;
  input eth_rx_tlast;
  output eth_rx_tready;
  input eth_rx_tuser;
  input eth_rx_tvalid;
  input ignore_rdmx_flags;
  input sys_resetn;

  wire [31:0]PACKETS_PER_GROUP_1;
  wire [63:0]RFC_ADDR_1;
  wire [63:0]RFD_ADDR_1;
  wire [63:0]RFD_SIZE_1;
  wire [63:0]RMD_ADDR_1;
  wire [63:0]RMD_SIZE_1;
  wire [0:0]S_AXI_ER_1_ARADDR;
  wire [2:0]S_AXI_ER_1_ARPROT;
  wire S_AXI_ER_1_ARREADY;
  wire S_AXI_ER_1_ARVALID;
  wire [0:0]S_AXI_ER_1_AWADDR;
  wire [2:0]S_AXI_ER_1_AWPROT;
  wire S_AXI_ER_1_AWREADY;
  wire S_AXI_ER_1_AWVALID;
  wire S_AXI_ER_1_BREADY;
  wire [1:0]S_AXI_ER_1_BRESP;
  wire S_AXI_ER_1_BVALID;
  wire [31:0]S_AXI_ER_1_RDATA;
  wire S_AXI_ER_1_RREADY;
  wire [1:0]S_AXI_ER_1_RRESP;
  wire S_AXI_ER_1_RVALID;
  wire [0:0]S_AXI_ER_1_WDATA;
  wire S_AXI_ER_1_WREADY;
  wire [0:0]S_AXI_ER_1_WSTRB;
  wire S_AXI_ER_1_WVALID;
  wire [31:0]axis_in0_1_TDATA;
  wire axis_in0_1_TREADY;
  wire axis_in0_1_TVALID;
  wire [31:0]ch1_axis_pattern_TDATA;
  wire ch1_axis_pattern_TREADY;
  wire ch1_axis_pattern_TVALID;
  wire channel_1;
  wire checker_ctl_sys_resetn_out;
  wire data_checker_eth_active;
  wire [31:0]data_checker_expected_fc;
  wire [63:0]data_checker_expected_rdmx_addr;
  wire [15:0]data_checker_expected_rdmx_seq;
  wire [63:0]data_checker_malformed_packets;
  wire [63:0]data_checker_total_packets_rcvd;
  wire ignore_rdmx_flags_1;
  wire ila1_all_good;
  wire [31:0]ila1_error;
  wire [511:0]ila1_error_data;
  wire [511:0]ila1_eth_rx_TDATA;
  wire ila1_eth_rx_TLAST;
  wire ila1_eth_rx_TREADY;
  wire ila1_eth_rx_TUSER;
  wire ila1_eth_rx_TVALID;
  wire [31:0]ila1_expected_frame_pattern;
  wire [31:0]mindy_core_ctl_0_FRAME_SIZE;
  wire [15:0]mindy_core_ctl_0_PACKET_SIZE;
  wire pcie_axi_aclk;

  assign PACKETS_PER_GROUP_1 = PACKETS_PER_GROUP[31:0];
  assign RFC_ADDR_1 = RFC_ADDR[63:0];
  assign RFD_ADDR_1 = RFD_ADDR[63:0];
  assign RFD_SIZE_1 = RFD_SIZE[63:0];
  assign RMD_ADDR_1 = RMD_ADDR[63:0];
  assign RMD_SIZE_1 = RMD_SIZE[63:0];
  assign S_AXI_ER_1_ARADDR = S_AXI_ER_araddr[0];
  assign S_AXI_ER_1_ARPROT = S_AXI_ER_arprot[2:0];
  assign S_AXI_ER_1_ARVALID = S_AXI_ER_arvalid;
  assign S_AXI_ER_1_AWADDR = S_AXI_ER_awaddr[0];
  assign S_AXI_ER_1_AWPROT = S_AXI_ER_awprot[2:0];
  assign S_AXI_ER_1_AWVALID = S_AXI_ER_awvalid;
  assign S_AXI_ER_1_BREADY = S_AXI_ER_bready;
  assign S_AXI_ER_1_RREADY = S_AXI_ER_rready;
  assign S_AXI_ER_1_WDATA = S_AXI_ER_wdata[0];
  assign S_AXI_ER_1_WSTRB = S_AXI_ER_wstrb[0];
  assign S_AXI_ER_1_WVALID = S_AXI_ER_wvalid;
  assign S_AXI_ER_arready = S_AXI_ER_1_ARREADY;
  assign S_AXI_ER_awready = S_AXI_ER_1_AWREADY;
  assign S_AXI_ER_bresp[1:0] = S_AXI_ER_1_BRESP;
  assign S_AXI_ER_bvalid = S_AXI_ER_1_BVALID;
  assign S_AXI_ER_rdata[31:0] = S_AXI_ER_1_RDATA;
  assign S_AXI_ER_rresp[1:0] = S_AXI_ER_1_RRESP;
  assign S_AXI_ER_rvalid = S_AXI_ER_1_RVALID;
  assign S_AXI_ER_wready = S_AXI_ER_1_WREADY;
  assign axis_in0_1_TDATA = axis_in_tdata[31:0];
  assign axis_in0_1_TVALID = axis_in_tvalid;
  assign axis_in_tready = axis_in0_1_TREADY;
  assign chan_ok = ila1_all_good;
  assign channel_1 = channel;
  assign checker_ctl_sys_resetn_out = sys_resetn;
  assign eth_rx_tready = ila1_eth_rx_TREADY;
  assign ignore_rdmx_flags_1 = ignore_rdmx_flags;
  assign ila1_eth_rx_TDATA = eth_rx_tdata[511:0];
  assign ila1_eth_rx_TLAST = eth_rx_tlast;
  assign ila1_eth_rx_TUSER = eth_rx_tuser;
  assign ila1_eth_rx_TVALID = eth_rx_tvalid;
  assign mindy_core_ctl_0_FRAME_SIZE = FRAME_SIZE[31:0];
  assign mindy_core_ctl_0_PACKET_SIZE = PACKET_SIZE[15:0];
  assign pcie_axi_aclk = clk;
  top_level_axi_reporter_0_2 axi_reporter
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_ER_1_ARADDR}),
        .S_AXI_ARPROT(S_AXI_ER_1_ARPROT),
        .S_AXI_ARREADY(S_AXI_ER_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_ER_1_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_ER_1_AWADDR}),
        .S_AXI_AWPROT(S_AXI_ER_1_AWPROT),
        .S_AXI_AWREADY(S_AXI_ER_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_ER_1_AWVALID),
        .S_AXI_BREADY(S_AXI_ER_1_BREADY),
        .S_AXI_BRESP(S_AXI_ER_1_BRESP),
        .S_AXI_BVALID(S_AXI_ER_1_BVALID),
        .S_AXI_RDATA(S_AXI_ER_1_RDATA),
        .S_AXI_RREADY(S_AXI_ER_1_RREADY),
        .S_AXI_RRESP(S_AXI_ER_1_RRESP),
        .S_AXI_RVALID(S_AXI_ER_1_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_ER_1_WDATA}),
        .S_AXI_WREADY(S_AXI_ER_1_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,S_AXI_ER_1_WSTRB}),
        .S_AXI_WVALID(S_AXI_ER_1_WVALID),
        .clk(pcie_axi_aclk),
        .error(ila1_error),
        .error_data(ila1_error_data),
        .eth_active(data_checker_eth_active),
        .expected_fc(data_checker_expected_fc),
        .expected_fdata(ila1_expected_frame_pattern),
        .expected_seq(data_checker_expected_rdmx_seq),
        .expected_taddr(data_checker_expected_rdmx_addr),
        .malformed_packets(data_checker_malformed_packets),
        .packets_rcvd(data_checker_total_packets_rcvd),
        .resetn(checker_ctl_sys_resetn_out),
        .run_status(ila1_all_good));
  top_level_data_checker_1 data_checker
       (.FRAME_SIZE(mindy_core_ctl_0_FRAME_SIZE),
        .PACKETS_PER_GROUP(PACKETS_PER_GROUP_1),
        .PACKET_SIZE(mindy_core_ctl_0_PACKET_SIZE),
        .RFC_ADDR(RFC_ADDR_1),
        .RFD_ADDR(RFD_ADDR_1),
        .RFD_SIZE(RFD_SIZE_1),
        .RMD_ADDR(RMD_ADDR_1),
        .RMD_SIZE(RMD_SIZE_1),
        .all_good(ila1_all_good),
        .axis_eth_tdata(ila1_eth_rx_TDATA),
        .axis_eth_tlast(ila1_eth_rx_TLAST),
        .axis_eth_tready(ila1_eth_rx_TREADY),
        .axis_eth_tuser(ila1_eth_rx_TUSER),
        .axis_eth_tvalid(ila1_eth_rx_TVALID),
        .axis_pattern_tdata(ch1_axis_pattern_TDATA),
        .axis_pattern_tready(ch1_axis_pattern_TREADY),
        .axis_pattern_tvalid(ch1_axis_pattern_TVALID),
        .channel(channel_1),
        .clk(pcie_axi_aclk),
        .error(ila1_error),
        .error_data(ila1_error_data),
        .eth_active(data_checker_eth_active),
        .expected_fc(data_checker_expected_fc),
        .expected_frame_pattern(ila1_expected_frame_pattern),
        .expected_rdmx_addr(data_checker_expected_rdmx_addr),
        .expected_rdmx_seq(data_checker_expected_rdmx_seq),
        .ignore_rdmx_flags(ignore_rdmx_flags_1),
        .malformed_packets(data_checker_malformed_packets),
        .resetn(checker_ctl_sys_resetn_out),
        .total_packets_rcvd(data_checker_total_packets_rcvd));
  top_level_pattern_fifo_0 pattern_fifo
       (.m_axis_tdata(ch1_axis_pattern_TDATA),
        .m_axis_tready(ch1_axis_pattern_TREADY),
        .m_axis_tvalid(ch1_axis_pattern_TVALID),
        .s_axis_aclk(pcie_axi_aclk),
        .s_axis_aresetn(checker_ctl_sys_resetn_out),
        .s_axis_tdata(axis_in0_1_TDATA),
        .s_axis_tready(axis_in0_1_TREADY),
        .s_axis_tvalid(axis_in0_1_TVALID));
endmodule

module rx0_path_imp_11WKP11
   (AXIS_IN_tdata,
    AXIS_IN_tkeep,
    AXIS_IN_tlast,
    AXIS_IN_tuser,
    AXIS_IN_tvalid,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    eth_clk,
    eth_resetn,
    sys_clk);
  input [511:0]AXIS_IN_tdata;
  input [63:0]AXIS_IN_tkeep;
  input AXIS_IN_tlast;
  input AXIS_IN_tuser;
  input AXIS_IN_tvalid;
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tuser;
  output M_AXIS_tvalid;
  input eth_clk;
  input eth_resetn;
  input sys_clk;

  wire [511:0]AXIS_IN_1_TDATA;
  wire [63:0]AXIS_IN_1_TKEEP;
  wire AXIS_IN_1_TLAST;
  wire AXIS_IN_1_TUSER;
  wire AXIS_IN_1_TVALID;
  wire [511:0]axis_data_cdc_M_AXIS_TDATA;
  wire [63:0]axis_data_cdc_M_AXIS_TKEEP;
  wire axis_data_cdc_M_AXIS_TLAST;
  wire axis_data_cdc_M_AXIS_TREADY;
  wire [0:0]axis_data_cdc_M_AXIS_TUSER;
  wire axis_data_cdc_M_AXIS_TVALID;
  wire [511:0]bad_packet_filter_AXIS_OUT_TDATA;
  wire [63:0]bad_packet_filter_AXIS_OUT_TKEEP;
  wire bad_packet_filter_AXIS_OUT_TLAST;
  wire bad_packet_filter_AXIS_OUT_TREADY;
  wire bad_packet_filter_AXIS_OUT_TUSER;
  wire bad_packet_filter_AXIS_OUT_TVALID;
  wire clk_1;
  wire [511:0]rdmx_pkt_filter_AXIS_OUT_TDATA;
  wire [63:0]rdmx_pkt_filter_AXIS_OUT_TKEEP;
  wire rdmx_pkt_filter_AXIS_OUT_TLAST;
  wire rdmx_pkt_filter_AXIS_OUT_TREADY;
  wire rdmx_pkt_filter_AXIS_OUT_TUSER;
  wire rdmx_pkt_filter_AXIS_OUT_TVALID;
  wire resetn_cdc_dest_arst;
  wire sys_clk_1;

  assign AXIS_IN_1_TDATA = AXIS_IN_tdata[511:0];
  assign AXIS_IN_1_TKEEP = AXIS_IN_tkeep[63:0];
  assign AXIS_IN_1_TLAST = AXIS_IN_tlast;
  assign AXIS_IN_1_TUSER = AXIS_IN_tuser;
  assign AXIS_IN_1_TVALID = AXIS_IN_tvalid;
  assign M_AXIS_tdata[511:0] = axis_data_cdc_M_AXIS_TDATA;
  assign M_AXIS_tkeep[63:0] = axis_data_cdc_M_AXIS_TKEEP;
  assign M_AXIS_tlast = axis_data_cdc_M_AXIS_TLAST;
  assign M_AXIS_tuser = axis_data_cdc_M_AXIS_TUSER;
  assign M_AXIS_tvalid = axis_data_cdc_M_AXIS_TVALID;
  assign axis_data_cdc_M_AXIS_TREADY = M_AXIS_tready;
  assign clk_1 = eth_clk;
  assign resetn_cdc_dest_arst = eth_resetn;
  assign sys_clk_1 = sys_clk;
  top_level_axis_data_fifo_0_0 axis_data_cdc
       (.m_axis_aclk(sys_clk_1),
        .m_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .m_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_cdc_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_cdc_M_AXIS_TVALID),
        .s_axis_aclk(clk_1),
        .s_axis_aresetn(resetn_cdc_dest_arst),
        .s_axis_tdata(rdmx_pkt_filter_AXIS_OUT_TDATA),
        .s_axis_tkeep(rdmx_pkt_filter_AXIS_OUT_TKEEP),
        .s_axis_tlast(rdmx_pkt_filter_AXIS_OUT_TLAST),
        .s_axis_tready(rdmx_pkt_filter_AXIS_OUT_TREADY),
        .s_axis_tuser(rdmx_pkt_filter_AXIS_OUT_TUSER),
        .s_axis_tvalid(rdmx_pkt_filter_AXIS_OUT_TVALID));
  top_level_bad_packet_filter_0_4 bad_packet_filter
       (.AXIS_IN_TDATA(AXIS_IN_1_TDATA),
        .AXIS_IN_TKEEP(AXIS_IN_1_TKEEP),
        .AXIS_IN_TLAST(AXIS_IN_1_TLAST),
        .AXIS_IN_TUSER(AXIS_IN_1_TUSER),
        .AXIS_IN_TVALID(AXIS_IN_1_TVALID),
        .AXIS_OUT_TDATA(bad_packet_filter_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(bad_packet_filter_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(bad_packet_filter_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(bad_packet_filter_AXIS_OUT_TREADY),
        .AXIS_OUT_TUSER(bad_packet_filter_AXIS_OUT_TUSER),
        .AXIS_OUT_TVALID(bad_packet_filter_AXIS_OUT_TVALID),
        .clk(clk_1),
        .resetn(resetn_cdc_dest_arst));
  top_level_rdmx_pkt_filter_0_0 rdmx_pkt_filter
       (.AXIS_IN_TDATA(bad_packet_filter_AXIS_OUT_TDATA),
        .AXIS_IN_TKEEP(bad_packet_filter_AXIS_OUT_TKEEP),
        .AXIS_IN_TLAST(bad_packet_filter_AXIS_OUT_TLAST),
        .AXIS_IN_TREADY(bad_packet_filter_AXIS_OUT_TREADY),
        .AXIS_IN_TUSER(bad_packet_filter_AXIS_OUT_TUSER),
        .AXIS_IN_TVALID(bad_packet_filter_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(rdmx_pkt_filter_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(rdmx_pkt_filter_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(rdmx_pkt_filter_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(rdmx_pkt_filter_AXIS_OUT_TREADY),
        .AXIS_OUT_TUSER(rdmx_pkt_filter_AXIS_OUT_TUSER),
        .AXIS_OUT_TVALID(rdmx_pkt_filter_AXIS_OUT_TVALID),
        .clk(clk_1),
        .resetn(resetn_cdc_dest_arst));
endmodule

module rx1_path_imp_DPH8WT
   (AXIS_IN_tdata,
    AXIS_IN_tkeep,
    AXIS_IN_tlast,
    AXIS_IN_tuser,
    AXIS_IN_tvalid,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tuser,
    M_AXIS_tvalid,
    eth_clk,
    eth_resetn,
    sys_clk);
  input [511:0]AXIS_IN_tdata;
  input [63:0]AXIS_IN_tkeep;
  input AXIS_IN_tlast;
  input AXIS_IN_tuser;
  input AXIS_IN_tvalid;
  output [511:0]M_AXIS_tdata;
  output [63:0]M_AXIS_tkeep;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tuser;
  output M_AXIS_tvalid;
  input eth_clk;
  input eth_resetn;
  input sys_clk;

  wire [511:0]AXIS_IN_1_TDATA;
  wire [63:0]AXIS_IN_1_TKEEP;
  wire AXIS_IN_1_TLAST;
  wire AXIS_IN_1_TUSER;
  wire AXIS_IN_1_TVALID;
  wire [511:0]axis_data_cdc_M_AXIS_TDATA;
  wire [63:0]axis_data_cdc_M_AXIS_TKEEP;
  wire axis_data_cdc_M_AXIS_TLAST;
  wire axis_data_cdc_M_AXIS_TREADY;
  wire [0:0]axis_data_cdc_M_AXIS_TUSER;
  wire axis_data_cdc_M_AXIS_TVALID;
  wire [511:0]bad_packet_filter_AXIS_OUT_TDATA;
  wire [63:0]bad_packet_filter_AXIS_OUT_TKEEP;
  wire bad_packet_filter_AXIS_OUT_TLAST;
  wire bad_packet_filter_AXIS_OUT_TREADY;
  wire bad_packet_filter_AXIS_OUT_TUSER;
  wire bad_packet_filter_AXIS_OUT_TVALID;
  wire clk_1;
  wire [511:0]rdmx_pkt_filter_AXIS_OUT_TDATA;
  wire [63:0]rdmx_pkt_filter_AXIS_OUT_TKEEP;
  wire rdmx_pkt_filter_AXIS_OUT_TLAST;
  wire rdmx_pkt_filter_AXIS_OUT_TREADY;
  wire rdmx_pkt_filter_AXIS_OUT_TUSER;
  wire rdmx_pkt_filter_AXIS_OUT_TVALID;
  wire resetn_cdc_dest_arst;
  wire sys_clk_1;

  assign AXIS_IN_1_TDATA = AXIS_IN_tdata[511:0];
  assign AXIS_IN_1_TKEEP = AXIS_IN_tkeep[63:0];
  assign AXIS_IN_1_TLAST = AXIS_IN_tlast;
  assign AXIS_IN_1_TUSER = AXIS_IN_tuser;
  assign AXIS_IN_1_TVALID = AXIS_IN_tvalid;
  assign M_AXIS_tdata[511:0] = axis_data_cdc_M_AXIS_TDATA;
  assign M_AXIS_tkeep[63:0] = axis_data_cdc_M_AXIS_TKEEP;
  assign M_AXIS_tlast = axis_data_cdc_M_AXIS_TLAST;
  assign M_AXIS_tuser = axis_data_cdc_M_AXIS_TUSER;
  assign M_AXIS_tvalid = axis_data_cdc_M_AXIS_TVALID;
  assign axis_data_cdc_M_AXIS_TREADY = M_AXIS_tready;
  assign clk_1 = eth_clk;
  assign resetn_cdc_dest_arst = eth_resetn;
  assign sys_clk_1 = sys_clk;
  top_level_axis_data_cdc_0 axis_data_cdc
       (.m_axis_aclk(sys_clk_1),
        .m_axis_tdata(axis_data_cdc_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_cdc_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_cdc_M_AXIS_TLAST),
        .m_axis_tready(axis_data_cdc_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_cdc_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_cdc_M_AXIS_TVALID),
        .s_axis_aclk(clk_1),
        .s_axis_aresetn(resetn_cdc_dest_arst),
        .s_axis_tdata(rdmx_pkt_filter_AXIS_OUT_TDATA),
        .s_axis_tkeep(rdmx_pkt_filter_AXIS_OUT_TKEEP),
        .s_axis_tlast(rdmx_pkt_filter_AXIS_OUT_TLAST),
        .s_axis_tready(rdmx_pkt_filter_AXIS_OUT_TREADY),
        .s_axis_tuser(rdmx_pkt_filter_AXIS_OUT_TUSER),
        .s_axis_tvalid(rdmx_pkt_filter_AXIS_OUT_TVALID));
  top_level_bad_packet_filter_3 bad_packet_filter
       (.AXIS_IN_TDATA(AXIS_IN_1_TDATA),
        .AXIS_IN_TKEEP(AXIS_IN_1_TKEEP),
        .AXIS_IN_TLAST(AXIS_IN_1_TLAST),
        .AXIS_IN_TUSER(AXIS_IN_1_TUSER),
        .AXIS_IN_TVALID(AXIS_IN_1_TVALID),
        .AXIS_OUT_TDATA(bad_packet_filter_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(bad_packet_filter_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(bad_packet_filter_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(bad_packet_filter_AXIS_OUT_TREADY),
        .AXIS_OUT_TUSER(bad_packet_filter_AXIS_OUT_TUSER),
        .AXIS_OUT_TVALID(bad_packet_filter_AXIS_OUT_TVALID),
        .clk(clk_1),
        .resetn(resetn_cdc_dest_arst));
  top_level_rdmx_pkt_filter_1 rdmx_pkt_filter
       (.AXIS_IN_TDATA(bad_packet_filter_AXIS_OUT_TDATA),
        .AXIS_IN_TKEEP(bad_packet_filter_AXIS_OUT_TKEEP),
        .AXIS_IN_TLAST(bad_packet_filter_AXIS_OUT_TLAST),
        .AXIS_IN_TREADY(bad_packet_filter_AXIS_OUT_TREADY),
        .AXIS_IN_TUSER(bad_packet_filter_AXIS_OUT_TUSER),
        .AXIS_IN_TVALID(bad_packet_filter_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(rdmx_pkt_filter_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(rdmx_pkt_filter_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(rdmx_pkt_filter_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(rdmx_pkt_filter_AXIS_OUT_TREADY),
        .AXIS_OUT_TUSER(rdmx_pkt_filter_AXIS_OUT_TUSER),
        .AXIS_OUT_TVALID(rdmx_pkt_filter_AXIS_OUT_TVALID),
        .clk(clk_1),
        .resetn(resetn_cdc_dest_arst));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=42,numReposBlks=33,numNonXlnxBlks=0,numHierBlks=9,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=19,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (init_clk,
    led_green_l,
    led_orange_l,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp_lp,
    qsfp_rst_l);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.INIT_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.INIT_CLK, CLK_DOMAIN top_level_init_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input init_clk;
  output [3:0]led_green_l;
  output [3:0]led_orange_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 322265625" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [1:0]qsfp_lp;
  output [1:0]qsfp_rst_l;

  wire S_AXI_ER1_1_ARADDR;
  wire [2:0]S_AXI_ER1_1_ARPROT;
  wire S_AXI_ER1_1_ARREADY;
  wire [0:0]S_AXI_ER1_1_ARVALID;
  wire S_AXI_ER1_1_AWADDR;
  wire [2:0]S_AXI_ER1_1_AWPROT;
  wire S_AXI_ER1_1_AWREADY;
  wire [0:0]S_AXI_ER1_1_AWVALID;
  wire [0:0]S_AXI_ER1_1_BREADY;
  wire [1:0]S_AXI_ER1_1_BRESP;
  wire S_AXI_ER1_1_BVALID;
  wire [31:0]S_AXI_ER1_1_RDATA;
  wire [0:0]S_AXI_ER1_1_RREADY;
  wire [1:0]S_AXI_ER1_1_RRESP;
  wire S_AXI_ER1_1_RVALID;
  wire S_AXI_ER1_1_WDATA;
  wire S_AXI_ER1_1_WREADY;
  wire S_AXI_ER1_1_WSTRB;
  wire [0:0]S_AXI_ER1_1_WVALID;
  wire S_AXI_ER_1_ARADDR;
  wire [2:0]S_AXI_ER_1_ARPROT;
  wire S_AXI_ER_1_ARREADY;
  wire [0:0]S_AXI_ER_1_ARVALID;
  wire S_AXI_ER_1_AWADDR;
  wire [2:0]S_AXI_ER_1_AWPROT;
  wire S_AXI_ER_1_AWREADY;
  wire [0:0]S_AXI_ER_1_AWVALID;
  wire [0:0]S_AXI_ER_1_BREADY;
  wire [1:0]S_AXI_ER_1_BRESP;
  wire S_AXI_ER_1_BVALID;
  wire [31:0]S_AXI_ER_1_RDATA;
  wire [0:0]S_AXI_ER_1_RREADY;
  wire [1:0]S_AXI_ER_1_RRESP;
  wire S_AXI_ER_1_RVALID;
  wire S_AXI_ER_1_WDATA;
  wire S_AXI_ER_1_WREADY;
  wire S_AXI_ER_1_WSTRB;
  wire [0:0]S_AXI_ER_1_WVALID;
  wire S_AXI_MC_1_ARADDR;
  wire [2:0]S_AXI_MC_1_ARPROT;
  wire S_AXI_MC_1_ARREADY;
  wire [0:0]S_AXI_MC_1_ARVALID;
  wire S_AXI_MC_1_AWADDR;
  wire [2:0]S_AXI_MC_1_AWPROT;
  wire S_AXI_MC_1_AWREADY;
  wire [0:0]S_AXI_MC_1_AWVALID;
  wire [0:0]S_AXI_MC_1_BREADY;
  wire [1:0]S_AXI_MC_1_BRESP;
  wire S_AXI_MC_1_BVALID;
  wire [31:0]S_AXI_MC_1_RDATA;
  wire [0:0]S_AXI_MC_1_RREADY;
  wire [1:0]S_AXI_MC_1_RRESP;
  wire S_AXI_MC_1_RVALID;
  wire S_AXI_MC_1_WDATA;
  wire S_AXI_MC_1_WREADY;
  wire S_AXI_MC_1_WSTRB;
  wire [0:0]S_AXI_MC_1_WVALID;
  wire axi_resetn_1;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GRX_P;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_N;
  wire [3:0]cmac_usplus_0_gt_serial_port_GTX_P;
  wire datapath_checker_chan0_ok;
  wire datapath_checker_chan1_ok;
  wire [3:0]eth_1_qsfp_gt_GRX_N;
  wire [3:0]eth_1_qsfp_gt_GRX_P;
  wire [3:0]eth_1_qsfp_gt_GTX_N;
  wire [3:0]eth_1_qsfp_gt_GTX_P;
  wire [511:0]ethernet_ETH0_RX_TDATA;
  wire [63:0]ethernet_ETH0_RX_TKEEP;
  wire ethernet_ETH0_RX_TLAST;
  wire ethernet_ETH0_RX_TREADY;
  wire ethernet_ETH0_RX_TUSER;
  wire ethernet_ETH0_RX_TVALID;
  wire [511:0]ethernet_ETH1_RX_TDATA;
  wire [63:0]ethernet_ETH1_RX_TKEEP;
  wire ethernet_ETH1_RX_TLAST;
  wire ethernet_ETH1_RX_TREADY;
  wire ethernet_ETH1_RX_TUSER;
  wire ethernet_ETH1_RX_TVALID;
  wire ethernet_qsfp0_up;
  wire ethernet_qsfp1_up;
  wire gt_ref_clk_0_1_CLK_N;
  wire gt_ref_clk_0_1_CLK_P;
  wire init_clk_0_1;
  wire pcie_axi_aclk;
  wire [0:0]pcie_refclk_1_CLK_N;
  wire [0:0]pcie_refclk_1_CLK_P;
  wire qsfp_clk_0_1_CLK_N;
  wire qsfp_clk_0_1_CLK_P;
  wire [1:0]qsfp_pins_qsfp_lp;
  wire [1:0]qsfp_pins_qsfp_rst_l;
  wire smartconnect_0_M01_AXI_ARADDR;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [0:0]smartconnect_0_M01_AXI_ARREADY;
  wire [0:0]smartconnect_0_M01_AXI_ARVALID;
  wire smartconnect_0_M01_AXI_AWADDR;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [0:0]smartconnect_0_M01_AXI_AWREADY;
  wire [0:0]smartconnect_0_M01_AXI_AWVALID;
  wire [0:0]smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire [0:0]smartconnect_0_M01_AXI_BVALID;
  wire smartconnect_0_M01_AXI_RDATA;
  wire [0:0]smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire [0:0]smartconnect_0_M01_AXI_RVALID;
  wire smartconnect_0_M01_AXI_WDATA;
  wire [0:0]smartconnect_0_M01_AXI_WREADY;
  wire smartconnect_0_M01_AXI_WSTRB;
  wire [0:0]smartconnect_0_M01_AXI_WVALID;
  wire smartconnect_M00_AXI_ARADDR;
  wire smartconnect_M00_AXI_ARREADY;
  wire [0:0]smartconnect_M00_AXI_ARVALID;
  wire smartconnect_M00_AXI_AWADDR;
  wire smartconnect_M00_AXI_AWREADY;
  wire [0:0]smartconnect_M00_AXI_AWVALID;
  wire [0:0]smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire smartconnect_M00_AXI_BVALID;
  wire [31:0]smartconnect_M00_AXI_RDATA;
  wire [0:0]smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire smartconnect_M00_AXI_RVALID;
  wire smartconnect_M00_AXI_WDATA;
  wire smartconnect_M00_AXI_WREADY;
  wire smartconnect_M00_AXI_WSTRB;
  wire [0:0]smartconnect_M00_AXI_WVALID;
  wire smartconnect_M02_AXI_ARADDR;
  wire [2:0]smartconnect_M02_AXI_ARPROT;
  wire smartconnect_M02_AXI_ARREADY;
  wire [0:0]smartconnect_M02_AXI_ARVALID;
  wire smartconnect_M02_AXI_AWADDR;
  wire [2:0]smartconnect_M02_AXI_AWPROT;
  wire smartconnect_M02_AXI_AWREADY;
  wire [0:0]smartconnect_M02_AXI_AWVALID;
  wire [0:0]smartconnect_M02_AXI_BREADY;
  wire [1:0]smartconnect_M02_AXI_BRESP;
  wire smartconnect_M02_AXI_BVALID;
  wire [31:0]smartconnect_M02_AXI_RDATA;
  wire [0:0]smartconnect_M02_AXI_RREADY;
  wire [1:0]smartconnect_M02_AXI_RRESP;
  wire smartconnect_M02_AXI_RVALID;
  wire smartconnect_M02_AXI_WDATA;
  wire smartconnect_M02_AXI_WREADY;
  wire smartconnect_M02_AXI_WSTRB;
  wire [0:0]smartconnect_M02_AXI_WVALID;
  wire smartconnect_M05_AXI_ARADDR;
  wire [0:0]smartconnect_M05_AXI_ARREADY;
  wire [0:0]smartconnect_M05_AXI_ARVALID;
  wire smartconnect_M05_AXI_AWADDR;
  wire [0:0]smartconnect_M05_AXI_AWREADY;
  wire [0:0]smartconnect_M05_AXI_AWVALID;
  wire [0:0]smartconnect_M05_AXI_BREADY;
  wire [1:0]smartconnect_M05_AXI_BRESP;
  wire [0:0]smartconnect_M05_AXI_BVALID;
  wire smartconnect_M05_AXI_RDATA;
  wire [0:0]smartconnect_M05_AXI_RREADY;
  wire [1:0]smartconnect_M05_AXI_RRESP;
  wire [0:0]smartconnect_M05_AXI_RVALID;
  wire smartconnect_M05_AXI_WDATA;
  wire [0:0]smartconnect_M05_AXI_WREADY;
  wire smartconnect_M05_AXI_WSTRB;
  wire [0:0]smartconnect_M05_AXI_WVALID;
  wire [0:0]source_200Mhz_resetn;
  wire [3:0]status_leds_led_green_l;
  wire [3:0]status_leds_led_orange_l;
  wire xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire xdma_0_M_AXI_B_ARID;
  wire xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire [0:0]xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire [0:0]xdma_0_M_AXI_B_ARVALID;
  wire xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire xdma_0_M_AXI_B_AWID;
  wire xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire [0:0]xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire [0:0]xdma_0_M_AXI_B_AWVALID;
  wire xdma_0_M_AXI_B_BID;
  wire [0:0]xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire [0:0]xdma_0_M_AXI_B_BVALID;
  wire xdma_0_M_AXI_B_RDATA;
  wire xdma_0_M_AXI_B_RID;
  wire [0:0]xdma_0_M_AXI_B_RLAST;
  wire [0:0]xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire [0:0]xdma_0_M_AXI_B_RVALID;
  wire xdma_0_M_AXI_B_WDATA;
  wire [0:0]xdma_0_M_AXI_B_WLAST;
  wire [0:0]xdma_0_M_AXI_B_WREADY;
  wire xdma_0_M_AXI_B_WSTRB;
  wire [0:0]xdma_0_M_AXI_B_WVALID;
  wire [15:0]xdma_0_pcie_mgt_rxn;
  wire [15:0]xdma_0_pcie_mgt_rxp;
  wire [15:0]xdma_0_pcie_mgt_txn;
  wire [15:0]xdma_0_pcie_mgt_txp;

  assign cmac_usplus_0_gt_serial_port_GRX_N = qsfp0_gt_grx_n[3:0];
  assign cmac_usplus_0_gt_serial_port_GRX_P = qsfp0_gt_grx_p[3:0];
  assign eth_1_qsfp_gt_GRX_N = qsfp1_gt_grx_n[3:0];
  assign eth_1_qsfp_gt_GRX_P = qsfp1_gt_grx_p[3:0];
  assign gt_ref_clk_0_1_CLK_N = qsfp0_clk_clk_n;
  assign gt_ref_clk_0_1_CLK_P = qsfp0_clk_clk_p;
  assign init_clk_0_1 = init_clk;
  assign led_green_l[3:0] = status_leds_led_green_l;
  assign led_orange_l[3:0] = status_leds_led_orange_l;
  assign pcie_mgt_txn[15:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_0_pcie_mgt_txp;
  assign pcie_refclk_1_CLK_N = pcie_refclk_clk_n[0];
  assign pcie_refclk_1_CLK_P = pcie_refclk_clk_p[0];
  assign qsfp0_gt_gtx_n[3:0] = cmac_usplus_0_gt_serial_port_GTX_N;
  assign qsfp0_gt_gtx_p[3:0] = cmac_usplus_0_gt_serial_port_GTX_P;
  assign qsfp1_gt_gtx_n[3:0] = eth_1_qsfp_gt_GTX_N;
  assign qsfp1_gt_gtx_p[3:0] = eth_1_qsfp_gt_GTX_P;
  assign qsfp_clk_0_1_CLK_N = qsfp1_clk_clk_n;
  assign qsfp_clk_0_1_CLK_P = qsfp1_clk_clk_p;
  assign qsfp_lp[1:0] = qsfp_pins_qsfp_lp;
  assign qsfp_rst_l[1:0] = qsfp_pins_qsfp_rst_l;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(pcie_axi_aclk),
        .AXI_ARESETN(source_200Mhz_resetn),
        .S_AXI_ARADDR({smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR}),
        .S_AXI_ARPROT(smartconnect_M02_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M02_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M02_AXI_ARVALID),
        .S_AXI_AWADDR({smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR}),
        .S_AXI_AWPROT(smartconnect_M02_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M02_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M02_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M02_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M02_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M02_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M02_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M02_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M02_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M02_AXI_RVALID),
        .S_AXI_WDATA({smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M02_AXI_WREADY),
        .S_AXI_WSTRB({smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M02_AXI_WVALID));
  datapath_checker_imp_17S0UTF datapath_checker
       (.S_AXI_CC_araddr(smartconnect_M00_AXI_ARADDR),
        .S_AXI_CC_arready(smartconnect_M00_AXI_ARREADY),
        .S_AXI_CC_arvalid(smartconnect_M00_AXI_ARVALID),
        .S_AXI_CC_awaddr(smartconnect_M00_AXI_AWADDR),
        .S_AXI_CC_awready(smartconnect_M00_AXI_AWREADY),
        .S_AXI_CC_awvalid(smartconnect_M00_AXI_AWVALID),
        .S_AXI_CC_bready(smartconnect_M00_AXI_BREADY),
        .S_AXI_CC_bresp(smartconnect_M00_AXI_BRESP),
        .S_AXI_CC_bvalid(smartconnect_M00_AXI_BVALID),
        .S_AXI_CC_rdata(smartconnect_M00_AXI_RDATA),
        .S_AXI_CC_rready(smartconnect_M00_AXI_RREADY),
        .S_AXI_CC_rresp(smartconnect_M00_AXI_RRESP),
        .S_AXI_CC_rvalid(smartconnect_M00_AXI_RVALID),
        .S_AXI_CC_wdata(smartconnect_M00_AXI_WDATA),
        .S_AXI_CC_wready(smartconnect_M00_AXI_WREADY),
        .S_AXI_CC_wstrb(smartconnect_M00_AXI_WSTRB),
        .S_AXI_CC_wvalid(smartconnect_M00_AXI_WVALID),
        .S_AXI_ER0_araddr(S_AXI_ER_1_ARADDR),
        .S_AXI_ER0_arprot(S_AXI_ER_1_ARPROT),
        .S_AXI_ER0_arready(S_AXI_ER_1_ARREADY),
        .S_AXI_ER0_arvalid(S_AXI_ER_1_ARVALID),
        .S_AXI_ER0_awaddr(S_AXI_ER_1_AWADDR),
        .S_AXI_ER0_awprot(S_AXI_ER_1_AWPROT),
        .S_AXI_ER0_awready(S_AXI_ER_1_AWREADY),
        .S_AXI_ER0_awvalid(S_AXI_ER_1_AWVALID),
        .S_AXI_ER0_bready(S_AXI_ER_1_BREADY),
        .S_AXI_ER0_bresp(S_AXI_ER_1_BRESP),
        .S_AXI_ER0_bvalid(S_AXI_ER_1_BVALID),
        .S_AXI_ER0_rdata(S_AXI_ER_1_RDATA),
        .S_AXI_ER0_rready(S_AXI_ER_1_RREADY),
        .S_AXI_ER0_rresp(S_AXI_ER_1_RRESP),
        .S_AXI_ER0_rvalid(S_AXI_ER_1_RVALID),
        .S_AXI_ER0_wdata(S_AXI_ER_1_WDATA),
        .S_AXI_ER0_wready(S_AXI_ER_1_WREADY),
        .S_AXI_ER0_wstrb(S_AXI_ER_1_WSTRB),
        .S_AXI_ER0_wvalid(S_AXI_ER_1_WVALID),
        .S_AXI_ER1_araddr(S_AXI_ER1_1_ARADDR),
        .S_AXI_ER1_arprot(S_AXI_ER1_1_ARPROT),
        .S_AXI_ER1_arready(S_AXI_ER1_1_ARREADY),
        .S_AXI_ER1_arvalid(S_AXI_ER1_1_ARVALID),
        .S_AXI_ER1_awaddr(S_AXI_ER1_1_AWADDR),
        .S_AXI_ER1_awprot(S_AXI_ER1_1_AWPROT),
        .S_AXI_ER1_awready(S_AXI_ER1_1_AWREADY),
        .S_AXI_ER1_awvalid(S_AXI_ER1_1_AWVALID),
        .S_AXI_ER1_bready(S_AXI_ER1_1_BREADY),
        .S_AXI_ER1_bresp(S_AXI_ER1_1_BRESP),
        .S_AXI_ER1_bvalid(S_AXI_ER1_1_BVALID),
        .S_AXI_ER1_rdata(S_AXI_ER1_1_RDATA),
        .S_AXI_ER1_rready(S_AXI_ER1_1_RREADY),
        .S_AXI_ER1_rresp(S_AXI_ER1_1_RRESP),
        .S_AXI_ER1_rvalid(S_AXI_ER1_1_RVALID),
        .S_AXI_ER1_wdata(S_AXI_ER1_1_WDATA),
        .S_AXI_ER1_wready(S_AXI_ER1_1_WREADY),
        .S_AXI_ER1_wstrb(S_AXI_ER1_1_WSTRB),
        .S_AXI_ER1_wvalid(S_AXI_ER1_1_WVALID),
        .S_AXI_MC_araddr(S_AXI_MC_1_ARADDR),
        .S_AXI_MC_arprot(S_AXI_MC_1_ARPROT),
        .S_AXI_MC_arready(S_AXI_MC_1_ARREADY),
        .S_AXI_MC_arvalid(S_AXI_MC_1_ARVALID),
        .S_AXI_MC_awaddr(S_AXI_MC_1_AWADDR),
        .S_AXI_MC_awprot(S_AXI_MC_1_AWPROT),
        .S_AXI_MC_awready(S_AXI_MC_1_AWREADY),
        .S_AXI_MC_awvalid(S_AXI_MC_1_AWVALID),
        .S_AXI_MC_bready(S_AXI_MC_1_BREADY),
        .S_AXI_MC_bresp(S_AXI_MC_1_BRESP),
        .S_AXI_MC_bvalid(S_AXI_MC_1_BVALID),
        .S_AXI_MC_rdata(S_AXI_MC_1_RDATA),
        .S_AXI_MC_rready(S_AXI_MC_1_RREADY),
        .S_AXI_MC_rresp(S_AXI_MC_1_RRESP),
        .S_AXI_MC_rvalid(S_AXI_MC_1_RVALID),
        .S_AXI_MC_wdata(S_AXI_MC_1_WDATA),
        .S_AXI_MC_wready(S_AXI_MC_1_WREADY),
        .S_AXI_MC_wstrb(S_AXI_MC_1_WSTRB),
        .S_AXI_MC_wvalid(S_AXI_MC_1_WVALID),
        .ch0_ok(datapath_checker_chan0_ok),
        .ch1_ok(datapath_checker_chan1_ok),
        .clk(pcie_axi_aclk),
        .eth0_rx_tdata(ethernet_ETH0_RX_TDATA),
        .eth0_rx_tkeep(ethernet_ETH0_RX_TKEEP),
        .eth0_rx_tlast(ethernet_ETH0_RX_TLAST),
        .eth0_rx_tready(ethernet_ETH0_RX_TREADY),
        .eth0_rx_tuser(ethernet_ETH0_RX_TUSER),
        .eth0_rx_tvalid(ethernet_ETH0_RX_TVALID),
        .eth1_rx_tdata(ethernet_ETH1_RX_TDATA),
        .eth1_rx_tkeep(ethernet_ETH1_RX_TKEEP),
        .eth1_rx_tlast(ethernet_ETH1_RX_TLAST),
        .eth1_rx_tready(ethernet_ETH1_RX_TREADY),
        .eth1_rx_tuser(ethernet_ETH1_RX_TUSER),
        .eth1_rx_tvalid(ethernet_ETH1_RX_TVALID),
        .resetn(source_200Mhz_resetn),
        .sys_resetn_out(axi_resetn_1));
  ethernet_imp_1SW6PPD ethernet
       (.ETH0_RX_tdata(ethernet_ETH0_RX_TDATA),
        .ETH0_RX_tkeep(ethernet_ETH0_RX_TKEEP),
        .ETH0_RX_tlast(ethernet_ETH0_RX_TLAST),
        .ETH0_RX_tready(ethernet_ETH0_RX_TREADY),
        .ETH0_RX_tuser(ethernet_ETH0_RX_TUSER),
        .ETH0_RX_tvalid(ethernet_ETH0_RX_TVALID),
        .ETH1_RX_tdata(ethernet_ETH1_RX_TDATA),
        .ETH1_RX_tkeep(ethernet_ETH1_RX_TKEEP),
        .ETH1_RX_tlast(ethernet_ETH1_RX_TLAST),
        .ETH1_RX_tready(ethernet_ETH1_RX_TREADY),
        .ETH1_RX_tuser(ethernet_ETH1_RX_TUSER),
        .ETH1_RX_tvalid(ethernet_ETH1_RX_TVALID),
        .S_AXI_ETH_STATUS_araddr(smartconnect_M05_AXI_ARADDR),
        .S_AXI_ETH_STATUS_arready(smartconnect_M05_AXI_ARREADY),
        .S_AXI_ETH_STATUS_arvalid(smartconnect_M05_AXI_ARVALID),
        .S_AXI_ETH_STATUS_awaddr(smartconnect_M05_AXI_AWADDR),
        .S_AXI_ETH_STATUS_awready(smartconnect_M05_AXI_AWREADY),
        .S_AXI_ETH_STATUS_awvalid(smartconnect_M05_AXI_AWVALID),
        .S_AXI_ETH_STATUS_bready(smartconnect_M05_AXI_BREADY),
        .S_AXI_ETH_STATUS_bresp(smartconnect_M05_AXI_BRESP),
        .S_AXI_ETH_STATUS_bvalid(smartconnect_M05_AXI_BVALID),
        .S_AXI_ETH_STATUS_rdata(smartconnect_M05_AXI_RDATA),
        .S_AXI_ETH_STATUS_rready(smartconnect_M05_AXI_RREADY),
        .S_AXI_ETH_STATUS_rresp(smartconnect_M05_AXI_RRESP),
        .S_AXI_ETH_STATUS_rvalid(smartconnect_M05_AXI_RVALID),
        .S_AXI_ETH_STATUS_wdata(smartconnect_M05_AXI_WDATA),
        .S_AXI_ETH_STATUS_wready(smartconnect_M05_AXI_WREADY),
        .S_AXI_ETH_STATUS_wstrb(smartconnect_M05_AXI_WSTRB),
        .S_AXI_ETH_STATUS_wvalid(smartconnect_M05_AXI_WVALID),
        .axis_tx0_tdata(1'b0),
        .axis_tx0_tkeep(1'b1),
        .axis_tx0_tlast(1'b0),
        .axis_tx0_tvalid(1'b0),
        .axis_tx1_tdata(1'b0),
        .axis_tx1_tkeep(1'b1),
        .axis_tx1_tlast(1'b0),
        .axis_tx1_tvalid(1'b0),
        .init_clk(init_clk_0_1),
        .qsfp0_clk_clk_n(gt_ref_clk_0_1_CLK_N),
        .qsfp0_clk_clk_p(gt_ref_clk_0_1_CLK_P),
        .qsfp0_gt_grx_n(cmac_usplus_0_gt_serial_port_GRX_N),
        .qsfp0_gt_grx_p(cmac_usplus_0_gt_serial_port_GRX_P),
        .qsfp0_gt_gtx_n(cmac_usplus_0_gt_serial_port_GTX_N),
        .qsfp0_gt_gtx_p(cmac_usplus_0_gt_serial_port_GTX_P),
        .qsfp0_up(ethernet_qsfp0_up),
        .qsfp1_clk_clk_n(qsfp_clk_0_1_CLK_N),
        .qsfp1_clk_clk_p(qsfp_clk_0_1_CLK_P),
        .qsfp1_gt_grx_n(eth_1_qsfp_gt_GRX_N),
        .qsfp1_gt_grx_p(eth_1_qsfp_gt_GRX_P),
        .qsfp1_gt_gtx_n(eth_1_qsfp_gt_GTX_N),
        .qsfp1_gt_gtx_p(eth_1_qsfp_gt_GTX_P),
        .qsfp1_up(ethernet_qsfp1_up),
        .sys_clk(pcie_axi_aclk),
        .sys_resetn(axi_resetn_1));
  pcie_imp_P7FEFP pcie
       (.M_AXI_B_araddr(xdma_0_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(xdma_0_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(xdma_0_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(xdma_0_M_AXI_B_ARID),
        .M_AXI_B_arlen(xdma_0_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(xdma_0_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(xdma_0_M_AXI_B_ARPROT),
        .M_AXI_B_arready(xdma_0_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(xdma_0_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(xdma_0_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(xdma_0_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(xdma_0_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(xdma_0_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(xdma_0_M_AXI_B_AWID),
        .M_AXI_B_awlen(xdma_0_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(xdma_0_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(xdma_0_M_AXI_B_AWPROT),
        .M_AXI_B_awready(xdma_0_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(xdma_0_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(xdma_0_M_AXI_B_AWVALID),
        .M_AXI_B_bid(xdma_0_M_AXI_B_BID),
        .M_AXI_B_bready(xdma_0_M_AXI_B_BREADY),
        .M_AXI_B_bresp(xdma_0_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(xdma_0_M_AXI_B_BVALID),
        .M_AXI_B_rdata(xdma_0_M_AXI_B_RDATA),
        .M_AXI_B_rid(xdma_0_M_AXI_B_RID),
        .M_AXI_B_rlast(xdma_0_M_AXI_B_RLAST),
        .M_AXI_B_rready(xdma_0_M_AXI_B_RREADY),
        .M_AXI_B_rresp(xdma_0_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(xdma_0_M_AXI_B_RVALID),
        .M_AXI_B_wdata(xdma_0_M_AXI_B_WDATA),
        .M_AXI_B_wlast(xdma_0_M_AXI_B_WLAST),
        .M_AXI_B_wready(xdma_0_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(xdma_0_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(xdma_0_M_AXI_B_WVALID),
        .S_AXI_B_araddr(1'b0),
        .S_AXI_B_arburst(1'b1),
        .S_AXI_B_arid(1'b0),
        .S_AXI_B_arlen(1'b0),
        .S_AXI_B_arregion(1'b0),
        .S_AXI_B_arsize(1'b0),
        .S_AXI_B_arvalid(1'b0),
        .S_AXI_B_awaddr(1'b0),
        .S_AXI_B_awburst(1'b1),
        .S_AXI_B_awid(1'b0),
        .S_AXI_B_awlen(1'b0),
        .S_AXI_B_awregion(1'b0),
        .S_AXI_B_awsize(1'b0),
        .S_AXI_B_awvalid(1'b0),
        .S_AXI_B_bready(1'b0),
        .S_AXI_B_rready(1'b0),
        .S_AXI_B_wdata(1'b0),
        .S_AXI_B_wlast(1'b0),
        .S_AXI_B_wstrb(1'b1),
        .S_AXI_B_wvalid(1'b0),
        .S_AXI_LITE_araddr(smartconnect_0_M01_AXI_ARADDR),
        .S_AXI_LITE_arprot(smartconnect_0_M01_AXI_ARPROT),
        .S_AXI_LITE_arready(smartconnect_0_M01_AXI_ARREADY),
        .S_AXI_LITE_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .S_AXI_LITE_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .S_AXI_LITE_awprot(smartconnect_0_M01_AXI_AWPROT),
        .S_AXI_LITE_awready(smartconnect_0_M01_AXI_AWREADY),
        .S_AXI_LITE_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .S_AXI_LITE_bready(smartconnect_0_M01_AXI_BREADY),
        .S_AXI_LITE_bresp(smartconnect_0_M01_AXI_BRESP),
        .S_AXI_LITE_bvalid(smartconnect_0_M01_AXI_BVALID),
        .S_AXI_LITE_rdata(smartconnect_0_M01_AXI_RDATA),
        .S_AXI_LITE_rready(smartconnect_0_M01_AXI_RREADY),
        .S_AXI_LITE_rresp(smartconnect_0_M01_AXI_RRESP),
        .S_AXI_LITE_rvalid(smartconnect_0_M01_AXI_RVALID),
        .S_AXI_LITE_wdata(smartconnect_0_M01_AXI_WDATA),
        .S_AXI_LITE_wready(smartconnect_0_M01_AXI_WREADY),
        .S_AXI_LITE_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .S_AXI_LITE_wvalid(smartconnect_0_M01_AXI_WVALID),
        .axi_aclk(pcie_axi_aclk),
        .axi_aresetn(source_200Mhz_resetn),
        .pcie_mgt_rxn(xdma_0_pcie_mgt_rxn),
        .pcie_mgt_rxp(xdma_0_pcie_mgt_rxp),
        .pcie_mgt_txn(xdma_0_pcie_mgt_txn),
        .pcie_mgt_txp(xdma_0_pcie_mgt_txp),
        .pcie_refclk_clk_n(pcie_refclk_1_CLK_N),
        .pcie_refclk_clk_p(pcie_refclk_1_CLK_P));
  top_level_qsfp_pins_0_0 qsfp_pins
       (.qsfp_lp(qsfp_pins_qsfp_lp),
        .qsfp_rst_l(qsfp_pins_qsfp_rst_l));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(smartconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_M02_AXI_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(smartconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_M02_AXI_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(smartconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_M02_AXI_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(smartconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_M02_AXI_WVALID),
        .M03_AXI_araddr(S_AXI_MC_1_ARADDR),
        .M03_AXI_arprot(S_AXI_MC_1_ARPROT),
        .M03_AXI_arready(S_AXI_MC_1_ARREADY),
        .M03_AXI_arvalid(S_AXI_MC_1_ARVALID),
        .M03_AXI_awaddr(S_AXI_MC_1_AWADDR),
        .M03_AXI_awprot(S_AXI_MC_1_AWPROT),
        .M03_AXI_awready(S_AXI_MC_1_AWREADY),
        .M03_AXI_awvalid(S_AXI_MC_1_AWVALID),
        .M03_AXI_bid(1'b0),
        .M03_AXI_bready(S_AXI_MC_1_BREADY),
        .M03_AXI_bresp(S_AXI_MC_1_BRESP),
        .M03_AXI_buser(1'b0),
        .M03_AXI_bvalid(S_AXI_MC_1_BVALID),
        .M03_AXI_rdata(S_AXI_MC_1_RDATA[0]),
        .M03_AXI_rid(1'b0),
        .M03_AXI_rlast(1'b0),
        .M03_AXI_rready(S_AXI_MC_1_RREADY),
        .M03_AXI_rresp(S_AXI_MC_1_RRESP),
        .M03_AXI_ruser(1'b0),
        .M03_AXI_rvalid(S_AXI_MC_1_RVALID),
        .M03_AXI_wdata(S_AXI_MC_1_WDATA),
        .M03_AXI_wready(S_AXI_MC_1_WREADY),
        .M03_AXI_wstrb(S_AXI_MC_1_WSTRB),
        .M03_AXI_wvalid(S_AXI_MC_1_WVALID),
        .M04_AXI_araddr(S_AXI_ER_1_ARADDR),
        .M04_AXI_arprot(S_AXI_ER_1_ARPROT),
        .M04_AXI_arready(S_AXI_ER_1_ARREADY),
        .M04_AXI_arvalid(S_AXI_ER_1_ARVALID),
        .M04_AXI_awaddr(S_AXI_ER_1_AWADDR),
        .M04_AXI_awprot(S_AXI_ER_1_AWPROT),
        .M04_AXI_awready(S_AXI_ER_1_AWREADY),
        .M04_AXI_awvalid(S_AXI_ER_1_AWVALID),
        .M04_AXI_bid(1'b0),
        .M04_AXI_bready(S_AXI_ER_1_BREADY),
        .M04_AXI_bresp(S_AXI_ER_1_BRESP),
        .M04_AXI_buser(1'b0),
        .M04_AXI_bvalid(S_AXI_ER_1_BVALID),
        .M04_AXI_rdata(S_AXI_ER_1_RDATA[0]),
        .M04_AXI_rid(1'b0),
        .M04_AXI_rlast(1'b0),
        .M04_AXI_rready(S_AXI_ER_1_RREADY),
        .M04_AXI_rresp(S_AXI_ER_1_RRESP),
        .M04_AXI_ruser(1'b0),
        .M04_AXI_rvalid(S_AXI_ER_1_RVALID),
        .M04_AXI_wdata(S_AXI_ER_1_WDATA),
        .M04_AXI_wready(S_AXI_ER_1_WREADY),
        .M04_AXI_wstrb(S_AXI_ER_1_WSTRB),
        .M04_AXI_wvalid(S_AXI_ER_1_WVALID),
        .M05_AXI_araddr(smartconnect_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_M05_AXI_AWVALID),
        .M05_AXI_bid(1'b0),
        .M05_AXI_bready(smartconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_M05_AXI_BRESP),
        .M05_AXI_buser(1'b0),
        .M05_AXI_bvalid(smartconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_M05_AXI_RDATA),
        .M05_AXI_rid(1'b0),
        .M05_AXI_rlast(1'b0),
        .M05_AXI_rready(smartconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_M05_AXI_RRESP),
        .M05_AXI_ruser(1'b0),
        .M05_AXI_rvalid(smartconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_M05_AXI_WVALID),
        .M06_AXI_araddr(S_AXI_ER1_1_ARADDR),
        .M06_AXI_arprot(S_AXI_ER1_1_ARPROT),
        .M06_AXI_arready(S_AXI_ER1_1_ARREADY),
        .M06_AXI_arvalid(S_AXI_ER1_1_ARVALID),
        .M06_AXI_awaddr(S_AXI_ER1_1_AWADDR),
        .M06_AXI_awprot(S_AXI_ER1_1_AWPROT),
        .M06_AXI_awready(S_AXI_ER1_1_AWREADY),
        .M06_AXI_awvalid(S_AXI_ER1_1_AWVALID),
        .M06_AXI_bid(1'b0),
        .M06_AXI_bready(S_AXI_ER1_1_BREADY),
        .M06_AXI_bresp(S_AXI_ER1_1_BRESP),
        .M06_AXI_buser(1'b0),
        .M06_AXI_bvalid(S_AXI_ER1_1_BVALID),
        .M06_AXI_rdata(S_AXI_ER1_1_RDATA[0]),
        .M06_AXI_rid(1'b0),
        .M06_AXI_rlast(1'b0),
        .M06_AXI_rready(S_AXI_ER1_1_RREADY),
        .M06_AXI_rresp(S_AXI_ER1_1_RRESP),
        .M06_AXI_ruser(1'b0),
        .M06_AXI_rvalid(S_AXI_ER1_1_RVALID),
        .M06_AXI_wdata(S_AXI_ER1_1_WDATA),
        .M06_AXI_wready(S_AXI_ER1_1_WREADY),
        .M06_AXI_wstrb(S_AXI_ER1_1_WSTRB),
        .M06_AXI_wvalid(S_AXI_ER1_1_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_B_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(xdma_0_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(xdma_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_B_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(xdma_0_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(xdma_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_B_BID),
        .S00_AXI_bready(xdma_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_B_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_B_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_B_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(xdma_0_M_AXI_B_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(xdma_0_M_AXI_B_WVALID),
        .S01_AXI_araddr(1'b0),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_arid(1'b0),
        .S01_AXI_arlen(1'b0),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot({1'b0,1'b0,1'b0}),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_aruser(1'b0),
        .S01_AXI_arvalid(1'b0),
        .S01_AXI_awaddr(1'b0),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S01_AXI_awid(1'b0),
        .S01_AXI_awlen(1'b0),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot({1'b0,1'b0,1'b0}),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awuser(1'b0),
        .S01_AXI_awvalid(1'b0),
        .S01_AXI_bready(1'b0),
        .S01_AXI_rready(1'b0),
        .S01_AXI_wdata(1'b0),
        .S01_AXI_wid(1'b0),
        .S01_AXI_wlast(1'b0),
        .S01_AXI_wstrb(1'b1),
        .S01_AXI_wuser(1'b0),
        .S01_AXI_wvalid(1'b0),
        .aclk(pcie_axi_aclk),
        .aresetn(source_200Mhz_resetn));
  top_level_status_leds_0_0 status_leds
       (.chan0_ok(datapath_checker_chan0_ok),
        .chan1_ok(datapath_checker_chan1_ok),
        .led_green_l(status_leds_led_green_l),
        .led_orange_l(status_leds_led_orange_l),
        .qsfp0_up(ethernet_qsfp0_up),
        .qsfp1_up(ethernet_qsfp1_up));
endmodule
