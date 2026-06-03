`timescale 1ns / 1ps

module tb_pcie_top();

    reg  pcie_clk;
    reg  pcie_rst_n;
    reg  pipe_clk;
    wire m_awvalid;
    reg  m_awready;
    wire m_awaddr;
    wire m_awid;
    wire m_awlen;
    wire m_awsize;
    wire m_wvalid;
    reg  m_wready;
    wire m_wdata;
    wire m_wstrb;
    wire m_wlast;
    reg  m_bvalid;
    wire m_bready;
    reg  m_bresp;
    reg  m_bid;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    wire m_arid;
    wire m_arlen;
    wire m_arsize;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rresp;
    reg  m_rlast;
    reg  m_rid;
    reg  s_awvalid;
    wire s_awready;
    reg  s_awaddr;
    reg  s_awid;
    reg  s_awlen;
    reg  s_awsize;
    reg  s_wvalid;
    wire s_wready;
    reg  s_wdata;
    reg  s_wstrb;
    reg  s_wlast;
    wire s_bvalid;
    reg  s_bready;
    wire s_bresp;
    wire s_bid;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    reg  s_arid;
    reg  s_arlen;
    reg  s_arsize;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    wire s_rlast;
    wire s_rid;
    wire pipe_tx_data;
    wire pipe_tx_datak;
    reg  pipe_rx_data;
    reg  pipe_rx_datak;
    wire pipe_tx_rate;
    wire pipe_tx_elecidle;
    wire pipe_tx_compliance;
    wire pipe_rx_polarity;
    wire pipe_power_down;
    reg  pipe_rx_valid;
    reg  pipe_rx_elecidle;
    reg  pipe_rx_status;
    reg  pipe_phy_status;

    // DUT Instantiation
    pcie_top uut (
        .pcie_clk(pcie_clk),
        .pcie_rst_n(pcie_rst_n),
        .pipe_clk(pipe_clk),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_awid(m_awid),
        .m_awlen(m_awlen),
        .m_awsize(m_awsize),
        .m_wvalid(m_wvalid),
        .m_wready(m_wready),
        .m_wdata(m_wdata),
        .m_wstrb(m_wstrb),
        .m_wlast(m_wlast),
        .m_bvalid(m_bvalid),
        .m_bready(m_bready),
        .m_bresp(m_bresp),
        .m_bid(m_bid),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_arid(m_arid),
        .m_arlen(m_arlen),
        .m_arsize(m_arsize),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rresp(m_rresp),
        .m_rlast(m_rlast),
        .m_rid(m_rid),
        .s_awvalid(s_awvalid),
        .s_awready(s_awready),
        .s_awaddr(s_awaddr),
        .s_awid(s_awid),
        .s_awlen(s_awlen),
        .s_awsize(s_awsize),
        .s_wvalid(s_wvalid),
        .s_wready(s_wready),
        .s_wdata(s_wdata),
        .s_wstrb(s_wstrb),
        .s_wlast(s_wlast),
        .s_bvalid(s_bvalid),
        .s_bready(s_bready),
        .s_bresp(s_bresp),
        .s_bid(s_bid),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_arid(s_arid),
        .s_arlen(s_arlen),
        .s_arsize(s_arsize),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .s_rlast(s_rlast),
        .s_rid(s_rid),
        .pipe_tx_data(pipe_tx_data),
        .pipe_tx_datak(pipe_tx_datak),
        .pipe_rx_data(pipe_rx_data),
        .pipe_rx_datak(pipe_rx_datak),
        .pipe_tx_rate(pipe_tx_rate),
        .pipe_tx_elecidle(pipe_tx_elecidle),
        .pipe_tx_compliance(pipe_tx_compliance),
        .pipe_rx_polarity(pipe_rx_polarity),
        .pipe_power_down(pipe_power_down),
        .pipe_rx_valid(pipe_rx_valid),
        .pipe_rx_elecidle(pipe_rx_elecidle),
        .pipe_rx_status(pipe_rx_status),
        .pipe_phy_status(pipe_phy_status)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_pcie_top.vcd");
        $dumpvars(0, tb_pcie_top);

        // Initialize inputs
        pcie_clk = 0;
        pcie_rst_n = 0;
        pipe_clk = 0;
        m_awready = 0;
        m_wready = 0;
        m_bvalid = 0;
        m_bresp = 0;
        m_bid = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rresp = 0;
        m_rlast = 0;
        m_rid = 0;
        s_awvalid = 0;
        s_awaddr = 0;
        s_awid = 0;
        s_awlen = 0;
        s_awsize = 0;
        s_wvalid = 0;
        s_wdata = 0;
        s_wstrb = 0;
        s_wlast = 0;
        s_bready = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_arid = 0;
        s_arlen = 0;
        s_arsize = 0;
        s_rready = 0;
        pipe_rx_data = 0;
        pipe_rx_datak = 0;
        pipe_rx_valid = 0;
        pipe_rx_elecidle = 0;
        pipe_rx_status = 0;
        pipe_phy_status = 0;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
