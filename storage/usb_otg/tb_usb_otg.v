`timescale 1ns / 1ps

module tb_usb_otg();

    reg  clk;
    reg  rst_n;
    reg  ulpi_clk;
    wire ulpi_data;
    reg  ulpi_dir;
    reg  ulpi_nxt;
    wire ulpi_stp;
    wire ulpi_reset;
    wire m_awvalid;
    reg  m_awready;
    wire m_awaddr;
    wire m_awid;
    wire m_awlen;
    wire m_awsize;
    wire m_wvalid;
    reg  m_wready;
    wire m_wdata;
    wire m_wstrb;
    wire m_wlast;
    reg  m_bvalid;
    wire m_bready;
    reg  m_bresp;
    reg  m_bid;
    wire m_arvalid;
    reg  m_arready;
    wire m_araddr;
    wire m_arid;
    wire m_arlen;
    wire m_arsize;
    reg  m_rvalid;
    wire m_rready;
    reg  m_rdata;
    reg  m_rresp;
    reg  m_rlast;
    reg  m_rid;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    wire usb_irq;

    // DUT Instantiation
    usb_otg uut (
        .clk(clk),
        .rst_n(rst_n),
        .ulpi_clk(ulpi_clk),
        .ulpi_data(ulpi_data),
        .ulpi_dir(ulpi_dir),
        .ulpi_nxt(ulpi_nxt),
        .ulpi_stp(ulpi_stp),
        .ulpi_reset(ulpi_reset),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_awaddr(m_awaddr),
        .m_awid(m_awid),
        .m_awlen(m_awlen),
        .m_awsize(m_awsize),
        .m_wvalid(m_wvalid),
        .m_wready(m_wready),
        .m_wdata(m_wdata),
        .m_wstrb(m_wstrb),
        .m_wlast(m_wlast),
        .m_bvalid(m_bvalid),
        .m_bready(m_bready),
        .m_bresp(m_bresp),
        .m_bid(m_bid),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_araddr(m_araddr),
        .m_arid(m_arid),
        .m_arlen(m_arlen),
        .m_arsize(m_arsize),
        .m_rvalid(m_rvalid),
        .m_rready(m_rready),
        .m_rdata(m_rdata),
        .m_rresp(m_rresp),
        .m_rlast(m_rlast),
        .m_rid(m_rid),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .usb_irq(usb_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_usb_otg.vcd");
        $dumpvars(0, tb_usb_otg);

        // Initialize inputs
        rst_n = 0;
        ulpi_clk = 0;
        ulpi_dir = 0;
        ulpi_nxt = 0;
        m_awready = 0;
        m_wready = 0;
        m_bvalid = 0;
        m_bresp = 0;
        m_bid = 0;
        m_arready = 0;
        m_rvalid = 0;
        m_rdata = 0;
        m_rresp = 0;
        m_rlast = 0;
        m_rid = 0;
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
