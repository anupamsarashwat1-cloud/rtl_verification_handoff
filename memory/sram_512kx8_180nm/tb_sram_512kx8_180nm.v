`timescale 1ns / 1ps

module tb_sram_512kx8_180nm();

    reg  CLK;
    reg  CEN;
    reg  WEN;
    reg  A;
    reg  D;
    wire Q;

    // DUT Instantiation
    sram_512kx8_180nm uut (
        .CLK(CLK),
        .CEN(CEN),
        .WEN(WEN),
        .A(A),
        .D(D),
        .Q(Q)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_sram_512kx8_180nm.vcd");
        $dumpvars(0, tb_sram_512kx8_180nm);

        // Initialize inputs
        CLK = 0;
        CEN = 0;
        WEN = 0;
        A = 0;
        D = 0;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
