`timescale 1ns / 1ps

module tb_sram_32x64_180nm();

    reg  clk0;
    reg  csb0;
    reg  web0;
    reg  wmask0;
    reg  addr0;
    reg  din0;
    wire dout0;

    // DUT Instantiation
    sram_32x64_180nm uut (
        .clk0(clk0),
        .csb0(csb0),
        .web0(web0),
        .wmask0(wmask0),
        .addr0(addr0),
        .din0(din0),
        .dout0(dout0)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_sram_32x64_180nm.vcd");
        $dumpvars(0, tb_sram_32x64_180nm);

        // Initialize inputs
        clk0 = 0;
        csb0 = 0;
        web0 = 0;
        wmask0 = 0;
        addr0 = 0;
        din0 = 0;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
