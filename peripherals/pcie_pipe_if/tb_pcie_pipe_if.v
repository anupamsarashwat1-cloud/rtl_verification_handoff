`timescale 1ns / 1ps

module tb_pcie_pipe_if();

    reg  pclk;
    reg  reset_n;
    reg  tx_data;
    reg  tx_datak;
    wire rx_data;
    wire rx_datak;
    wire rx_valid;
    wire rx_elecidle;
    wire rx_status;
    reg  tx_rate;
    reg [1:0] power_down [0:3];
    reg  tx_elecidle;
    reg  tx_compliance;
    reg  rx_polarity;
    wire pipe_tx_data;
    wire pipe_tx_datak;
    reg  pipe_rx_data;
    reg  pipe_rx_datak;
    wire pipe_tx_rate;
    wire pipe_tx_elecidle;
    wire pipe_tx_compliance;
    wire pipe_rx_polarity;
    wire pipe_power_down;
    reg  pipe_rx_valid;
    reg  pipe_rx_elecidle;
    reg  pipe_rx_status;
    reg  pipe_phy_status;

    // DUT Instantiation
    pcie_pipe_if uut (
        .pclk(pclk),
        .reset_n(reset_n),
        .tx_data(tx_data),
        .tx_datak(tx_datak),
        .rx_data(rx_data),
        .rx_datak(rx_datak),
        .rx_valid(rx_valid),
        .rx_elecidle(rx_elecidle),
        .rx_status(rx_status),
        .tx_rate(tx_rate),
        .power_down(power_down),
        .tx_elecidle(tx_elecidle),
        .tx_compliance(tx_compliance),
        .rx_polarity(rx_polarity),
        .pipe_tx_data(pipe_tx_data),
        .pipe_tx_datak(pipe_tx_datak),
        .pipe_rx_data(pipe_rx_data),
        .pipe_rx_datak(pipe_rx_datak),
        .pipe_tx_rate(pipe_tx_rate),
        .pipe_tx_elecidle(pipe_tx_elecidle),
        .pipe_tx_compliance(pipe_tx_compliance),
        .pipe_rx_polarity(pipe_rx_polarity),
        .pipe_power_down(pipe_power_down),
        .pipe_rx_valid(pipe_rx_valid),
        .pipe_rx_elecidle(pipe_rx_elecidle),
        .pipe_rx_status(pipe_rx_status),
        .pipe_phy_status(pipe_phy_status)
    );

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_pcie_pipe_if.vcd");
        $dumpvars(0, tb_pcie_pipe_if);

        // Initialize inputs
        pclk = 0;
        reset_n = 0;
        tx_data = 0;
        tx_datak = 0;
        tx_rate = 0;
        power_down = 0;
        tx_elecidle = 0;
        tx_compliance = 0;
        rx_polarity = 0;
        pipe_rx_data = 0;
        pipe_rx_datak = 0;
        pipe_rx_valid = 0;
        pipe_rx_elecidle = 0;
        pipe_rx_status = 0;
        pipe_phy_status = 0;

        // Reset sequence
        #10;
        reset_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
