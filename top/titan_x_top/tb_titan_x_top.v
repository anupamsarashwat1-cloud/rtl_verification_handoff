`timescale 1ns / 1ps

module tb_titan_x_top();

    reg  clk;
    reg  rst_n;
    wire ddr_addr;
    wire ddr_ba;
    wire ddr_bg;
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
    wire ddr_dq;
    wire ddr_dqs_p;
    wire ddr_dqs_n;
    reg  pipe_clk;
    reg  eth_tx_clk;
    reg  eth_rx_clk;
    reg  ulpi_clk;
    reg  mipi_rxbyteclkhs;
    reg  hdmi_clk_pixel;
    reg  hdmi_clk_tmds;
    wire hdmi_tmds_clk_p;
    wire hdmi_tmds_clk_n;
    wire hdmi_tmds_data_p;
    wire hdmi_tmds_data_n;
    reg  rtc_clk;
    wire uart_tx;
    reg  uart_rx;
    wire can_tx;
    reg  can_rx;

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

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_titan_x_top.vcd");
        $dumpvars(0, tb_titan_x_top);

        // Initialize inputs
        rst_n = 0;
        pipe_clk = 0;
        eth_tx_clk = 0;
        eth_rx_clk = 0;
        ulpi_clk = 0;
        mipi_rxbyteclkhs = 0;
        hdmi_clk_pixel = 0;
        hdmi_clk_tmds = 0;
        rtc_clk = 0;
        uart_rx = 0;
        can_rx = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
