`timescale 1ns / 1ps

module tb_aes_engine();

    reg  clk;
    reg  rst_n;
    reg  paddr;
    reg  psel;
    reg  penable;
    reg  pwrite;
    reg  pwdata;
    wire prdata;
    wire pready;
    wire pslverr;
    reg  s_axis_tdata;
    reg  s_axis_tvalid;
    wire s_axis_tready;
    reg  s_axis_tlast;
    wire m_axis_tdata;
    wire m_axis_tvalid;
    reg  m_axis_tready;
    wire m_axis_tlast;
    wire aes_irq;

    // DUT Instantiation
    aes_engine uut (
        .clk(clk),
        .rst_n(rst_n),
        .paddr(paddr),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .pwdata(pwdata),
        .prdata(prdata),
        .pready(pready),
        .pslverr(pslverr),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast),
        .aes_irq(aes_irq)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_aes_engine.vcd");
        $dumpvars(0, tb_aes_engine);

        // Initialize inputs
        rst_n = 0;
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        s_axis_tdata = 0;
        s_axis_tvalid = 0;
        s_axis_tlast = 0;
        m_axis_tready = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
