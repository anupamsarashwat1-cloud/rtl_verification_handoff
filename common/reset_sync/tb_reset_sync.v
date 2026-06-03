`timescale 1ns / 1ps

module tb_reset_sync();

    reg  clk;
    reg  async_rst_n;
    wire sync_rst_n;

    // DUT Instantiation
    reset_sync uut (
        .clk(clk),
        .async_rst_n(async_rst_n),
        .sync_rst_n(sync_rst_n)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_reset_sync.vcd");
        $dumpvars(0, tb_reset_sync);

        // Initialize inputs
        async_rst_n = 0;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
