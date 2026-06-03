`timescale 1ns / 1ps

module tb_plic();

    reg  clk;
    reg  rst_n;
    reg  interrupt_sources;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  paddr;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire irq_targets;

    // DUT Instantiation
    plic uut (
        .clk(clk),
        .rst_n(rst_n),
        .interrupt_sources(interrupt_sources),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .paddr(paddr),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .irq_targets(irq_targets)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_plic.vcd");
        $dumpvars(0, tb_plic);

        // Initialize inputs
        rst_n = 0;
        interrupt_sources = 0;
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
