`timescale 1ns / 1ps

module tb_rv_ptw();

    reg  clk;
    reg  rst_n;
    reg  va_req;
    reg  asid_req;
    reg  satp_ppn;
    reg  ptw_req;
    reg  access_r;
    reg  access_w;
    reg  access_x;
    reg  priv_s;
    wire ptw_busy;
    wire fill_valid;
    wire fill_va;
    wire fill_pa;
    wire fill_asid;
    wire fill_perm;
    wire fill_level;
    wire page_fault;
    wire fault_addr;
    wire fault_type;
    wire ptw_arvalid;
    reg  ptw_arready;
    wire ptw_araddr;
    reg  ptw_rvalid;
    wire ptw_rready;
    reg  ptw_rdata;
    reg  ptw_rresp;

    // DUT Instantiation
    rv_ptw uut (
        .clk(clk),
        .rst_n(rst_n),
        .va_req(va_req),
        .asid_req(asid_req),
        .satp_ppn(satp_ppn),
        .ptw_req(ptw_req),
        .access_r(access_r),
        .access_w(access_w),
        .access_x(access_x),
        .priv_s(priv_s),
        .ptw_busy(ptw_busy),
        .fill_valid(fill_valid),
        .fill_va(fill_va),
        .fill_pa(fill_pa),
        .fill_asid(fill_asid),
        .fill_perm(fill_perm),
        .fill_level(fill_level),
        .page_fault(page_fault),
        .fault_addr(fault_addr),
        .fault_type(fault_type),
        .ptw_arvalid(ptw_arvalid),
        .ptw_arready(ptw_arready),
        .ptw_araddr(ptw_araddr),
        .ptw_rvalid(ptw_rvalid),
        .ptw_rready(ptw_rready),
        .ptw_rdata(ptw_rdata),
        .ptw_rresp(ptw_rresp)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_ptw.vcd");
        $dumpvars(0, tb_rv_ptw);

        // Initialize inputs
        rst_n = 0;
        va_req = 0;
        asid_req = 0;
        satp_ppn = 0;
        ptw_req = 0;
        access_r = 0;
        access_w = 0;
        access_x = 0;
        priv_s = 0;
        ptw_arready = 0;
        ptw_rvalid = 0;
        ptw_rdata = 0;
        ptw_rresp = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
