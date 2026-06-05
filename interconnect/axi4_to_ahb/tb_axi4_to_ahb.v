`timescale 1ns / 1ps

module tb_axi4_to_ahb();

    logic clk;
    logic rst_n;
    logic s_awvalid;
    wire s_awready;
    logic [39:0] s_awaddr;
    logic [3:0] s_awid;
    logic s_wvalid;
    wire s_wready;
    logic [31:0] s_wdata;
    logic [3.0:0] s_wstrb;
    wire s_bvalid;
    logic s_bready;
    wire [1:0] s_bresp;
    wire [3:0] s_bid;
    logic s_arvalid;
    wire s_arready;
    logic [39:0] s_araddr;
    logic [3:0] s_arid;
    wire s_rvalid;
    logic s_rready;
    wire [31:0] s_rdata;
    wire [1:0] s_rresp;
    wire s_rlast;
    wire [31:0] haddr;
    wire hwrite;
    wire [1:0] htrans;
    wire [2:0] hsize;
    wire [2:0] hburst;
    wire [31:0] hwdata;
    logic [31:0] hrdata;
    logic hready;
    logic hresp;

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

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
    end

    always #3.6 clk = ~clk;

    // Main Functional Stimulus Block
    initial begin
        $dumpfile("tb_axi4_to_ahb.vcd");
        $dumpvars(0, tb_axi4_to_ahb);

        // 1. Initialize all data inputs
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
            s_awvalid = $random;
            s_awaddr = $random;
            s_awid = $random;
            s_wvalid = $random;
            s_wdata = $random;
            s_wstrb = $random;
            s_bready = $random;
            s_arvalid = $random;
            s_araddr = $random;
            s_arid = $random;
            s_rready = $random;
            hrdata = $random;
            hready = $random;
            hresp = $random;
        end

        #1000;
        $finish;
    end

endmodule
