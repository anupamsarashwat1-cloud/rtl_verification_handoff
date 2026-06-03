`timescale 1ns / 1ps

module tb_clint();

    reg  clk;
    reg  rst_n;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  paddr;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire msip;
    wire mtip;

    // DUT Instantiation
    clint uut (
        .clk(clk),
        .rst_n(rst_n),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .paddr(paddr),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .msip(msip),
        .mtip(mtip)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_clint.vcd");
        $dumpvars(0, tb_clint);

        // Initialize inputs
        rst_n = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        paddr = 0;
        pwdata = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
