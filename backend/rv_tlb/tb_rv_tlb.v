`timescale 1ns / 1ps

module tb_rv_tlb();

    reg  clk;
    reg  rst_n;
    reg  va_in;
    reg  asid_in;
    reg  req_valid;
    wire pa_out;
    wire hit;
    wire perm_r;
    wire perm_w;
    wire perm_x;
    wire perm_u;
    wire page_fault;
    reg  fill_valid;
    reg  fill_va;
    reg  fill_pa;
    reg  fill_asid;
    reg  fill_perm;
    reg  fill_level;
    reg  sfence_vma;
    reg  sfence_asid;
    reg  sfence_asid_val;
    reg  sfence_va;
    reg  sfence_va_val;
    reg  access_r;
    reg  access_w;
    reg  access_x;
    reg  priv_s;

    // DUT Instantiation
    rv_tlb uut (
        .clk(clk),
        .rst_n(rst_n),
        .va_in(va_in),
        .asid_in(asid_in),
        .req_valid(req_valid),
        .pa_out(pa_out),
        .hit(hit),
        .perm_r(perm_r),
        .perm_w(perm_w),
        .perm_x(perm_x),
        .perm_u(perm_u),
        .page_fault(page_fault),
        .fill_valid(fill_valid),
        .fill_va(fill_va),
        .fill_pa(fill_pa),
        .fill_asid(fill_asid),
        .fill_perm(fill_perm),
        .fill_level(fill_level),
        .sfence_vma(sfence_vma),
        .sfence_asid(sfence_asid),
        .sfence_asid_val(sfence_asid_val),
        .sfence_va(sfence_va),
        .sfence_va_val(sfence_va_val),
        .access_r(access_r),
        .access_w(access_w),
        .access_x(access_x),
        .priv_s(priv_s)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_tlb.vcd");
        $dumpvars(0, tb_rv_tlb);

        // Initialize inputs
        rst_n = 0;
        va_in = 0;
        asid_in = 0;
        req_valid = 0;
        fill_valid = 0;
        fill_va = 0;
        fill_pa = 0;
        fill_asid = 0;
        fill_perm = 0;
        fill_level = 0;
        sfence_vma = 0;
        sfence_asid = 0;
        sfence_asid_val = 0;
        sfence_va = 0;
        sfence_va_val = 0;
        access_r = 0;
        access_w = 0;
        access_x = 0;
        priv_s = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
