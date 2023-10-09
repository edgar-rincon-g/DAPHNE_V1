`resetall
`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2023 16:28:26
// Design Name: 
// Module Name: fpga_sw
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


module fpga_sw
(
    /*
     * Clock: 125MHz
     * Synchronous reset
     */
    input  wire       clk,
    input  wire       clk90,
    input  wire       clk625, 
    input  wire       clk100,
    input  wire       clk50,
    input  wire       rst,
    
    /*
     * GPIO
     */
    input  wire       btnu,
    input  wire       btnl,
    input  wire       btnd,
    input  wire       btnr,
    input  wire       btnc,
    input  wire [7:0] sw,
    output wire [7:0] led,

    /*
     * Ethernet: 1000BASE-T RGMII
     */
    input  wire       phy_rx_clk,
    input  wire [3:0] phy_rxd,
    input  wire       phy_rx_ctl,
    output wire       phy_tx_clk,
    output wire [3:0] phy_txd,
    output wire       phy_tx_ctl,
    output wire       phy_reset_n,
    input  wire       phy_int_n,
    input  wire       phy_pme_n,

    /*
     * UART: 115200 bps, 8N1
     */
    input  wire       uart_rxd,
    output wire       uart_txd,
    
    /*
     * AFE5808A: 1 Channel, 1 Frame Clock, 1 Digital Bit Clock
     */
    input  wire       in_P_clk_dt_ports,
    input  wire       in_N_clk_dt_ports,
    input  wire       in_P_clk_fr_ports,
    input  wire       in_N_clk_fr_ports,
    input  wire       in_P_data_ports,
    input  wire       in_N_data_ports    
);

// AXI between MAC and Ethernet modules
wire [7:0] rx_axis_tdata;
wire rx_axis_tvalid;
wire rx_axis_tready;
wire rx_axis_tlast;
wire rx_axis_tuser;

wire [7:0] tx_axis_tdata;
wire tx_axis_tvalid;
wire tx_axis_tready;
wire tx_axis_tlast;
wire tx_axis_tuser;

// Ethernet frame between Ethernet modules and UDP stack
wire rx_eth_hdr_ready;
wire rx_eth_hdr_valid;
wire [47:0] rx_eth_dest_mac;
wire [47:0] rx_eth_src_mac;
wire [15:0] rx_eth_type;
wire [7:0] rx_eth_payload_axis_tdata;
wire rx_eth_payload_axis_tvalid;
wire rx_eth_payload_axis_tready;
wire rx_eth_payload_axis_tlast;
wire rx_eth_payload_axis_tuser;

wire tx_eth_hdr_ready;
wire tx_eth_hdr_valid;
wire [47:0] tx_eth_dest_mac;
wire [47:0] tx_eth_src_mac;
wire [15:0] tx_eth_type;
wire [7:0] tx_eth_payload_axis_tdata;
wire tx_eth_payload_axis_tvalid;
wire tx_eth_payload_axis_tready;
wire tx_eth_payload_axis_tlast;
wire tx_eth_payload_axis_tuser;

// IP frame connections
wire rx_ip_hdr_valid;
wire rx_ip_hdr_ready;
wire [47:0] rx_ip_eth_dest_mac;
wire [47:0] rx_ip_eth_src_mac;
wire [15:0] rx_ip_eth_type;
wire [3:0] rx_ip_version;
wire [3:0] rx_ip_ihl;
wire [5:0] rx_ip_dscp;
wire [1:0] rx_ip_ecn;
wire [15:0] rx_ip_length;
wire [15:0] rx_ip_identification;
wire [2:0] rx_ip_flags;
wire [12:0] rx_ip_fragment_offset;
wire [7:0] rx_ip_ttl;
wire [7:0] rx_ip_protocol;
wire [15:0] rx_ip_header_checksum;
wire [31:0] rx_ip_source_ip;
wire [31:0] rx_ip_dest_ip;
wire [7:0] rx_ip_payload_axis_tdata;
wire rx_ip_payload_axis_tvalid;
wire rx_ip_payload_axis_tready;
wire rx_ip_payload_axis_tlast;
wire rx_ip_payload_axis_tuser;

wire tx_ip_hdr_valid;
wire tx_ip_hdr_ready;
wire [5:0] tx_ip_dscp;
wire [1:0] tx_ip_ecn;
wire [15:0] tx_ip_length;
wire [7:0] tx_ip_ttl;
wire [7:0] tx_ip_protocol;
wire [31:0] tx_ip_source_ip;
wire [31:0] tx_ip_dest_ip;
wire [7:0] tx_ip_payload_axis_tdata;
wire tx_ip_payload_axis_tvalid;
wire tx_ip_payload_axis_tready;
wire tx_ip_payload_axis_tlast;
wire tx_ip_payload_axis_tuser;

// UDP frame connections
wire rx_udp_hdr_valid;
wire rx_udp_hdr_ready;
wire [47:0] rx_udp_eth_dest_mac;
wire [47:0] rx_udp_eth_src_mac;
wire [15:0] rx_udp_eth_type;
wire [3:0] rx_udp_ip_version;
wire [3:0] rx_udp_ip_ihl;
wire [5:0] rx_udp_ip_dscp;
wire [1:0] rx_udp_ip_ecn;
wire [15:0] rx_udp_ip_length;
wire [15:0] rx_udp_ip_identification;
wire [2:0] rx_udp_ip_flags;
wire [12:0] rx_udp_ip_fragment_offset;
wire [7:0] rx_udp_ip_ttl;
wire [7:0] rx_udp_ip_protocol;
wire [15:0] rx_udp_ip_header_checksum;
wire [31:0] rx_udp_ip_source_ip;
wire [31:0] rx_udp_ip_dest_ip;
wire [15:0] rx_udp_source_port;
wire [15:0] rx_udp_dest_port;
wire [15:0] rx_udp_length;
wire [15:0] rx_udp_checksum;
wire [7:0] rx_udp_payload_axis_tdata;
wire rx_udp_payload_axis_tvalid;
wire rx_udp_payload_axis_tready;
wire rx_udp_payload_axis_tlast;
wire rx_udp_payload_axis_tuser;

wire tx_udp_hdr_valid;
wire tx_udp_hdr_ready;
wire [5:0] tx_udp_ip_dscp;
wire [1:0] tx_udp_ip_ecn;
wire [7:0] tx_udp_ip_ttl;
wire [31:0] tx_udp_ip_source_ip;
wire [31:0] tx_udp_ip_dest_ip;
wire [15:0] tx_udp_source_port;
wire [15:0] tx_udp_dest_port;
wire [15:0] tx_udp_length;
wire [15:0] tx_udp_checksum;
wire [7:0] tx_udp_payload_axis_tdata;
wire tx_udp_payload_axis_tvalid;
wire tx_udp_payload_axis_tready;
wire tx_udp_payload_axis_tlast;
wire tx_udp_payload_axis_tuser;

wire [7:0] rx_fifo_udp_payload_axis_tdata;
wire rx_fifo_udp_payload_axis_tvalid;
wire rx_fifo_udp_payload_axis_tready;
wire rx_fifo_udp_payload_axis_tlast;
wire rx_fifo_udp_payload_axis_tuser;

wire [7:0] tx_fifo_udp_payload_axis_tdata;
wire tx_fifo_udp_payload_axis_tvalid;
wire tx_fifo_udp_payload_axis_tready;
wire tx_fifo_udp_payload_axis_tlast;
wire tx_fifo_udp_payload_axis_tuser;

// Receiving master FIFO
wire [7:0] m_fifo_udp_payload_axis_tdata;
wire m_fifo_udp_payload_axis_tvalid;
wire m_fifo_udp_payload_axis_tready;
wire m_fifo_udp_payload_axis_tlast;
wire m_fifo_udp_payload_axis_tuser;

// Transmitting slave FIFO
wire [7:0] s_fifo_udp_payload_axis_tdata;
wire s_fifo_udp_payload_axis_tvalid;
wire s_fifo_udp_payload_axis_tready;
wire s_fifo_udp_payload_axis_tlast;
wire s_fifo_udp_payload_axis_tuser;

// Transmitting Module AXIs signals
//wire [7:0] s_axis_tdata_messager;
//wire s_axis_tvalid_messager;
//wire s_axis_tready_messager;
//wire s_axis_tlast_messager;
//wire s_axis_tuser_messager; 

// AFE5808A FIFO's AXI Interface
wire [7:0] afe_axis_tdata_messager;
wire afe_axis_tvalid_messager;
wire afe_axis_tready_messager;
wire afe_axis_tlast_messager;
wire afe_axis_tuser_messager; 

// Configuration
wire [47:0] local_mac   = 48'h02_00_00_00_00_00;
wire [47:0] dest_mac    = 48'hE8_11_32_91_D9_0D;
wire [31:0] local_ip    = {8'd192, 8'd168, 8'd0,   8'd128}; //{8'd192, 8'd168, 8'd0,   8'd128};
wire [31:0] gateway_ip  = {8'd192, 8'd168, 8'd0,   8'd1}; //{8'd192, 8'd168, 8'd0,   8'd1};
wire [31:0] subnet_mask = {8'd255, 8'd255, 8'd255, 8'd0}; //{8'd255, 8'd255, 8'd255, 8'd0};
wire [31:0] dest_ip     = {8'd192, 8'd168, 8'd0,   8'd102}; 
wire [15:0] local_port  = 16'd1234;
wire [15:0] dest_port   = 16'd4678;
wire [15:0] udp_length  = 16'd9;//16'd4088; //16'd9; // Fixed to account the 8 octets of the UDP Header Field and the 46 Bytes of Data Payload
 

// IP ports not used
assign rx_ip_hdr_ready = 1;
assign rx_ip_payload_axis_tready = 1;

assign tx_ip_hdr_valid = 0;
assign tx_ip_dscp = 0;
assign tx_ip_ecn = 0;
assign tx_ip_length = 0;
assign tx_ip_ttl = 0;
assign tx_ip_protocol = 0;
assign tx_ip_source_ip = 0;
assign tx_ip_dest_ip = 0;
assign tx_ip_payload_axis_tdata = 0;
assign tx_ip_payload_axis_tvalid = 0;
assign tx_ip_payload_axis_tlast = 0;
assign tx_ip_payload_axis_tuser = 0;

// Loop back UDP
wire match_cond = rx_udp_dest_port == 1234;
wire no_match = !match_cond;

reg match_cond_reg = 0;
reg no_match_reg = 0;

always @(posedge clk100) begin
    if (rst) begin
        match_cond_reg <= 0;
        no_match_reg <= 0;
    end else begin
        if (rx_udp_payload_axis_tvalid) begin
            if ((!match_cond_reg && !no_match_reg) ||
                (rx_udp_payload_axis_tvalid && rx_udp_payload_axis_tready && rx_udp_payload_axis_tlast)) begin
                match_cond_reg <= match_cond;
                no_match_reg <= no_match;
            end
        end else begin
            match_cond_reg <= 0;
            no_match_reg <= 0;
        end
    end
end

assign tx_udp_hdr_valid = 1; //rx_udp_hdr_valid && match_cond; //2nd : 1; // 1st: tx_eth_hdr_ready; //rx_udp_hdr_valid && match_cond;
assign rx_udp_hdr_ready = (rx_eth_hdr_ready && match_cond) || no_match;
assign tx_udp_ip_dscp = 0;
assign tx_udp_ip_ecn = 0;
assign tx_udp_ip_ttl = 64;
assign tx_udp_ip_source_ip = local_ip;
assign tx_udp_ip_dest_ip = dest_ip;
assign tx_udp_source_port = local_port;
assign tx_udp_dest_port = dest_port;
assign tx_udp_length = udp_length; // Original: rx_udp_length;
assign tx_udp_checksum = 0;

assign tx_udp_payload_axis_tdata = tx_fifo_udp_payload_axis_tdata;
assign tx_udp_payload_axis_tvalid = tx_fifo_udp_payload_axis_tvalid;
assign tx_fifo_udp_payload_axis_tready = tx_udp_payload_axis_tready;
assign tx_udp_payload_axis_tlast = tx_fifo_udp_payload_axis_tlast;
assign tx_udp_payload_axis_tuser = tx_fifo_udp_payload_axis_tuser;

assign m_fifo_udp_payload_axis_tready = 1;

assign rx_fifo_udp_payload_axis_tdata = rx_udp_payload_axis_tdata;
assign rx_fifo_udp_payload_axis_tvalid = rx_udp_payload_axis_tvalid && match_cond_reg;
assign rx_udp_payload_axis_tready = (rx_fifo_udp_payload_axis_tready && match_cond_reg) || no_match_reg;
assign rx_fifo_udp_payload_axis_tlast = rx_udp_payload_axis_tlast;
assign rx_fifo_udp_payload_axis_tuser = rx_udp_payload_axis_tuser;

// Transmitting FIFO assignations
assign s_fifo_udp_payload_axis_tdata = afe_axis_tdata_messager;
assign s_fifo_udp_payload_axis_tvalid = afe_axis_tvalid_messager;
assign afe_axis_tready_messager = s_fifo_udp_payload_axis_tready;
assign s_fifo_udp_payload_axis_tlast = afe_axis_tlast_messager;
assign s_fifo_udp_payload_axis_tuser = afe_axis_tuser_messager;

//assign tx_udp_payload_axis_tdata = s_axis_tdata_messager;
//assign tx_udp_payload_axis_tvalid = s_axis_tvalid_messager;
//assign s_axis_tready_messager = tx_udp_payload_axis_tready;
//assign tx_udp_payload_axis_tlast = s_axis_tlast_messager;
//assign tx_udp_payload_axis_tuser = s_axis_tuser_messager;

assign phy_reset_n = !rst;

assign uart_txd = 0;

eth_mac_1g_rgmii_fifo #(
    .TARGET("XILINX"),
    .IODDR_STYLE("IODDR"),
    .CLOCK_INPUT_STYLE("BUFR"),
    .USE_CLK90("TRUE"),
    .ENABLE_PADDING(1),
    .MIN_FRAME_LENGTH(64),
    .TX_FIFO_DEPTH(8192),
    .TX_FRAME_FIFO(1),
    .RX_FIFO_DEPTH(4096),
    .RX_FRAME_FIFO(1)
)
eth_mac_inst (
    .gtx_clk(clk),
    .gtx_clk90(clk90),
    .gtx_rst(rst),
    .logic_clk(clk100),
    .logic_rst(rst),

    .tx_axis_tdata(tx_axis_tdata),
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tready(tx_axis_tready),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_axis_tuser(tx_axis_tuser),

    .rx_axis_tdata(rx_axis_tdata),
    .rx_axis_tvalid(rx_axis_tvalid),
    .rx_axis_tready(rx_axis_tready),
    .rx_axis_tlast(rx_axis_tlast),
    .rx_axis_tuser(rx_axis_tuser),

    .rgmii_rx_clk(phy_rx_clk),
    .rgmii_rxd(phy_rxd),
    .rgmii_rx_ctl(phy_rx_ctl),
    .rgmii_tx_clk(phy_tx_clk),
    .rgmii_txd(phy_txd),
    .rgmii_tx_ctl(phy_tx_ctl),

    .tx_fifo_overflow(),
    .tx_fifo_bad_frame(),
    .tx_fifo_good_frame(),
    .rx_error_bad_frame(),
    .rx_error_bad_fcs(),
    .rx_fifo_overflow(),
    .rx_fifo_bad_frame(),
    .rx_fifo_good_frame(),
    .speed(),

    .ifg_delay(12)
);

eth_axis_rx
eth_axis_rx_inst (
    .clk(clk100),
    .rst(rst),
    // AXI input
    .s_axis_tdata(rx_axis_tdata),
    .s_axis_tvalid(rx_axis_tvalid),
    .s_axis_tready(rx_axis_tready),
    .s_axis_tlast(rx_axis_tlast),
    .s_axis_tuser(rx_axis_tuser),
    // Ethernet frame output
    .m_eth_hdr_valid(rx_eth_hdr_valid),
    .m_eth_hdr_ready(rx_eth_hdr_ready),
    .m_eth_dest_mac(rx_eth_dest_mac),
    .m_eth_src_mac(rx_eth_src_mac),
    .m_eth_type(rx_eth_type),
    .m_eth_payload_axis_tdata(rx_eth_payload_axis_tdata),
    .m_eth_payload_axis_tvalid(rx_eth_payload_axis_tvalid),
    .m_eth_payload_axis_tready(rx_eth_payload_axis_tready),
    .m_eth_payload_axis_tlast(rx_eth_payload_axis_tlast),
    .m_eth_payload_axis_tuser(rx_eth_payload_axis_tuser),
    // Status signals
    .busy(),
    .error_header_early_termination()
);

eth_axis_tx
eth_axis_tx_inst (
    .clk(clk100),
    .rst(rst),
    // Ethernet frame input
    .s_eth_hdr_valid(tx_eth_hdr_valid),
    .s_eth_hdr_ready(tx_eth_hdr_ready),
    .s_eth_dest_mac(tx_eth_dest_mac),
    .s_eth_src_mac(tx_eth_src_mac),
    .s_eth_type(tx_eth_type),
    .s_eth_payload_axis_tdata(tx_eth_payload_axis_tdata),
    .s_eth_payload_axis_tvalid(tx_eth_payload_axis_tvalid),
    .s_eth_payload_axis_tready(tx_eth_payload_axis_tready),
    .s_eth_payload_axis_tlast(tx_eth_payload_axis_tlast),
    .s_eth_payload_axis_tuser(tx_eth_payload_axis_tuser),
    // AXI output
    .m_axis_tdata(tx_axis_tdata),
    .m_axis_tvalid(tx_axis_tvalid),
    .m_axis_tready(tx_axis_tready),
    .m_axis_tlast(tx_axis_tlast),
    .m_axis_tuser(tx_axis_tuser),
    // Status signals
    .busy()
);

wire udp_tx_busy;
wire udp_tx_error_payload_early_termination;
wire ip_tx_error_arp_failed;
wire ip_tx_error_payload_early_termination;

udp_complete # ( 
    .UDP_CHECKSUM_PAYLOAD_FIFO_DEPTH(8192)
)
udp_complete_inst (
    .clk(clk100),
    .rst(rst),
    // Ethernet frame input
    .s_eth_hdr_valid(rx_eth_hdr_valid),
    .s_eth_hdr_ready(rx_eth_hdr_ready),
    .s_eth_dest_mac(rx_eth_dest_mac),
    .s_eth_src_mac(rx_eth_src_mac),
    .s_eth_type(rx_eth_type),
    .s_eth_payload_axis_tdata(rx_eth_payload_axis_tdata),
    .s_eth_payload_axis_tvalid(rx_eth_payload_axis_tvalid),
    .s_eth_payload_axis_tready(rx_eth_payload_axis_tready),
    .s_eth_payload_axis_tlast(rx_eth_payload_axis_tlast),
    .s_eth_payload_axis_tuser(rx_eth_payload_axis_tuser),
    // Ethernet frame output
    .m_eth_hdr_valid(tx_eth_hdr_valid),
    .m_eth_hdr_ready(tx_eth_hdr_ready),
    .m_eth_dest_mac(tx_eth_dest_mac),
    .m_eth_src_mac(tx_eth_src_mac),
    .m_eth_type(tx_eth_type),
    .m_eth_payload_axis_tdata(tx_eth_payload_axis_tdata),
    .m_eth_payload_axis_tvalid(tx_eth_payload_axis_tvalid),
    .m_eth_payload_axis_tready(tx_eth_payload_axis_tready),
    .m_eth_payload_axis_tlast(tx_eth_payload_axis_tlast),
    .m_eth_payload_axis_tuser(tx_eth_payload_axis_tuser),
    // IP frame input
    .s_ip_hdr_valid(tx_ip_hdr_valid),
    .s_ip_hdr_ready(tx_ip_hdr_ready),
    .s_ip_dscp(tx_ip_dscp),
    .s_ip_ecn(tx_ip_ecn),
    .s_ip_length(tx_ip_length),
    .s_ip_ttl(tx_ip_ttl),
    .s_ip_protocol(tx_ip_protocol),
    .s_ip_source_ip(tx_ip_source_ip),
    .s_ip_dest_ip(tx_ip_dest_ip),
    .s_ip_payload_axis_tdata(tx_ip_payload_axis_tdata),
    .s_ip_payload_axis_tvalid(tx_ip_payload_axis_tvalid),
    .s_ip_payload_axis_tready(tx_ip_payload_axis_tready),
    .s_ip_payload_axis_tlast(tx_ip_payload_axis_tlast),
    .s_ip_payload_axis_tuser(tx_ip_payload_axis_tuser),
    // IP frame output
    .m_ip_hdr_valid(rx_ip_hdr_valid),
    .m_ip_hdr_ready(rx_ip_hdr_ready),
    .m_ip_eth_dest_mac(rx_ip_eth_dest_mac),
    .m_ip_eth_src_mac(rx_ip_eth_src_mac),
    .m_ip_eth_type(rx_ip_eth_type),
    .m_ip_version(rx_ip_version),
    .m_ip_ihl(rx_ip_ihl),
    .m_ip_dscp(rx_ip_dscp),
    .m_ip_ecn(rx_ip_ecn),
    .m_ip_length(rx_ip_length),
    .m_ip_identification(rx_ip_identification),
    .m_ip_flags(rx_ip_flags),
    .m_ip_fragment_offset(rx_ip_fragment_offset),
    .m_ip_ttl(rx_ip_ttl),
    .m_ip_protocol(rx_ip_protocol),
    .m_ip_header_checksum(rx_ip_header_checksum),
    .m_ip_source_ip(rx_ip_source_ip),
    .m_ip_dest_ip(rx_ip_dest_ip),
    .m_ip_payload_axis_tdata(rx_ip_payload_axis_tdata),
    .m_ip_payload_axis_tvalid(rx_ip_payload_axis_tvalid),
    .m_ip_payload_axis_tready(rx_ip_payload_axis_tready),
    .m_ip_payload_axis_tlast(rx_ip_payload_axis_tlast),
    .m_ip_payload_axis_tuser(rx_ip_payload_axis_tuser),
    // UDP frame input
    .s_udp_hdr_valid(tx_udp_hdr_valid),
    .s_udp_hdr_ready(tx_udp_hdr_ready),
    .s_udp_ip_dscp(tx_udp_ip_dscp),
    .s_udp_ip_ecn(tx_udp_ip_ecn),
    .s_udp_ip_ttl(tx_udp_ip_ttl),
    .s_udp_ip_source_ip(tx_udp_ip_source_ip),
    .s_udp_ip_dest_ip(tx_udp_ip_dest_ip),
    .s_udp_source_port(tx_udp_source_port),
    .s_udp_dest_port(tx_udp_dest_port),
    .s_udp_length(tx_udp_length),
    .s_udp_checksum(tx_udp_checksum),
    .s_udp_payload_axis_tdata(tx_udp_payload_axis_tdata),
    .s_udp_payload_axis_tvalid(tx_udp_payload_axis_tvalid),
    .s_udp_payload_axis_tready(tx_udp_payload_axis_tready),
    .s_udp_payload_axis_tlast(tx_udp_payload_axis_tlast),
    .s_udp_payload_axis_tuser(tx_udp_payload_axis_tuser),
    // UDP frame output
    .m_udp_hdr_valid(rx_udp_hdr_valid),
    .m_udp_hdr_ready(rx_udp_hdr_ready),
    .m_udp_eth_dest_mac(rx_udp_eth_dest_mac),
    .m_udp_eth_src_mac(rx_udp_eth_src_mac),
    .m_udp_eth_type(rx_udp_eth_type),
    .m_udp_ip_version(rx_udp_ip_version),
    .m_udp_ip_ihl(rx_udp_ip_ihl),
    .m_udp_ip_dscp(rx_udp_ip_dscp),
    .m_udp_ip_ecn(rx_udp_ip_ecn),
    .m_udp_ip_length(rx_udp_ip_length),
    .m_udp_ip_identification(rx_udp_ip_identification),
    .m_udp_ip_flags(rx_udp_ip_flags),
    .m_udp_ip_fragment_offset(rx_udp_ip_fragment_offset),
    .m_udp_ip_ttl(rx_udp_ip_ttl),
    .m_udp_ip_protocol(rx_udp_ip_protocol),
    .m_udp_ip_header_checksum(rx_udp_ip_header_checksum),
    .m_udp_ip_source_ip(rx_udp_ip_source_ip),
    .m_udp_ip_dest_ip(rx_udp_ip_dest_ip),
    .m_udp_source_port(rx_udp_source_port),
    .m_udp_dest_port(rx_udp_dest_port),
    .m_udp_length(rx_udp_length),
    .m_udp_checksum(rx_udp_checksum),
    .m_udp_payload_axis_tdata(rx_udp_payload_axis_tdata),
    .m_udp_payload_axis_tvalid(rx_udp_payload_axis_tvalid),
    .m_udp_payload_axis_tready(rx_udp_payload_axis_tready),
    .m_udp_payload_axis_tlast(rx_udp_payload_axis_tlast),
    .m_udp_payload_axis_tuser(rx_udp_payload_axis_tuser),
    // Status signals
    .ip_rx_busy(),
    .ip_tx_busy(),
    .udp_rx_busy(),
    .udp_tx_busy(udp_tx_busy),
    .ip_rx_error_header_early_termination(),
    .ip_rx_error_payload_early_termination(),
    .ip_rx_error_invalid_header(),
    .ip_rx_error_invalid_checksum(),
    .ip_tx_error_payload_early_termination(ip_tx_error_payload_early_termination),
    .ip_tx_error_arp_failed(ip_tx_error_arp_failed),
    .udp_rx_error_header_early_termination(),
    .udp_rx_error_payload_early_termination(),
    .udp_tx_error_payload_early_termination(udp_tx_error_payload_early_termination),
    // Configuration
    .local_mac(local_mac),
    .local_ip(local_ip),
    .gateway_ip(gateway_ip),
    .subnet_mask(subnet_mask),
    .clear_arp_cache(0)
);

axis_fifo #(
    .DEPTH(8192),
    .DATA_WIDTH(8),
    .KEEP_ENABLE(0),
    .ID_ENABLE(0),
    .DEST_ENABLE(0),
    .USER_ENABLE(1),
    .USER_WIDTH(1),
    .FRAME_FIFO(0)
)
udp_payload_rx_fifo (
    .clk(clk100),
    .rst(rst),

    // AXI input
    .s_axis_tdata(rx_fifo_udp_payload_axis_tdata),
    .s_axis_tkeep(0),
    .s_axis_tvalid(rx_fifo_udp_payload_axis_tvalid),
    .s_axis_tready(rx_fifo_udp_payload_axis_tready),
    .s_axis_tlast(rx_fifo_udp_payload_axis_tlast),
    .s_axis_tid(0),
    .s_axis_tdest(0),
    .s_axis_tuser(rx_fifo_udp_payload_axis_tuser),

    // AXI output
    .m_axis_tdata(m_fifo_udp_payload_axis_tdata),//tx_fifo_udp_payload_axis_tdata
    .m_axis_tkeep(),
    .m_axis_tvalid(m_fifo_udp_payload_axis_tvalid),
    .m_axis_tready(m_fifo_udp_payload_axis_tready),
    .m_axis_tlast(m_fifo_udp_payload_axis_tlast),
    .m_axis_tid(),
    .m_axis_tdest(),
    .m_axis_tuser(m_fifo_udp_payload_axis_tuser),

    // Status
    .status_overflow(),
    .status_bad_frame(),
    .status_good_frame()
);

// Data Sender/Message Generator
//message_sender
//mes_send_inst (
//    .clk(clk),
//    .rst(rst),
//    // Manual Input
//    .btn(btnc),
//    // AXI Signals
//    .ready(s_axis_tready_messager),
//    .valid(s_axis_tvalid_messager),
//    .last(s_axis_tlast_messager),
//    .user(s_axis_tuser_messager),
//    .data(s_axis_tdata_messager)
//);

// Transmitting AXIs FIFO
axis_fifo #(
    .DEPTH(8192),
    .DATA_WIDTH(8),
    .KEEP_ENABLE(0),
    .ID_ENABLE(0),
    .DEST_ENABLE(0),
    .USER_ENABLE(1),
    .USER_WIDTH(1),
    .FRAME_FIFO(0)
)
udp_payload_tx_fifo (
    .clk(clk100),
    .rst(rst),

    // AXI input
    .s_axis_tdata(s_fifo_udp_payload_axis_tdata),
    .s_axis_tkeep(0),
    .s_axis_tvalid(s_fifo_udp_payload_axis_tvalid),
    .s_axis_tready(s_fifo_udp_payload_axis_tready),
    .s_axis_tlast(s_fifo_udp_payload_axis_tlast),
    .s_axis_tid(0),
    .s_axis_tdest(0),
    .s_axis_tuser(s_fifo_udp_payload_axis_tuser),

    // AXI output
    .m_axis_tdata(tx_fifo_udp_payload_axis_tdata),
    .m_axis_tkeep(),
    .m_axis_tvalid(tx_fifo_udp_payload_axis_tvalid),
    .m_axis_tready(tx_fifo_udp_payload_axis_tready),
    .m_axis_tlast(tx_fifo_udp_payload_axis_tlast),
    .m_axis_tid(),
    .m_axis_tdest(),
    .m_axis_tuser(tx_fifo_udp_payload_axis_tuser),

    // Status
    .status_overflow(),
    .status_bad_frame(),
    .status_good_frame()
);

// Create the input data to be stored by the FIFO
//wire [13:0] d_cnt;
//wire start_cnt;

//assign start_cnt = sw[7];

//// 14 bit Module Counter
//counter # (
//    .DATA_WIDTH(14)
//) 
//counter_inst (
//    .CLK(clk),
//    .RST(rst),
//    .STR(start_cnt),
//    .CNT_VAL(d_cnt)
//);

// AFE's Data Flags
wire [13:0] d_afe; // Create the input data to be stored by the FIFO
wire [1:0] ph_sel;
wire ph_ovfl;
wire bitslip_actv;
wire dt_rdy;
wire afe_clk_div;
wire al_mode;
wire train_pat_actv;
wire custom_pat_actv;

assign al_mode = sw[5];
assign train_pat_actv = sw[4];
assign custom_pat_actv = sw[3];

// AFE Module Data Acquisition and Alignment
AcquisitionManager # (
    .n_ch(1)
)
afe_data_man ( 
    .in_P_clk_dt_ports(in_P_clk_dt_ports),
    .in_N_clk_dt_ports(in_N_clk_dt_ports),
    .in_P_clk_fr_ports(in_P_clk_fr_ports),
    .in_N_clk_fr_ports(in_N_clk_fr_ports),
    .in_P_data_ports(in_P_data_ports),
    .in_N_data_ports(in_N_data_ports),
    .sys_clk(clk100),
    .glob_rst(rst),
    .alignment_mode(al_mode),
    .train_pat_act(train_pat_actv),
    .custom_pat_act(custom_pat_actv),    
    .phase_selected(ph_sel),
    .ph_overflow(ph_ovfl),
    .bistlip_on(bitslip_actv),     
    .dt_rdy(dt_rdy),
    .clk_div(afe_clk_div),
    .data_output(d_afe)
);

// FSM Self Trigger Control signals
wire rd_ctrl;
assign rd_ctrl = sw[2]; // Define the control of the read operation

// AFE's FIFO Flags
wire afe_fifo_a_empty;
wire afe_fifo_a_full;
wire afe_fifo_empty;
wire afe_fifo_full;
wire afe_fifo_wr_err;
wire afe_fifo_rd_err;
wire wr_enable_signal;
wire rd_enable_signal;
//wire state_val;
wire fifo_rd_out;
assign wr_enable_signal = sw[7];
assign rd_enable_signal = sw[6];

// Self Trigger Component
selfTrigger_Module 
self_trig_inst (
    .afe_data(d_afe),
    .dt_rdy(dt_rdy),
    .rst(rst),
    .clk(afe_clk_div),
    .rd_clk(clk50),//clk625),
    .sys_clk(clk100),
    .rd_ctrl(rd_ctrl),
    .wr_enable_signal(wr_enable_signal),
    .rd_enable_signal(rd_enable_signal),
    .filt_out(),
    .xcorr_out(),
    .xcorr_data_out(),
    .trigger(),
//    .state_val(state_val),
    .fifo_rd_out(fifo_rd_out),
    .fifo_o(),    
    .fifo_a_empty(afe_fifo_a_empty),
    .fifo_a_full(afe_fifo_a_full),
    .fifo_empty(afe_fifo_empty),
    .fifo_full(afe_fifo_full),
    .fifo_wr_err(afe_fifo_wr_err),
    .fifo_rd_err(afe_fifo_rd_err),
    .axi_data(afe_axis_tdata_messager),
    .axi_valid(afe_axis_tvalid_messager),
    .axi_ready(afe_axis_tready_messager),
    .axi_last(afe_axis_tlast_messager),
    .axi_user(afe_axis_tuser_messager)
);

// Self Trigger signals
//wire [13:0] d_filt;
//wire self_trig;
//wire d_afe_reg;

//// Self Trigger Component
//selfTrigger_Module #(
//    // High Pass Filter parameters
//    .DATA_SIZE(14),
//    .COEFF_RES(17),
//    // Self Trigger parameters
//    .g_INPUT_WIDTH(14),
//    .g_SUM_WIDTH(14),
//    .g_MULT_WIDTH(28)
//)
//self_trig_inst (
//    // Module Inputs
//    .CLK(afe_clk_div),
//    .RST(rst),
//    .D_IN(d_afe),
//    // Module Outputs
//    .TRIG(self_trig),
//    .D_OUT_FILT(d_filt),
//    .O_DATA(d_afe_reg)
//);

// FSM Self Trigger Control signals
//wire trig;
//wire read;
//wire rd_ctrl;

//assign rd_ctrl = sw[2]; // Define the control of the read operation
// when set to 1, the system will read after a write operation has ocurred
// when set to 0, the system will wait for the internal read signal to generate the read operation

// Self Trigger control FSM
//trigSaveFSM # (
//    .WR_CLK_FREQ(40.0),
//    .RD_CLK_FREQ(62.5)
//)
//trig_ctrl_fsm_inst (
//    .WR_CLK(afe_clk_div),
//    .RD_CLK(clk50),
//    .SYS_CLK(clk),
//    .RST(rst),
//    .TRIG_IN(self_trig),
//    .READ_IN(1'b0), // 1 to read data Or 0 to stop it, whenever its possible
//    .FIFO_FULL(afe_fifo_a_full),
//    .FIFO_EMPTY(afe_fifo_empty),
//    .RD_AFTER(rd_ctrl), // Read inmediately after the FIFO was filled with data
//    .WR_AFTER(1'b0), // Write inmediately after the FIFO was emptied of its data
//    .TRIG_OUT(trig),
//    .READ_OUT(read)
//);

// AFE's FIFO Flags
//wire afe_fifo_a_empty;
//wire afe_fifo_a_full;
//wire afe_fifo_empty;
//wire afe_fifo_full;
//wire afe_fifo_wr_err;
//wire afe_fifo_rd_err;
//wire wr_enable_signal;
//wire rd_enable_signal;
//wire fifo_trig; // Self trigger signal
//wire fifo_rd; // Self generating read signal

//assign wr_enable_signal = sw[7];
//assign rd_enable_signal = sw[6];
//assign fifo_trig = wr_enable_signal || trig; // Self trigger is asserted byt he system or by external force
//assign fifo_rd = rd_enable_signal || read; // Read the FIFO whenever external action or the system pre defines

// AFE Module FIFO
//AXI_FIFO_Adapter #(
//    .WR_CLK_FREQ(40.0),
//    .RD_CLK_FREQ(62.5),
//    .AEMPTY_OFF(4'h6),
//    .AFULL_OFF(12'h590)
//)
//afe_axi_fifo (
//    .d_i(d_afe),//d_filt),//d_afe),//d_cnt),
//    .dt_rdy(dt_rdy),
//    .wr_enable(fifo_trig),//wr_enable_signal),//btnu),
//    .rd_enable(fifo_rd),//rd_enable_signal),//btnd),
//    .full_read(1'b1),
//    .wr_clk(afe_clk_div),
//    .rd_clk(clk50),
//    .m_axi_clk(clk),
//    .rst(rst),
//    .a_empty(afe_fifo_a_empty),
//    .a_full(afe_fifo_a_full),
//    .empty(afe_fifo_empty),
//    .full(afe_fifo_full),
//    .wr_err(afe_fifo_wr_err),
//    .rd_err(afe_fifo_rd_err),
//    .wr_count(),
//    .rd_count(),
//    .m_axi_fifo_tdata(afe_axis_tdata_messager),
//    .m_axi_fifo_tvalid(afe_axis_tvalid_messager),
//    .m_axi_fifo_tready(afe_axis_tready_messager),
//    .m_axi_fifo_tlast(afe_axis_tlast_messager),
//    .m_axi_fifo_tuser(afe_axis_tuser_messager)
//);

reg [7:0] led_reg = 0;
wire [1:0] sw_led;
assign sw_led = sw[1:0];
 
always @(sw_led, udp_tx_busy, ip_tx_error_payload_early_termination, ip_tx_error_arp_failed, udp_tx_error_payload_early_termination,
         afe_fifo_rd_err, afe_fifo_a_full, afe_fifo_full, afe_fifo_wr_err, afe_fifo_a_empty, afe_fifo_empty, dt_rdy, bitslip_actv, ph_ovfl,
         ph_sel, d_afe, tx_udp_payload_axis_tready, tx_eth_payload_axis_tready, tx_axis_tready) begin
    case(sw_led)
        8'b00 : led_reg = {4'b0000, udp_tx_busy, ip_tx_error_payload_early_termination, ip_tx_error_arp_failed, udp_tx_error_payload_early_termination};
//        8'b00 : led_reg = {4'b0000, fifo_rd_out, state_val};
        8'b01 : led_reg = {2'b00, afe_fifo_rd_err, afe_fifo_a_full, afe_fifo_full, afe_fifo_wr_err, afe_fifo_a_empty, afe_fifo_empty}; // AFE FIFO's Flags
        8'b10 : led_reg = {5'b00000, tx_udp_payload_axis_tready, tx_eth_payload_axis_tready, tx_axis_tready}; // AFE Data Acquisition Flags
        8'b11 : led_reg = {3'b000, dt_rdy, bitslip_actv, ph_ovfl, ph_sel};
//        8'b100 : led_reg = d_afe[7:0];
//        8'b101 : led_reg = {2'b00, d_afe[13:8]};
//        8'b110 : led_reg = afe_axis_tdata_messager;
//        8'b111 : led_reg = {2'b00, d_afe[13:8]};
//        8'b00110100 : led_reg = ;
        default     : led_reg = {4'b0000, udp_tx_busy, ip_tx_error_payload_early_termination, ip_tx_error_arp_failed, udp_tx_error_payload_early_termination};
    endcase
end

assign led = led_reg; 

endmodule

`resetall