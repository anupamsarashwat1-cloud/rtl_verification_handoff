`timescale 1ns / 1ps

module tb_ddr_ctrl_top();

    reg  clk;
    reg  rst_n;
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
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    wire s_rlast;
    wire s_rid;
    wire ddr_ck_p;
    wire ddr_ck_n;
    wire ddr_cke;
    wire ddr_cs_n;
    wire ddr_ras_n;
    wire ddr_cas_n;
    wire ddr_we_n;
    wire ddr_ba;
    wire ddr_bg;
    wire ddr_addr;
    wire ddr_dm;
    wire ddr_dq;
    wire ddr_dqs_p;
    wire ddr_dqs_n;

    // DUT Instantiation
    ddr_ctrl_top uut (
        .clk(clk),
        .rst_n(rst_n),
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
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .s_rlast(s_rlast),
        .s_rid(s_rid),
        .ddr_ck_p(ddr_ck_p),
        .ddr_ck_n(ddr_ck_n),
        .ddr_cke(ddr_cke),
        .ddr_cs_n(ddr_cs_n),
        .ddr_ras_n(ddr_ras_n),
        .ddr_cas_n(ddr_cas_n),
        .ddr_we_n(ddr_we_n),
        .ddr_ba(ddr_ba),
        .ddr_bg(ddr_bg),
        .ddr_addr(ddr_addr),
        .ddr_dm(ddr_dm),
        .ddr_dq(ddr_dq),
        .ddr_dqs_p(ddr_dqs_p),
        .ddr_dqs_n(ddr_dqs_n)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_ddr_ctrl_top.vcd");
        $dumpvars(0, tb_ddr_ctrl_top);

        // Initialize inputs
        rst_n = 0;
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
        s_rready = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
