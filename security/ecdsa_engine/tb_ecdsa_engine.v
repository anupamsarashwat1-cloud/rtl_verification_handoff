`timescale 1ns / 1ps

module tb_ecdsa_engine();

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
    wire ecdsa_irq;

    // DUT Instantiation
    ecdsa_engine uut (
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
        .ecdsa_irq(ecdsa_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_ecdsa_engine.vcd");
        $dumpvars(0, tb_ecdsa_engine);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
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
