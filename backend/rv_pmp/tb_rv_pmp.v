`timescale 1ns / 1ps

module tb_rv_pmp();

    reg  clk;
    reg  rst_n;
    reg  paddr;
    reg  check_r;
    reg  check_w;
    reg  check_x;
    reg  priv_mode;
    reg  check_en;
    reg  pmpcfg0;
    reg  pmpcfg2;
    reg  pmpaddr_packed;
    wire pmp_fault;

    // DUT Instantiation
    rv_pmp uut (
        .clk(clk),
        .rst_n(rst_n),
        .paddr(paddr),
        .check_r(check_r),
        .check_w(check_w),
        .check_x(check_x),
        .priv_mode(priv_mode),
        .check_en(check_en),
        .pmpcfg0(pmpcfg0),
        .pmpcfg2(pmpcfg2),
        .pmpaddr_packed(pmpaddr_packed),
        .pmp_fault(pmp_fault)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_pmp.vcd");
        $dumpvars(0, tb_rv_pmp);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        check_r = 0;
        check_w = 0;
        check_x = 0;
        priv_mode = 0;
        check_en = 0;
        pmpcfg0 = 0;
        pmpcfg2 = 0;
        pmpaddr_packed = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
