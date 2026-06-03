`timescale 1ns / 1ps

module tb_l2_snoop_filter();

    reg  clk;
    reg  rst_n;
    reg  req_valid;
    reg  req_addr;
    reg  req_type;
    reg  req_core;
    wire snoop_valid;
    wire snoop_addr;
    wire snoop_type;
    reg  snoop_ack;
    reg  snoop_data_valid;
    wire resp_valid;
    wire resp_hit;
    wire resp_dirty;
    wire resp_owner;

    // DUT Instantiation
    l2_snoop_filter uut (
        .clk(clk),
        .rst_n(rst_n),
        .req_valid(req_valid),
        .req_addr(req_addr),
        .req_type(req_type),
        .req_core(req_core),
        .snoop_valid(snoop_valid),
        .snoop_addr(snoop_addr),
        .snoop_type(snoop_type),
        .snoop_ack(snoop_ack),
        .snoop_data_valid(snoop_data_valid),
        .resp_valid(resp_valid),
        .resp_hit(resp_hit),
        .resp_dirty(resp_dirty),
        .resp_owner(resp_owner)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_l2_snoop_filter.vcd");
        $dumpvars(0, tb_l2_snoop_filter);

        // Initialize inputs
        rst_n = 0;
        req_valid = 0;
        req_addr = 0;
        req_type = 0;
        req_core = 0;
        snoop_ack = 0;
        snoop_data_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
