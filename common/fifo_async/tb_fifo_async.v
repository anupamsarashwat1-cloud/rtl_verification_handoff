`timescale 1ns / 1ps

module tb_fifo_async();

    reg  wr_clk;
    reg  wr_rst_n;
    reg  wr_en;
    reg  wr_data;
    wire full;
    reg  rd_clk;
    reg  rd_rst_n;
    reg  rd_en;
    wire rd_data;
    wire empty;

    // DUT Instantiation
    fifo_async uut (
        .wr_clk(wr_clk),
        .wr_rst_n(wr_rst_n),
        .wr_en(wr_en),
        .wr_data(wr_data),
        .full(full),
        .rd_clk(rd_clk),
        .rd_rst_n(rd_rst_n),
        .rd_en(rd_en),
        .rd_data(rd_data),
        .empty(empty)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_fifo_async.vcd");
        $dumpvars(0, tb_fifo_async);

        // Initialize inputs
        wr_clk = 0;
        wr_rst_n = 0;
        wr_en = 0;
        wr_data = 0;
        rd_clk = 0;
        rd_rst_n = 0;
        rd_en = 0;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
