`timescale 1ns / 1ps

module tb_drbg();

    reg  clk;
    reg  rst_n;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    reg  trng_entropy;
    reg  trng_valid;
    wire trng_ready;
    wire drbg_irq;

    // DUT Instantiation
    drbg uut (
        .clk(clk),
        .rst_n(rst_n),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .trng_entropy(trng_entropy),
        .trng_valid(trng_valid),
        .trng_ready(trng_ready),
        .drbg_irq(drbg_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_drbg.vcd");
        $dumpvars(0, tb_drbg);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        trng_entropy = 0;
        trng_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
