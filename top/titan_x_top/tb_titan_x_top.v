`timescale 1ns / 1ps

module tb_titan_x_top();

    logic clk;
    logic rst_n;
    wire [15:0] ddr_addr;
    wire [2:0] ddr_ba;
    wire [1:0] ddr_bg;
    wire ddr_ck_p;
    wire ddr_ck_n;
    wire ddr_cke;
    wire ddr_cs_n;
    wire ddr_ras_n;
    wire ddr_cas_n;
    wire ddr_we_n;
    wire ddr_reset_n;
    wire ddr_odt;
    wire ddr_act_n;
    wire [63:0] ddr_dq;
    wire [7:0] ddr_dqs_p;
    wire [7:0] ddr_dqs_n;
    logic pipe_clk;
    logic eth_tx_clk;
    logic eth_rx_clk;
    logic ulpi_clk;
    logic mipi_rxbyteclkhs;
    logic hdmi_clk_pixel;
    logic hdmi_clk_tmds;
    wire hdmi_tmds_clk_p;
    wire hdmi_tmds_clk_n;
    wire [2:0] hdmi_tmds_data_p;
    wire [2:0] hdmi_tmds_data_n;
    logic rtc_clk;
    wire [4:0] uart_tx;
    logic [4:0] uart_rx;
    wire [1:0] can_tx;
    logic [1:0] can_rx;

    // DUT Instantiation
    titan_x_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .ddr_addr(ddr_addr),
        .ddr_ba(ddr_ba),
        .ddr_bg(ddr_bg),
        .ddr_ck_p(ddr_ck_p),
        .ddr_ck_n(ddr_ck_n),
        .ddr_cke(ddr_cke),
        .ddr_cs_n(ddr_cs_n),
        .ddr_ras_n(ddr_ras_n),
        .ddr_cas_n(ddr_cas_n),
        .ddr_we_n(ddr_we_n),
        .ddr_reset_n(ddr_reset_n),
        .ddr_odt(ddr_odt),
        .ddr_act_n(ddr_act_n),
        .ddr_dq(ddr_dq),
        .ddr_dqs_p(ddr_dqs_p),
        .ddr_dqs_n(ddr_dqs_n),
        .pipe_clk(pipe_clk),
        .eth_tx_clk(eth_tx_clk),
        .eth_rx_clk(eth_rx_clk),
        .ulpi_clk(ulpi_clk),
        .mipi_rxbyteclkhs(mipi_rxbyteclkhs),
        .hdmi_clk_pixel(hdmi_clk_pixel),
        .hdmi_clk_tmds(hdmi_clk_tmds),
        .hdmi_tmds_clk_p(hdmi_tmds_clk_p),
        .hdmi_tmds_clk_n(hdmi_tmds_clk_n),
        .hdmi_tmds_data_p(hdmi_tmds_data_p),
        .hdmi_tmds_data_n(hdmi_tmds_data_n),
        .rtc_clk(rtc_clk),
        .uart_tx(uart_tx),
        .uart_rx(uart_rx),
        .can_tx(can_tx),
        .can_rx(can_rx)
    );

    // Advanced Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        pipe_clk = 0;
        eth_tx_clk = 0;
        eth_rx_clk = 0;
        ulpi_clk = 0;
        mipi_rxbyteclkhs = 0;
        hdmi_clk_pixel = 0;
        hdmi_clk_tmds = 0;
        rtc_clk = 0;
    end

    always #3.6 clk = ~clk;
    always #3.6 pipe_clk = ~pipe_clk;
    always #3.6 eth_tx_clk = ~eth_tx_clk;
    always #3.6 eth_rx_clk = ~eth_rx_clk;
    always #3.6 ulpi_clk = ~ulpi_clk;
    always #3.6 mipi_rxbyteclkhs = ~mipi_rxbyteclkhs;
    always #3.6 hdmi_clk_pixel = ~hdmi_clk_pixel;
    always #3.6 hdmi_clk_tmds = ~hdmi_clk_tmds;
    always #3.6 rtc_clk = ~rtc_clk;

    // Main Functional Stimulus Block
    initial begin
        $dumpfile("tb_titan_x_top.vcd");
        $dumpvars(0, tb_titan_x_top);

        // 1. Initialize all data inputs
        uart_rx = 0;
        can_rx = 0;

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
            uart_rx = $random;
            can_rx = $random;
        end

        #1000;
        $finish;
    end

endmodule
