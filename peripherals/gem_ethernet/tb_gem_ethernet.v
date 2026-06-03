`timescale 1ns / 1ps

module tb_gem_ethernet();

    reg  clk;
    reg  rst_n;
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
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    wire mac_irq;
    reg  tx_clk;
    wire gmii_txd;
    wire gmii_tx_en;
    wire gmii_tx_er;
    reg  rx_clk;
    reg  gmii_rxd;
    reg  gmii_rx_dv;
    reg  gmii_rx_er;
    reg  gmii_crs;
    reg  gmii_col;

    // DUT Instantiation
    gem_ethernet uut (
        .clk(clk),
        .rst_n(rst_n),
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
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .mac_irq(mac_irq),
        .tx_clk(tx_clk),
        .gmii_txd(gmii_txd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .rx_clk(rx_clk),
        .gmii_rxd(gmii_rxd),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_crs(gmii_crs),
        .gmii_col(gmii_col)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_gem_ethernet.vcd");
        $dumpvars(0, tb_gem_ethernet);

        // Initialize inputs
        rst_n = 0;
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
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        tx_clk = 0;
        rx_clk = 0;
        gmii_rxd = 0;
        gmii_rx_dv = 0;
        gmii_rx_er = 0;
        gmii_crs = 0;
        gmii_col = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
