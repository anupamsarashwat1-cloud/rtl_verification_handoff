`timescale 1ns / 1ps

module tb_fifo_sync();

    reg  clk;
    reg  rst_n;
    reg  wr_en;
    reg  rd_en;
    reg  wr_data;
    wire rd_data;
    wire full;
    wire empty;
    wire count;

    // DUT Instantiation
    fifo_sync uut (
        .clk(clk),
        .rst_n(rst_n),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .wr_data(wr_data),
        .rd_data(rd_data),
        .full(full),
        .empty(empty),
        .count(count)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_fifo_sync.vcd");
        $dumpvars(0, tb_fifo_sync);

        // Initialize inputs
        rst_n = 0;
        wr_en = 0;
        rd_en = 0;
        wr_data = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
