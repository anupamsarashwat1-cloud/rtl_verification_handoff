`timescale 1ns / 1ps

module tb_axi4_crossbar();

    logic clk;
    logic rst_n;
    logic [14:0] m_awvalid;
    wire [14:0] m_awready;
    logic [599:0] m_awaddr;
    logic [59:0] m_awid;
    logic [14:0] m_wvalid;
    wire [14:0] m_wready;
    logic [959:0] m_wdata;
    logic [119.0:0] m_wstrb;
    logic [14:0] m_wlast;
    wire [14:0] m_bvalid;
    logic [14:0] m_bready;
    wire [29:0] m_bresp;
    wire [59:0] m_bid;
    logic [14:0] m_arvalid;
    wire [14:0] m_arready;
    logic [599:0] m_araddr;
    logic [59:0] m_arid;
    wire [14:0] m_rvalid;
    logic [14:0] m_rready;
    wire [959:0] m_rdata;
    wire [29:0] m_rresp;
    wire [14:0] m_rlast;
    wire [59:0] m_rid;
    wire [8:0] s_awvalid;
    logic [8:0] s_awready;
    wire [359:0] s_awaddr;
    wire [35:0] s_awid;
    wire [8:0] s_wvalid;
    logic [8:0] s_wready;
    wire [575:0] s_wdata;
    wire [71.0:0] s_wstrb;
    wire [8:0] s_wlast;
    logic [8:0] s_bvalid;
    wire [8:0] s_bready;
    logic [17:0] s_bresp;
    logic [35:0] s_bid;
    wire [8:0] s_arvalid;
    logic [8:0] s_arready;
    wire [359:0] s_araddr;
    wire [35:0] s_arid;
    logic [8:0] s_rvalid;
    wire [8:0] s_rready;
    logic [575:0] s_rdata;
    logic [17:0] s_rresp;
    logic [8:0] s_rlast;
    logic [35:0] s_rid;

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

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
    end

    always #3.6 clk = ~clk;

    // Main Functional Stimulus Block
    initial begin
        $dumpfile("tb_axi4_crossbar.vcd");
        $dumpvars(0, tb_axi4_crossbar);

        // 1. Initialize all data inputs
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

        // 2. Assert Resets
        #10;
        rst_n = 0; // Active low
        #100;
        // 3. De-assert Resets
        rst_n = 1;
        #20;

        // 4. Constrained Random Stimulus Injection
        // Generating aggressive random toggling to exercise internal logic
        repeat(500) begin
            #10;
            m_awvalid = $random;
            m_awaddr = $random;
            m_awid = $random;
            m_wvalid = $random;
            m_wdata = $random;
            m_wstrb = $random;
            m_wlast = $random;
            m_bready = $random;
            m_arvalid = $random;
            m_araddr = $random;
            m_arid = $random;
            m_rready = $random;
            s_awready = $random;
            s_wready = $random;
            s_bvalid = $random;
            s_bresp = $random;
            s_bid = $random;
            s_arready = $random;
            s_rvalid = $random;
            s_rdata = $random;
            s_rresp = $random;
            s_rlast = $random;
            s_rid = $random;
        end

        #1000;
        $finish;
    end

endmodule
