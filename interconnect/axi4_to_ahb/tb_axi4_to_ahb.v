`timescale 1ns / 1ps

module tb_axi4_to_ahb();

    reg  clk;
    reg  rst_n;
    reg  s_awvalid;
    wire s_awready;
    reg  s_awaddr;
    reg  s_awid;
    reg  s_wvalid;
    wire s_wready;
    reg  s_wdata;
    reg  s_wstrb;
    wire s_bvalid;
    reg  s_bready;
    wire s_bresp;
    wire s_bid;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    reg  s_arid;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    wire s_rlast;
    wire haddr;
    wire hwrite;
    wire htrans;
    wire hsize;
    wire hburst;
    wire hwdata;
    reg  hrdata;
    reg  hready;
    reg  hresp;

    // DUT Instantiation
    axi4_to_ahb uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_awvalid(s_awvalid),
        .s_awready(s_awready),
        .s_awaddr(s_awaddr),
        .s_awid(s_awid),
        .s_wvalid(s_wvalid),
        .s_wready(s_wready),
        .s_wdata(s_wdata),
        .s_wstrb(s_wstrb),
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
        .haddr(haddr),
        .hwrite(hwrite),
        .htrans(htrans),
        .hsize(hsize),
        .hburst(hburst),
        .hwdata(hwdata),
        .hrdata(hrdata),
        .hready(hready),
        .hresp(hresp)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_axi4_to_ahb.vcd");
        $dumpvars(0, tb_axi4_to_ahb);

        // Initialize inputs
        rst_n = 0;
        s_awvalid = 0;
        s_awaddr = 0;
        s_awid = 0;
        s_wvalid = 0;
        s_wdata = 0;
        s_wstrb = 0;
        s_bready = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_arid = 0;
        s_rready = 0;
        hrdata = 0;
        hready = 0;
        hresp = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
