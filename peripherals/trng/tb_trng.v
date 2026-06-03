`timescale 1ns / 1ps

module tb_trng();

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
    wire trng_entropy;
    wire trng_valid;
    reg  trng_ready;
    wire trng_irq;

    // DUT Instantiation
    trng uut (
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
        .trng_irq(trng_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_trng.vcd");
        $dumpvars(0, tb_trng);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        trng_ready = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
