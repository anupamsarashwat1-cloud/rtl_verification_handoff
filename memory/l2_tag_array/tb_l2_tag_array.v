`timescale 1ns / 1ps

module tb_l2_tag_array();

    reg  clk;
    reg  rst_n;
    reg  cs;
    reg  we;
    reg  index;
    reg  tag_in;
    wire tag_out;
    wire valid_out;

    // DUT Instantiation
    l2_tag_array uut (
        .clk(clk),
        .rst_n(rst_n),
        .cs(cs),
        .we(we),
        .index(index),
        .tag_in(tag_in),
        .tag_out(tag_out),
        .valid_out(valid_out)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_l2_tag_array.vcd");
        $dumpvars(0, tb_l2_tag_array);

        // Initialize inputs
        rst_n = 0;
        cs = 0;
        we = 0;
        index = 0;
        tag_in = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
