`timescale 1ns / 1ps

module tb_rv_bpu();

    reg  clk;
    reg  rst_n;
    reg  fetch_pc;
    reg  fetch_valid;
    wire pred_taken;
    wire pred_target;
    wire pred_valid;
    reg  ex_pc;
    reg  ex_is_branch;
    reg  ex_is_jal;
    reg  ex_taken;
    reg  ex_target;
    reg  ex_valid;

    // DUT Instantiation
    rv_bpu uut (
        .clk(clk),
        .rst_n(rst_n),
        .fetch_pc(fetch_pc),
        .fetch_valid(fetch_valid),
        .pred_taken(pred_taken),
        .pred_target(pred_target),
        .pred_valid(pred_valid),
        .ex_pc(ex_pc),
        .ex_is_branch(ex_is_branch),
        .ex_is_jal(ex_is_jal),
        .ex_taken(ex_taken),
        .ex_target(ex_target),
        .ex_valid(ex_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_bpu.vcd");
        $dumpvars(0, tb_rv_bpu);

        // Initialize inputs
        rst_n = 0;
        fetch_pc = 0;
        fetch_valid = 0;
        ex_pc = 0;
        ex_is_branch = 0;
        ex_is_jal = 0;
        ex_taken = 0;
        ex_target = 0;
        ex_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
