`timescale 1ns / 1ps

module tb_ahb_to_apb();

    reg  clk;
    reg  rst_n;
    reg  haddr;
    reg  hwrite;
    reg  htrans;
    reg  hwdata;
    wire hrdata;
    wire hready_out;
    wire hresp;
    wire paddr;
    wire psel;
    wire penable;
    wire pwrite;
    wire pwdata;
    reg  prdata;
    reg  pready;
    reg  pslverr;

    // DUT Instantiation
    ahb_to_apb uut (
        .clk(clk),
        .rst_n(rst_n),
        .haddr(haddr),
        .hwrite(hwrite),
        .htrans(htrans),
        .hwdata(hwdata),
        .hrdata(hrdata),
        .hready_out(hready_out),
        .hresp(hresp),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
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
        $dumpfile("tb_ahb_to_apb.vcd");
        $dumpvars(0, tb_ahb_to_apb);

        // Initialize inputs
        rst_n = 0;
        haddr = 0;
        hwrite = 0;
        htrans = 0;
        hwdata = 0;
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
