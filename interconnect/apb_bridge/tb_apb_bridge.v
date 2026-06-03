`timescale 1ns / 1ps

module tb_apb_bridge();

    reg  clk;
    reg  rst_n;
    reg  s_awvalid;
    wire s_awready;
    reg  s_awaddr;
    reg  s_wvalid;
    wire s_wready;
    reg  s_wdata;
    reg  s_wstrb;
    wire s_bvalid;
    reg  s_bready;
    wire s_bresp;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    wire paddr;
    wire psel;
    wire penable;
    wire pwrite;
    wire pwdata;
    wire pstrb;
    reg  prdata;
    reg  pready;
    reg  pslverr;

    // DUT Instantiation
    apb_bridge uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_awvalid(s_awvalid),
        .s_awready(s_awready),
        .s_awaddr(s_awaddr),
        .s_wvalid(s_wvalid),
        .s_wready(s_wready),
        .s_wdata(s_wdata),
        .s_wstrb(s_wstrb),
        .s_bvalid(s_bvalid),
        .s_bready(s_bready),
        .s_bresp(s_bresp),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .pstrb(pstrb),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_apb_bridge.vcd");
        $dumpvars(0, tb_apb_bridge);

        // Initialize inputs
        rst_n = 0;
        s_awvalid = 0;
        s_awaddr = 0;
        s_wvalid = 0;
        s_wdata = 0;
        s_wstrb = 0;
        s_bready = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_rready = 0;
        prdata = 0;
        pready = 0;
        pslverr = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
