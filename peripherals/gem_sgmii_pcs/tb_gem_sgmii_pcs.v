`timescale 1ns / 1ps

module tb_gem_sgmii_pcs();

    reg  reset_n;
    reg  tx_clk;
    reg  rx_clk;
    reg  gmii_txd;
    reg  gmii_tx_en;
    reg  gmii_tx_er;
    wire gmii_rxd;
    wire gmii_rx_dv;
    wire gmii_rx_er;
    wire gmii_crs;
    wire gmii_col;
    wire tbi_tx_data;
    reg  tbi_rx_data;
    reg  signal_detect;
    wire link_up;
    wire speed;
    wire duplex;

    // DUT Instantiation
    gem_sgmii_pcs uut (
        .reset_n(reset_n),
        .tx_clk(tx_clk),
        .rx_clk(rx_clk),
        .gmii_txd(gmii_txd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_crs(gmii_crs),
        .gmii_col(gmii_col),
        .tbi_tx_data(tbi_tx_data),
        .tbi_rx_data(tbi_rx_data),
        .signal_detect(signal_detect),
        .link_up(link_up),
        .speed(speed),
        .duplex(duplex)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_gem_sgmii_pcs.vcd");
        $dumpvars(0, tb_gem_sgmii_pcs);

        // Initialize inputs
        reset_n = 0;
        tx_clk = 0;
        rx_clk = 0;
        gmii_txd = 0;
        gmii_tx_en = 0;
        gmii_tx_er = 0;
        tbi_rx_data = 0;
        signal_detect = 0;

        // Reset sequence
        #10;
        reset_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
