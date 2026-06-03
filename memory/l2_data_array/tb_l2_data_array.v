`timescale 1ns / 1ps

module tb_l2_data_array();

    reg  clk;
    reg  rst_n;
    reg  bank_sel;
    reg  cs;
    reg  we;
    reg  wmask;
    reg  addr;
    reg  din;
    wire dout;
    wire dout_valid;

    // DUT Instantiation
    l2_data_array uut (
        .clk(clk),
        .rst_n(rst_n),
        .bank_sel(bank_sel),
        .cs(cs),
        .we(we),
        .wmask(wmask),
        .addr(addr),
        .din(din),
        .dout(dout),
        .dout_valid(dout_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_l2_data_array.vcd");
        $dumpvars(0, tb_l2_data_array);

        // Initialize inputs
        rst_n = 0;
        bank_sel = 0;
        cs = 0;
        we = 0;
        wmask = 0;
        addr = 0;
        din = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
