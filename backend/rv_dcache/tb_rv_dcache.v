`timescale 1ns / 1ps

module tb_rv_dcache();

    reg  clk;
    reg  rst_n;
    reg  cpu_addr;
    reg  cpu_wdata;
    reg  cpu_wstrb;
    reg  cpu_req;
    reg  cpu_wr;
    reg  cpu_size;
    wire cpu_rdata;
    wire cpu_valid;
    wire cpu_stall;
    reg  is_lr;
    reg  is_sc;
    reg  lr_addr_in;
    reg  lr_valid_in;
    wire sc_success;
    reg  flush_all;
    reg  flush_addr_en;
    reg  flush_addr;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    wire m_arlen;
    wire m_arsize;
    wire m_arburst;
    wire m_arlock;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rlast;
    reg  m_rresp;
    wire m_awvalid;
    reg  m_awready;
    wire m_awaddr;
    wire m_awlen;
    wire m_awsize;
    wire m_awburst;
    wire m_wvalid;
    reg  m_wready;
    wire m_wdata;
    wire m_wstrb;
    wire m_wlast;
    reg  m_bvalid;
    wire m_bready;
    reg  m_bresp;
    reg  snoop_valid;
    reg  snoop_addr;
    reg  snoop_type;
    wire snoop_ack;
    wire snoop_data_valid;
    wire snoop_data;
    wire ecc_1bit;
    wire ecc_2bit;

    // DUT Instantiation
    rv_dcache uut (
        .clk(clk),
        .rst_n(rst_n),
        .cpu_addr(cpu_addr),
        .cpu_wdata(cpu_wdata),
        .cpu_wstrb(cpu_wstrb),
        .cpu_req(cpu_req),
        .cpu_wr(cpu_wr),
        .cpu_size(cpu_size),
        .cpu_rdata(cpu_rdata),
        .cpu_valid(cpu_valid),
        .cpu_stall(cpu_stall),
        .is_lr(is_lr),
        .is_sc(is_sc),
        .lr_addr_in(lr_addr_in),
        .lr_valid_in(lr_valid_in),
        .sc_success(sc_success),
        .flush_all(flush_all),
        .flush_addr_en(flush_addr_en),
        .flush_addr(flush_addr),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_arlen(m_arlen),
        .m_arsize(m_arsize),
        .m_arburst(m_arburst),
        .m_arlock(m_arlock),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rlast(m_rlast),
        .m_rresp(m_rresp),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_awlen(m_awlen),
        .m_awsize(m_awsize),
        .m_awburst(m_awburst),
        .m_wvalid(m_wvalid),
        .m_wready(m_wready),
        .m_wdata(m_wdata),
        .m_wstrb(m_wstrb),
        .m_wlast(m_wlast),
        .m_bvalid(m_bvalid),
        .m_bready(m_bready),
        .m_bresp(m_bresp),
        .snoop_valid(snoop_valid),
        .snoop_addr(snoop_addr),
        .snoop_type(snoop_type),
        .snoop_ack(snoop_ack),
        .snoop_data_valid(snoop_data_valid),
        .snoop_data(snoop_data),
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
        $dumpfile("tb_rv_dcache.vcd");
        $dumpvars(0, tb_rv_dcache);

        // Initialize inputs
        rst_n = 0;
        cpu_addr = 0;
        cpu_wdata = 0;
        cpu_wstrb = 0;
        cpu_req = 0;
        cpu_wr = 0;
        cpu_size = 0;
        is_lr = 0;
        is_sc = 0;
        lr_addr_in = 0;
        lr_valid_in = 0;
        flush_all = 0;
        flush_addr_en = 0;
        flush_addr = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rlast = 0;
        m_rresp = 0;
        m_awready = 0;
        m_wready = 0;
        m_bvalid = 0;
        m_bresp = 0;
        snoop_valid = 0;
        snoop_addr = 0;
        snoop_type = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
