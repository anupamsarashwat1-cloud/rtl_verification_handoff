`timescale 1ns / 1ps

module tb_qos_controller();

    logic clk;
    logic rst_n;
    logic [3:0] cfg_base_qos [0:14];
    logic [3:0] cfg_boost_qos [0:14];
    logic [15:0] cfg_bw_limit [0:14];
    logic [15:0] cfg_time_win;
    logic [14:0] m_arvalid;
    logic [14:0] m_arready;
    logic [14:0] m_awvalid;
    logic [14:0] m_awready;
    logic [3:0] m_arqos [0:14];
    logic [3:0] m_awqos [0:14];

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

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
    end

    always #3.6 clk = ~clk;

    // Main Functional Stimulus Block
    initial begin
        $dumpfile("tb_qos_controller.vcd");
        $dumpvars(0, tb_qos_controller);

        // 1. Initialize all data inputs
        for(int i=0; i<15; i++) cfg_base_qos[i] = 0;
        for(int i=0; i<15; i++) cfg_boost_qos[i] = 0;
        for(int i=0; i<15; i++) cfg_bw_limit[i] = 0;
        cfg_time_win = 0;
        m_arvalid = 0;
        m_arready = 0;
        m_awvalid = 0;
        m_awready = 0;

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
            for(int i=0; i<15; i++) cfg_base_qos[i] = $random;
            for(int i=0; i<15; i++) cfg_boost_qos[i] = $random;
            for(int i=0; i<15; i++) cfg_bw_limit[i] = $random;
            cfg_time_win = $random;
            m_arvalid = $random;
            m_arready = $random;
            m_awvalid = $random;
            m_awready = $random;
        end

        #1000;
        $finish;
    end

endmodule
