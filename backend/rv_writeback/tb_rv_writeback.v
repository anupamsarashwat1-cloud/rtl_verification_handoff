`timescale 1ns / 1ps

module tb_rv_writeback();

    reg  clk;
    reg  rst_n;
    reg  result;
    reg  rd_in;
    reg  reg_write;
    reg  valid_in;
    wire wb_data;
    wire wb_rd;
    wire wb_we;
    wire fwd_wb_data;
    wire fwd_wb_rd;
    wire fwd_wb_valid;

    // DUT Instantiation
    rv_writeback uut (
        .clk(clk),
        .rst_n(rst_n),
        .result(result),
        .rd_in(rd_in),
        .reg_write(reg_write),
        .valid_in(valid_in),
        .wb_data(wb_data),
        .wb_rd(wb_rd),
        .wb_we(wb_we),
        .fwd_wb_data(fwd_wb_data),
        .fwd_wb_rd(fwd_wb_rd),
        .fwd_wb_valid(fwd_wb_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_writeback.vcd");
        $dumpvars(0, tb_rv_writeback);

        // Initialize inputs
        rst_n = 0;
        result = 0;
        rd_in = 0;
        reg_write = 0;
        valid_in = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
