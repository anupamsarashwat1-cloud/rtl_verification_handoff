`timescale 1ns / 1ps

module tb_qos_controller();

    reg  clk;
    reg  rst_n;
    reg  cfg_base_qos;
    reg  cfg_boost_qos;
    reg  cfg_bw_limit;
    reg  cfg_time_win;
    reg  m_arvalid;
    reg  m_arready;
    reg  m_awvalid;
    reg  m_awready;
    wire m_arqos;
    wire m_awqos;

    // DUT Instantiation
    qos_controller uut (
        .clk(clk),
        .rst_n(rst_n),
        .cfg_base_qos(cfg_base_qos),
        .cfg_boost_qos(cfg_boost_qos),
        .cfg_bw_limit(cfg_bw_limit),
        .cfg_time_win(cfg_time_win),
        .m_arvalid(m_arvalid),
        .m_arready(m_arready),
        .m_awvalid(m_awvalid),
        .m_awready(m_awready),
        .m_arqos(m_arqos),
        .m_awqos(m_awqos)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_qos_controller.vcd");
        $dumpvars(0, tb_qos_controller);

        // Initialize inputs
        rst_n = 0;
        cfg_base_qos = 0;
        cfg_boost_qos = 0;
        cfg_bw_limit = 0;
        cfg_time_win = 0;
        m_arvalid = 0;
        m_arready = 0;
        m_awvalid = 0;
        m_awready = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
