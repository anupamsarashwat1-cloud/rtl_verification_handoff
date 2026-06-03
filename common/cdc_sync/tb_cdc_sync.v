`timescale 1ns / 1ps

module tb_cdc_sync();

    reg  dst_clk;
    reg  rst_n;
    reg  data_in;
    wire data_out;

    // DUT Instantiation
    cdc_sync uut (
        .dst_clk(dst_clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_cdc_sync.vcd");
        $dumpvars(0, tb_cdc_sync);

        // Initialize inputs
        dst_clk = 0;
        rst_n = 0;
        data_in = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
