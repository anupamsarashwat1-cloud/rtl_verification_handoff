`timescale 1ns / 1ps

module tb_l2_cache_ctrl();

    reg  clk;
    reg  rst_n;
    reg  s_arvalid;
    wire s_arready;
    reg  s_araddr;
    wire s_rvalid;
    reg  s_rready;
    wire s_rdata;
    wire s_rresp;
    reg  s_awvalid;
    wire s_awready;
    reg  s_awaddr;
    reg  s_wvalid;
    wire s_wready;
    reg  s_wdata;
    reg  s_wstrb;
    wire s_bvalid;
    reg  s_bready;
    wire s_bresp;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rresp;
    wire m_awvalid;
    reg  m_awready;
    wire m_awaddr;
    wire m_wvalid;
    reg  m_wready;
    wire m_wdata;
    wire m_wstrb;
    reg  m_bvalid;
    wire m_bready;
    wire tag_cs;
    wire tag_we;
    wire tag_index;
    wire tag_in;
    reg  tag_out;
    reg  tag_valid_out;
    wire dat_cs;
    wire dat_we;
    wire dat_bank;
    wire dat_wmask;
    wire dat_addr;
    wire dat_din;
    reg  dat_dout;
    reg  dat_dout_valid;

    // DUT Instantiation
    l2_cache_ctrl uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_arvalid(s_arvalid),
        .s_arready(s_arready),
        .s_araddr(s_araddr),
        .s_rvalid(s_rvalid),
        .s_rready(s_rready),
        .s_rdata(s_rdata),
        .s_rresp(s_rresp),
        .s_awvalid(s_awvalid),
        .s_awready(s_awready),
        .s_awaddr(s_awaddr),
        .s_wvalid(s_wvalid),
        .s_wready(s_wready),
        .s_wdata(s_wdata),
        .s_wstrb(s_wstrb),
        .s_bvalid(s_bvalid),
        .s_bready(s_bready),
        .s_bresp(s_bresp),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rresp(m_rresp),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_wvalid(m_wvalid),
        .m_wready(m_wready),
        .m_wdata(m_wdata),
        .m_wstrb(m_wstrb),
        .m_bvalid(m_bvalid),
        .m_bready(m_bready),
        .tag_cs(tag_cs),
        .tag_we(tag_we),
        .tag_index(tag_index),
        .tag_in(tag_in),
        .tag_out(tag_out),
        .tag_valid_out(tag_valid_out),
        .dat_cs(dat_cs),
        .dat_we(dat_we),
        .dat_bank(dat_bank),
        .dat_wmask(dat_wmask),
        .dat_addr(dat_addr),
        .dat_din(dat_din),
        .dat_dout(dat_dout),
        .dat_dout_valid(dat_dout_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_l2_cache_ctrl.vcd");
        $dumpvars(0, tb_l2_cache_ctrl);

        // Initialize inputs
        rst_n = 0;
        s_arvalid = 0;
        s_araddr = 0;
        s_rready = 0;
        s_awvalid = 0;
        s_awaddr = 0;
        s_wvalid = 0;
        s_wdata = 0;
        s_wstrb = 0;
        s_bready = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rresp = 0;
        m_awready = 0;
        m_wready = 0;
        m_bvalid = 0;
        tag_out = 0;
        tag_valid_out = 0;
        dat_dout = 0;
        dat_dout_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
