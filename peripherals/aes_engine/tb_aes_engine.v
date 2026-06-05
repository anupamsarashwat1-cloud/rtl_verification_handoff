`timescale 1ns / 1ps

module tb_aes_engine();

    logic clk;
    logic rst_n;
    logic [31:0] paddr;
    logic psel;
    logic penable;
    logic pwrite;
    logic [31:0] pwdata;
    wire [31:0] prdata;
    wire pready;
    wire pslverr;
    logic [31:0] s_axis_tdata;
    logic s_axis_tvalid;
    wire s_axis_tready;
    logic s_axis_tlast;
    wire [31:0] m_axis_tdata;
    wire m_axis_tvalid;
    logic m_axis_tready;
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

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
    end

    always #3.6 clk = ~clk;

    // Main Functional Stimulus Block
    initial begin
        $dumpfile("tb_aes_engine.vcd");
        $dumpvars(0, tb_aes_engine);

        // 1. Initialize all data inputs
        paddr = 0;
        psel = 0;
        penable = 0;
        pwrite = 0;
        pwdata = 0;
        s_axis_tdata = 0;
        s_axis_tvalid = 0;
        s_axis_tlast = 0;
        m_axis_tready = 0;

        // 2. Assert Resets
        #10;
        rst_n = 0; // Active low
        #100;
        // 3. De-assert Resets
        rst_n = 1;
        #20;

        // 4. Constrained Random Stimulus Injection
        // Generating aggressive random toggling to exercise internal logic
        repeat(500) begin
            #10;
            paddr = $random;
            psel = $random;
            penable = $random;
            pwrite = $random;
            pwdata = $random;
            s_axis_tdata = $random;
            s_axis_tvalid = $random;
            s_axis_tlast = $random;
            m_axis_tready = $random;
        end

        #1000;
        $finish;
    end

endmodule
