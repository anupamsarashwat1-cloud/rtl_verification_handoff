`timescale 1ns / 1ps

module tb_rv_mmu();

    reg  clk;
    reg  rst_n;
    reg  satp;
    reg  priv_mode;
    reg  va_req;
    reg  req_valid;
    reg  req_r;
    reg  req_w;
    reg  req_x;
    wire pa_out;
    wire trans_valid;
    wire trans_busy;
    wire page_fault;
    wire fault_va;
    wire ptw_arvalid;
    reg  ptw_arready;
    wire ptw_araddr;
    reg  ptw_rvalid;
    wire ptw_rready;
    reg  ptw_rdata;
    reg  ptw_rresp;
    reg  sfence_vma;
    reg  sfence_asid_en;
    reg  sfence_va_en;
    reg  sfence_va_val;
    reg  sfence_asid_val;

    // DUT Instantiation
    rv_mmu uut (
        .clk(clk),
        .rst_n(rst_n),
        .satp(satp),
        .priv_mode(priv_mode),
        .va_req(va_req),
        .req_valid(req_valid),
        .req_r(req_r),
        .req_w(req_w),
        .req_x(req_x),
        .pa_out(pa_out),
        .trans_valid(trans_valid),
        .trans_busy(trans_busy),
        .page_fault(page_fault),
        .fault_va(fault_va),
        .ptw_arvalid(ptw_arvalid),
        .ptw_arready(ptw_arready),
        .ptw_araddr(ptw_araddr),
        .ptw_rvalid(ptw_rvalid),
        .ptw_rready(ptw_rready),
        .ptw_rdata(ptw_rdata),
        .ptw_rresp(ptw_rresp),
        .sfence_vma(sfence_vma),
        .sfence_asid_en(sfence_asid_en),
        .sfence_va_en(sfence_va_en),
        .sfence_va_val(sfence_va_val),
        .sfence_asid_val(sfence_asid_val)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_mmu.vcd");
        $dumpvars(0, tb_rv_mmu);

        // Initialize inputs
        rst_n = 0;
        satp = 0;
        priv_mode = 0;
        va_req = 0;
        req_valid = 0;
        req_r = 0;
        req_w = 0;
        req_x = 0;
        ptw_arready = 0;
        ptw_rvalid = 0;
        ptw_rdata = 0;
        ptw_rresp = 0;
        sfence_vma = 0;
        sfence_asid_en = 0;
        sfence_va_en = 0;
        sfence_va_val = 0;
        sfence_asid_val = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
