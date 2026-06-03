`timescale 1ns / 1ps

module tb_rv_fpu();

    reg  clk;
    reg  rst_n;
    reg  fop;
    reg  fmt;
    reg  rm;
    reg  valid_in;
    reg  fp_src1;
    reg  fp_src2;
    reg  fp_src3;
    reg  int_src;
    reg  frm_csr;
    wire fp_result;
    wire result_valid;
    wire fflags;
    wire fpu_done;
    wire int_result;
    wire int_result_valid;

    // DUT Instantiation
    rv_fpu uut (
        .clk(clk),
        .rst_n(rst_n),
        .fop(fop),
        .fmt(fmt),
        .rm(rm),
        .valid_in(valid_in),
        .fp_src1(fp_src1),
        .fp_src2(fp_src2),
        .fp_src3(fp_src3),
        .int_src(int_src),
        .frm_csr(frm_csr),
        .fp_result(fp_result),
        .result_valid(result_valid),
        .fflags(fflags),
        .fpu_done(fpu_done),
        .int_result(int_result),
        .int_result_valid(int_result_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_fpu.vcd");
        $dumpvars(0, tb_rv_fpu);

        // Initialize inputs
        rst_n = 0;
        fop = 0;
        fmt = 0;
        rm = 0;
        valid_in = 0;
        fp_src1 = 0;
        fp_src2 = 0;
        fp_src3 = 0;
        int_src = 0;
        frm_csr = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
