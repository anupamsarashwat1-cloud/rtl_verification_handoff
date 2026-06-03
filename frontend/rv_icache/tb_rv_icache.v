`timescale 1ns / 1ps

module tb_rv_icache();

    reg  clk;
    reg  rst_n;
    reg  cpu_addr;
    reg  cpu_req;
    wire cpu_rdata;
    wire cpu_valid;
    wire cpu_stall;
    reg  invalidate;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    wire m_arlen;
    wire m_arsize;
    wire m_arburst;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rlast;
    reg  m_rresp;
    wire ecc_1bit;
    wire ecc_2bit;

    // DUT Instantiation
    rv_icache uut (
        .clk(clk),
        .rst_n(rst_n),
        .cpu_addr(cpu_addr),
        .cpu_req(cpu_req),
        .cpu_rdata(cpu_rdata),
        .cpu_valid(cpu_valid),
        .cpu_stall(cpu_stall),
        .invalidate(invalidate),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_arlen(m_arlen),
        .m_arsize(m_arsize),
        .m_arburst(m_arburst),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rlast(m_rlast),
        .m_rresp(m_rresp),
        .ecc_1bit(ecc_1bit),
        .ecc_2bit(ecc_2bit)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_icache.vcd");
        $dumpvars(0, tb_rv_icache);

        // Initialize inputs
        rst_n = 0;
        cpu_addr = 0;
        cpu_req = 0;
        invalidate = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rlast = 0;
        m_rresp = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
