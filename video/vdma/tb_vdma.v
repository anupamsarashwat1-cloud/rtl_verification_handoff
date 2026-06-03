`timescale 1ns / 1ps

module tb_vdma();

    reg  clk;
    reg  rst_n;
    reg  s_axis_s2mm_tdata;
    reg  s_axis_s2mm_tvalid;
    wire s_axis_s2mm_tready;
    reg  s_axis_s2mm_tuser;
    reg  s_axis_s2mm_tlast;
    wire m_axis_mm2s_tdata;
    wire m_axis_mm2s_tvalid;
    reg  m_axis_mm2s_tready;
    wire m_axis_mm2s_tuser;
    wire m_axis_mm2s_tlast;
    wire m_axi_awvalid;
    reg  m_axi_awready;
    wire m_axi_awaddr;
    wire m_axi_awlen;
    wire m_axi_awsize;
    wire m_axi_wvalid;
    reg  m_axi_wready;
    wire m_axi_wdata;
    wire m_axi_wstrb;
    wire m_axi_wlast;
    reg  m_axi_bvalid;
    wire m_axi_bready;
    reg  m_axi_bresp;
    wire m_axi_arvalid;
    reg  m_axi_arready;
    wire m_axi_araddr;
    wire m_axi_arlen;
    wire m_axi_arsize;
    reg  m_axi_rvalid;
    wire m_axi_rready;
    reg  m_axi_rdata;
    reg  m_axi_rresp;
    reg  m_axi_rlast;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    wire vdma_irq;

    // DUT Instantiation
    vdma uut (
        .clk(clk),
        .rst_n(rst_n),
        .s_axis_s2mm_tdata(s_axis_s2mm_tdata),
        .s_axis_s2mm_tvalid(s_axis_s2mm_tvalid),
        .s_axis_s2mm_tready(s_axis_s2mm_tready),
        .s_axis_s2mm_tuser(s_axis_s2mm_tuser),
        .s_axis_s2mm_tlast(s_axis_s2mm_tlast),
        .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
        .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
        .m_axis_mm2s_tready(m_axis_mm2s_tready),
        .m_axis_mm2s_tuser(m_axis_mm2s_tuser),
        .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arready(m_axi_arready),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rlast(m_axi_rlast),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .vdma_irq(vdma_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_vdma.vcd");
        $dumpvars(0, tb_vdma);

        // Initialize inputs
        rst_n = 0;
        s_axis_s2mm_tdata = 0;
        s_axis_s2mm_tvalid = 0;
        s_axis_s2mm_tuser = 0;
        s_axis_s2mm_tlast = 0;
        m_axis_mm2s_tready = 0;
        m_axi_awready = 0;
        m_axi_wready = 0;
        m_axi_bvalid = 0;
        m_axi_bresp = 0;
        m_axi_arready = 0;
        m_axi_rvalid = 0;
        m_axi_rdata = 0;
        m_axi_rresp = 0;
        m_axi_rlast = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
