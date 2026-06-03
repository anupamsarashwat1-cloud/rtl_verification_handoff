`timescale 1ns / 1ps

module tb_mipi_csi2_rx();

    reg  rst_n;
    reg  rxbyteclkhs;
    reg  rxdatahs;
    reg  rxvalidhs;
    reg  rxactivehs;
    reg  rxsyncbhs;
    reg  rxdata_lp;
    wire m_axis_tdata;
    wire m_axis_tvalid;
    reg  m_axis_tready;
    wire m_axis_tuser;
    wire m_axis_tlast;
    reg  pclk;
    reg  prst_n;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;

    // DUT Instantiation
    mipi_csi2_rx uut (
        .rst_n(rst_n),
        .rxbyteclkhs(rxbyteclkhs),
        .rxdatahs(rxdatahs),
        .rxvalidhs(rxvalidhs),
        .rxactivehs(rxactivehs),
        .rxsyncbhs(rxsyncbhs),
        .rxdata_lp(rxdata_lp),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tlast(m_axis_tlast),
        .pclk(pclk),
        .prst_n(prst_n),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_mipi_csi2_rx.vcd");
        $dumpvars(0, tb_mipi_csi2_rx);

        // Initialize inputs
        rst_n = 0;
        rxbyteclkhs = 0;
        rxdatahs = 0;
        rxvalidhs = 0;
        rxactivehs = 0;
        rxsyncbhs = 0;
        rxdata_lp = 0;
        m_axis_tready = 0;
        pclk = 0;
        prst_n = 0;
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
