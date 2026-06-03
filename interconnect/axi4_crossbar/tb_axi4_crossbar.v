`timescale 1ns / 1ps

module tb_axi4_crossbar();

    reg  clk;
    reg  rst_n;
    reg  m_awvalid;
    wire m_awready;
    reg  m_awaddr;
    reg  m_awid;
    reg  m_wvalid;
    wire m_wready;
    reg  m_wdata;
    reg  m_wstrb;
    reg  m_wlast;
    wire m_bvalid;
    reg  m_bready;
    wire m_bresp;
    wire m_bid;
    reg  m_arvalid;
    wire m_arready;
    reg  m_araddr;
    reg  m_arid;
    wire m_rvalid;
    reg  m_rready;
    wire m_rdata;
    wire m_rresp;
    wire m_rlast;
    wire m_rid;
    wire s_awvalid;
    reg  s_awready;
    wire s_awaddr;
    wire s_awid;
    wire s_wvalid;
    reg  s_wready;
    wire s_wdata;
    wire s_wstrb;
    wire s_wlast;
    reg  s_bvalid;
    wire s_bready;
    reg  s_bresp;
    reg  s_bid;
    wire s_arvalid;
    reg  s_arready;
    wire s_araddr;
    wire s_arid;
    reg  s_rvalid;
    wire s_rready;
    reg  s_rdata;
    reg  s_rresp;
    reg  s_rlast;
    reg  s_rid;

    // DUT Instantiation
    axi4_crossbar uut (
        .clk(clk),
        .rst_n(rst_n),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_awid(m_awid),
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
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .s_rlast(s_rlast),
        .s_rid(s_rid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_axi4_crossbar.vcd");
        $dumpvars(0, tb_axi4_crossbar);

        // Initialize inputs
        rst_n = 0;
        m_awvalid = 0;
        m_awaddr = 0;
        m_awid = 0;
        m_wvalid = 0;
        m_wdata = 0;
        m_wstrb = 0;
        m_wlast = 0;
        m_bready = 0;
        m_arvalid = 0;
        m_araddr = 0;
        m_arid = 0;
        m_rready = 0;
        s_awready = 0;
        s_wready = 0;
        s_bvalid = 0;
        s_bresp = 0;
        s_bid = 0;
        s_arready = 0;
        s_rvalid = 0;
        s_rdata = 0;
        s_rresp = 0;
        s_rlast = 0;
        s_rid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
