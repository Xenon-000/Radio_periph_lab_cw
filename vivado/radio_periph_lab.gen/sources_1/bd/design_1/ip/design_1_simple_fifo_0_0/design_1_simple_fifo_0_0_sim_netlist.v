// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon May  1 09:37:50 2023
// Host        : DESKTOP-1K6AF7C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/design_1_simple_fifo_0_0_sim_netlist.v
// Design      : design_1_simple_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_simple_fifo_0_0,simple_fifo_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "simple_fifo_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_simple_fifo_0_0
   (s_axis_tvalid,
    s_axis_tdata,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, FREQ_HZ 125000000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk125, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk125, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_simple_fifo_0_0_simple_fifo_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "simple_fifo_v1_0" *) 
module design_1_simple_fifo_0_0_simple_fifo_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s_axis_tvalid,
    s00_axi_aclk,
    s_axis_tdata,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s_axis_tvalid;
  input s00_axi_aclk;
  input [31:0]s_axis_tdata;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;

  design_1_simple_fifo_0_0_simple_fifo_v1_0_S00_AXI simple_fifo_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "simple_fifo_v1_0_S00_AXI" *) 
module design_1_simple_fifo_0_0_simple_fifo_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s_axis_tvalid,
    s00_axi_aclk,
    s_axis_tdata,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s_axis_tvalid;
  input s00_axi_aclk;
  input [31:0]s_axis_tdata;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire data_read;
  wire data_read_i_1_n_0;
  wire p_0_in;
  wire \r_FIFO_COUNT[0]_i_1_n_0 ;
  wire \r_FIFO_COUNT[4]_i_2_n_0 ;
  wire \r_FIFO_COUNT[4]_i_3_n_0 ;
  wire \r_FIFO_COUNT[4]_i_4_n_0 ;
  wire \r_FIFO_COUNT[4]_i_5_n_0 ;
  wire \r_FIFO_COUNT[4]_i_6_n_0 ;
  wire \r_FIFO_COUNT[8]_i_2_n_0 ;
  wire \r_FIFO_COUNT[8]_i_3_n_0 ;
  wire \r_FIFO_COUNT[8]_i_4_n_0 ;
  wire \r_FIFO_COUNT[8]_i_5_n_0 ;
  wire \r_FIFO_COUNT[9]_i_1_n_0 ;
  wire \r_FIFO_COUNT[9]_i_3_n_0 ;
  wire [9:0]r_FIFO_COUNT_reg;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_0 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_1 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_2 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_3 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_4 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_5 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_6 ;
  wire \r_FIFO_COUNT_reg[4]_i_1_n_7 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_0 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_1 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_2 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_3 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_4 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_5 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_6 ;
  wire \r_FIFO_COUNT_reg[8]_i_1_n_7 ;
  wire \r_FIFO_COUNT_reg[9]_i_2_n_7 ;
  wire [7:0]r_RD_INDEX;
  wire r_RD_INDEX0;
  wire \r_RD_INDEX[0]_i_3_n_0 ;
  wire \r_RD_INDEX[6]_i_2_n_0 ;
  wire \r_RD_INDEX[7]_i_2_n_0 ;
  wire \r_RD_INDEX[7]_i_3_n_0 ;
  wire [7:0]r_RD_INDEX__0;
  wire [7:0]r_WR_INDEX;
  wire r_WR_INDEX0;
  wire \r_WR_INDEX[6]_i_2_n_0 ;
  wire \r_WR_INDEX[7]_i_3_n_0 ;
  wire \r_WR_INDEX[7]_i_4_n_0 ;
  wire \r_WR_INDEX[7]_i_5_n_0 ;
  wire [7:0]r_WR_INDEX__0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [0:0]slv_reg0;
  wire \slv_reg0[0]_i_2_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire w_EMPTY;
  wire [3:0]\NLW_r_FIFO_COUNT_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_FIFO_COUNT_reg[9]_i_2_O_UNCONNECTED ;
  wire [1:0]NLW_r_FIFO_DATA_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_r_FIFO_DATA_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF00AAAAF0F0CCCC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(slv_reg0),
        .I2(slv_reg1[0]),
        .I3(\slv_reg3_reg_n_0_[0] ),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(\slv_reg2_reg_n_0_[10] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(\slv_reg2_reg_n_0_[11] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(\slv_reg2_reg_n_0_[12] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(\slv_reg2_reg_n_0_[13] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(\slv_reg2_reg_n_0_[14] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(\slv_reg2_reg_n_0_[15] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[1]_i_1 
       (.I0(p_0_in),
        .I1(slv_reg1[1]),
        .I2(\slv_reg3_reg_n_0_[1] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg2_reg_n_0_[2] ),
        .I1(slv_reg1[2]),
        .I2(\slv_reg3_reg_n_0_[2] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg2_reg_n_0_[3] ),
        .I1(slv_reg1[3]),
        .I2(\slv_reg3_reg_n_0_[3] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg2_reg_n_0_[4] ),
        .I1(slv_reg1[4]),
        .I2(\slv_reg3_reg_n_0_[4] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg2_reg_n_0_[5] ),
        .I1(slv_reg1[5]),
        .I2(\slv_reg3_reg_n_0_[5] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(slv_reg1[6]),
        .I2(\slv_reg3_reg_n_0_[6] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg2_reg_n_0_[7] ),
        .I1(slv_reg1[7]),
        .I2(\slv_reg3_reg_n_0_[7] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[2]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_read_i_1
       (.I0(p_0_in),
        .I1(s00_axi_aresetn),
        .I2(data_read),
        .O(data_read_i_1_n_0));
  FDRE data_read_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_read_i_1_n_0),
        .Q(data_read),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_FIFO_COUNT[0]_i_1 
       (.I0(r_FIFO_COUNT_reg[0]),
        .O(\r_FIFO_COUNT[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_FIFO_COUNT[4]_i_2 
       (.I0(r_FIFO_COUNT_reg[1]),
        .O(\r_FIFO_COUNT[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[4]_i_3 
       (.I0(r_FIFO_COUNT_reg[3]),
        .I1(r_FIFO_COUNT_reg[4]),
        .O(\r_FIFO_COUNT[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[4]_i_4 
       (.I0(r_FIFO_COUNT_reg[2]),
        .I1(r_FIFO_COUNT_reg[3]),
        .O(\r_FIFO_COUNT[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[4]_i_5 
       (.I0(r_FIFO_COUNT_reg[1]),
        .I1(r_FIFO_COUNT_reg[2]),
        .O(\r_FIFO_COUNT[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h95599999)) 
    \r_FIFO_COUNT[4]_i_6 
       (.I0(r_FIFO_COUNT_reg[1]),
        .I1(s_axis_tvalid),
        .I2(p_0_in),
        .I3(data_read),
        .I4(\slv_reg2_reg_n_0_[0] ),
        .O(\r_FIFO_COUNT[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[8]_i_2 
       (.I0(r_FIFO_COUNT_reg[7]),
        .I1(r_FIFO_COUNT_reg[8]),
        .O(\r_FIFO_COUNT[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[8]_i_3 
       (.I0(r_FIFO_COUNT_reg[6]),
        .I1(r_FIFO_COUNT_reg[7]),
        .O(\r_FIFO_COUNT[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[8]_i_4 
       (.I0(r_FIFO_COUNT_reg[5]),
        .I1(r_FIFO_COUNT_reg[6]),
        .O(\r_FIFO_COUNT[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[8]_i_5 
       (.I0(r_FIFO_COUNT_reg[4]),
        .I1(r_FIFO_COUNT_reg[5]),
        .O(\r_FIFO_COUNT[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hD728)) 
    \r_FIFO_COUNT[9]_i_1 
       (.I0(\slv_reg2_reg_n_0_[0] ),
        .I1(data_read),
        .I2(p_0_in),
        .I3(s_axis_tvalid),
        .O(\r_FIFO_COUNT[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r_FIFO_COUNT[9]_i_3 
       (.I0(r_FIFO_COUNT_reg[8]),
        .I1(r_FIFO_COUNT_reg[9]),
        .O(\r_FIFO_COUNT[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT[0]_i_1_n_0 ),
        .Q(r_FIFO_COUNT_reg[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[4]_i_1_n_7 ),
        .Q(r_FIFO_COUNT_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[4]_i_1_n_6 ),
        .Q(r_FIFO_COUNT_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[4]_i_1_n_5 ),
        .Q(r_FIFO_COUNT_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[4]_i_1_n_4 ),
        .Q(r_FIFO_COUNT_reg[4]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_FIFO_COUNT_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\r_FIFO_COUNT_reg[4]_i_1_n_0 ,\r_FIFO_COUNT_reg[4]_i_1_n_1 ,\r_FIFO_COUNT_reg[4]_i_1_n_2 ,\r_FIFO_COUNT_reg[4]_i_1_n_3 }),
        .CYINIT(r_FIFO_COUNT_reg[0]),
        .DI({r_FIFO_COUNT_reg[3:1],\r_FIFO_COUNT[4]_i_2_n_0 }),
        .O({\r_FIFO_COUNT_reg[4]_i_1_n_4 ,\r_FIFO_COUNT_reg[4]_i_1_n_5 ,\r_FIFO_COUNT_reg[4]_i_1_n_6 ,\r_FIFO_COUNT_reg[4]_i_1_n_7 }),
        .S({\r_FIFO_COUNT[4]_i_3_n_0 ,\r_FIFO_COUNT[4]_i_4_n_0 ,\r_FIFO_COUNT[4]_i_5_n_0 ,\r_FIFO_COUNT[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[8]_i_1_n_7 ),
        .Q(r_FIFO_COUNT_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[8]_i_1_n_6 ),
        .Q(r_FIFO_COUNT_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[8]_i_1_n_5 ),
        .Q(r_FIFO_COUNT_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[8]_i_1_n_4 ),
        .Q(r_FIFO_COUNT_reg[8]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_FIFO_COUNT_reg[8]_i_1 
       (.CI(\r_FIFO_COUNT_reg[4]_i_1_n_0 ),
        .CO({\r_FIFO_COUNT_reg[8]_i_1_n_0 ,\r_FIFO_COUNT_reg[8]_i_1_n_1 ,\r_FIFO_COUNT_reg[8]_i_1_n_2 ,\r_FIFO_COUNT_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(r_FIFO_COUNT_reg[7:4]),
        .O({\r_FIFO_COUNT_reg[8]_i_1_n_4 ,\r_FIFO_COUNT_reg[8]_i_1_n_5 ,\r_FIFO_COUNT_reg[8]_i_1_n_6 ,\r_FIFO_COUNT_reg[8]_i_1_n_7 }),
        .S({\r_FIFO_COUNT[8]_i_2_n_0 ,\r_FIFO_COUNT[8]_i_3_n_0 ,\r_FIFO_COUNT[8]_i_4_n_0 ,\r_FIFO_COUNT[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_FIFO_COUNT_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\r_FIFO_COUNT[9]_i_1_n_0 ),
        .D(\r_FIFO_COUNT_reg[9]_i_2_n_7 ),
        .Q(r_FIFO_COUNT_reg[9]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_FIFO_COUNT_reg[9]_i_2 
       (.CI(\r_FIFO_COUNT_reg[8]_i_1_n_0 ),
        .CO(\NLW_r_FIFO_COUNT_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_FIFO_COUNT_reg[9]_i_2_O_UNCONNECTED [3:1],\r_FIFO_COUNT_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\r_FIFO_COUNT[9]_i_3_n_0 }));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/simple_fifo_v1_0_S00_AXI_inst/r_FIFO_DATA_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    r_FIFO_DATA_reg
       (.ADDRARDADDR({1'b0,r_RD_INDEX,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,r_WR_INDEX,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI(s_axis_tdata[15:0]),
        .DIBDI(s_axis_tdata[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(slv_reg1[15:0]),
        .DOBDO(slv_reg1[31:16]),
        .DOPADOP(NLW_r_FIFO_DATA_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_r_FIFO_DATA_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(s_axis_tvalid),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(axi_awready_i_1_n_0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({s00_axi_aresetn,s00_axi_aresetn,s00_axi_aresetn,s00_axi_aresetn}));
  LUT4 #(
    .INIT(16'h0880)) 
    \r_RD_INDEX[0]_i_1 
       (.I0(\r_RD_INDEX[0]_i_3_n_0 ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(data_read),
        .I3(p_0_in),
        .O(r_RD_INDEX0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_RD_INDEX[0]_i_2 
       (.I0(r_RD_INDEX[0]),
        .O(r_RD_INDEX__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_RD_INDEX[0]_i_3 
       (.I0(r_FIFO_COUNT_reg[4]),
        .I1(r_FIFO_COUNT_reg[3]),
        .I2(r_FIFO_COUNT_reg[6]),
        .I3(r_FIFO_COUNT_reg[5]),
        .I4(\slv_reg0[0]_i_2_n_0 ),
        .I5(r_FIFO_COUNT_reg[8]),
        .O(\r_RD_INDEX[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_RD_INDEX[1]_i_1 
       (.I0(r_RD_INDEX[0]),
        .I1(r_RD_INDEX[1]),
        .O(r_RD_INDEX__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_RD_INDEX[2]_i_1 
       (.I0(r_RD_INDEX[2]),
        .I1(r_RD_INDEX[0]),
        .I2(r_RD_INDEX[1]),
        .O(r_RD_INDEX__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_RD_INDEX[3]_i_1 
       (.I0(r_RD_INDEX[3]),
        .I1(r_RD_INDEX[0]),
        .I2(r_RD_INDEX[1]),
        .I3(r_RD_INDEX[2]),
        .O(r_RD_INDEX__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_RD_INDEX[4]_i_1 
       (.I0(r_RD_INDEX[4]),
        .I1(r_RD_INDEX[2]),
        .I2(r_RD_INDEX[1]),
        .I3(r_RD_INDEX[0]),
        .I4(r_RD_INDEX[3]),
        .O(r_RD_INDEX__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_RD_INDEX[5]_i_1 
       (.I0(r_RD_INDEX[5]),
        .I1(r_RD_INDEX[3]),
        .I2(r_RD_INDEX[0]),
        .I3(r_RD_INDEX[1]),
        .I4(r_RD_INDEX[2]),
        .I5(r_RD_INDEX[4]),
        .O(r_RD_INDEX__0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_RD_INDEX[6]_i_1 
       (.I0(r_RD_INDEX[6]),
        .I1(r_RD_INDEX[4]),
        .I2(r_RD_INDEX[2]),
        .I3(\r_RD_INDEX[6]_i_2_n_0 ),
        .I4(r_RD_INDEX[3]),
        .I5(r_RD_INDEX[5]),
        .O(r_RD_INDEX__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_RD_INDEX[6]_i_2 
       (.I0(r_RD_INDEX[1]),
        .I1(r_RD_INDEX[0]),
        .O(\r_RD_INDEX[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \r_RD_INDEX[7]_i_1 
       (.I0(\r_RD_INDEX[7]_i_2_n_0 ),
        .I1(r_RD_INDEX[7]),
        .I2(\r_RD_INDEX[7]_i_3_n_0 ),
        .I3(r_RD_INDEX[6]),
        .O(r_RD_INDEX__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_RD_INDEX[7]_i_2 
       (.I0(r_RD_INDEX[4]),
        .I1(r_RD_INDEX[2]),
        .I2(r_RD_INDEX[0]),
        .I3(r_RD_INDEX[1]),
        .I4(r_RD_INDEX[3]),
        .I5(r_RD_INDEX[5]),
        .O(\r_RD_INDEX[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_RD_INDEX[7]_i_3 
       (.I0(r_RD_INDEX[4]),
        .I1(r_RD_INDEX[2]),
        .I2(r_RD_INDEX[1]),
        .I3(r_RD_INDEX[0]),
        .I4(r_RD_INDEX[3]),
        .I5(r_RD_INDEX[5]),
        .O(\r_RD_INDEX[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[0]),
        .Q(r_RD_INDEX[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[1]),
        .Q(r_RD_INDEX[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[2]),
        .Q(r_RD_INDEX[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[3]),
        .Q(r_RD_INDEX[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[4]),
        .Q(r_RD_INDEX[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[5]),
        .Q(r_RD_INDEX[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[6]),
        .Q(r_RD_INDEX[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RD_INDEX_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_RD_INDEX0),
        .D(r_RD_INDEX__0[7]),
        .Q(r_RD_INDEX[7]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_WR_INDEX[0]_i_1 
       (.I0(r_WR_INDEX[0]),
        .O(r_WR_INDEX__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_WR_INDEX[1]_i_1 
       (.I0(r_WR_INDEX[0]),
        .I1(r_WR_INDEX[1]),
        .O(r_WR_INDEX__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_WR_INDEX[2]_i_1 
       (.I0(r_WR_INDEX[2]),
        .I1(r_WR_INDEX[0]),
        .I2(r_WR_INDEX[1]),
        .O(r_WR_INDEX__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_WR_INDEX[3]_i_1 
       (.I0(r_WR_INDEX[3]),
        .I1(r_WR_INDEX[0]),
        .I2(r_WR_INDEX[1]),
        .I3(r_WR_INDEX[2]),
        .O(r_WR_INDEX__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_WR_INDEX[4]_i_1 
       (.I0(r_WR_INDEX[4]),
        .I1(r_WR_INDEX[2]),
        .I2(r_WR_INDEX[1]),
        .I3(r_WR_INDEX[0]),
        .I4(r_WR_INDEX[3]),
        .O(r_WR_INDEX__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_WR_INDEX[5]_i_1 
       (.I0(r_WR_INDEX[5]),
        .I1(r_WR_INDEX[3]),
        .I2(r_WR_INDEX[0]),
        .I3(r_WR_INDEX[1]),
        .I4(r_WR_INDEX[2]),
        .I5(r_WR_INDEX[4]),
        .O(r_WR_INDEX__0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \r_WR_INDEX[6]_i_1 
       (.I0(r_WR_INDEX[6]),
        .I1(r_WR_INDEX[4]),
        .I2(r_WR_INDEX[2]),
        .I3(\r_WR_INDEX[6]_i_2_n_0 ),
        .I4(r_WR_INDEX[3]),
        .I5(r_WR_INDEX[5]),
        .O(r_WR_INDEX__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_WR_INDEX[6]_i_2 
       (.I0(r_WR_INDEX[1]),
        .I1(r_WR_INDEX[0]),
        .O(\r_WR_INDEX[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB0)) 
    \r_WR_INDEX[7]_i_1 
       (.I0(\r_WR_INDEX[7]_i_3_n_0 ),
        .I1(r_FIFO_COUNT_reg[8]),
        .I2(s_axis_tvalid),
        .O(r_WR_INDEX0));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \r_WR_INDEX[7]_i_2 
       (.I0(\r_WR_INDEX[7]_i_4_n_0 ),
        .I1(r_WR_INDEX[7]),
        .I2(\r_WR_INDEX[7]_i_5_n_0 ),
        .I3(r_WR_INDEX[6]),
        .O(r_WR_INDEX__0[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r_WR_INDEX[7]_i_3 
       (.I0(\slv_reg0[0]_i_2_n_0 ),
        .I1(r_FIFO_COUNT_reg[5]),
        .I2(r_FIFO_COUNT_reg[6]),
        .I3(r_FIFO_COUNT_reg[3]),
        .I4(r_FIFO_COUNT_reg[4]),
        .O(\r_WR_INDEX[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_WR_INDEX[7]_i_4 
       (.I0(r_WR_INDEX[4]),
        .I1(r_WR_INDEX[2]),
        .I2(r_WR_INDEX[0]),
        .I3(r_WR_INDEX[1]),
        .I4(r_WR_INDEX[3]),
        .I5(r_WR_INDEX[5]),
        .O(\r_WR_INDEX[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_WR_INDEX[7]_i_5 
       (.I0(r_WR_INDEX[4]),
        .I1(r_WR_INDEX[2]),
        .I2(r_WR_INDEX[1]),
        .I3(r_WR_INDEX[0]),
        .I4(r_WR_INDEX[3]),
        .I5(r_WR_INDEX[5]),
        .O(\r_WR_INDEX[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[0]),
        .Q(r_WR_INDEX[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[1]),
        .Q(r_WR_INDEX[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[2]),
        .Q(r_WR_INDEX[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[3]),
        .Q(r_WR_INDEX[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[4]),
        .Q(r_WR_INDEX[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[5]),
        .Q(r_WR_INDEX[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[6]),
        .Q(r_WR_INDEX[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \r_WR_INDEX_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_WR_INDEX0),
        .D(r_WR_INDEX__0[7]),
        .Q(r_WR_INDEX[7]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \slv_reg0[0]_i_1 
       (.I0(r_FIFO_COUNT_reg[8]),
        .I1(\slv_reg0[0]_i_2_n_0 ),
        .I2(r_FIFO_COUNT_reg[5]),
        .I3(r_FIFO_COUNT_reg[6]),
        .I4(r_FIFO_COUNT_reg[3]),
        .I5(r_FIFO_COUNT_reg[4]),
        .O(w_EMPTY));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg0[0]_i_2 
       (.I0(r_FIFO_COUNT_reg[0]),
        .I1(r_FIFO_COUNT_reg[7]),
        .I2(r_FIFO_COUNT_reg[9]),
        .I3(r_FIFO_COUNT_reg[2]),
        .I4(r_FIFO_COUNT_reg[1]),
        .O(\slv_reg0[0]_i_2_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(w_EMPTY),
        .Q(slv_reg0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(p_0_in),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_RD_INDEX[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
endmodule
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
