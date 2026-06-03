`timescale 1ns / 1ps

module tb_mmu_arbiter();

    reg  clk;
    reg  rst_n;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rresp;

    // DUT Instantiation
    mmu_arbiter uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rresp(m_rresp)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_mmu_arbiter.vcd");
        $dumpvars(0, tb_mmu_arbiter);

        // Initialize inputs
        rst_n = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_rready = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
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
