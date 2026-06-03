`timescale 1ns / 1ps

module tb_ddr_scheduler();

    reg  clk;
    reg  rst_n;
    reg  cmd_valid;
    reg  cmd_type;
    reg  cmd_bank;
    reg  cmd_row;
    reg  cmd_col;
    wire cmd_ready;
    wire rd_data;
    wire rd_valid;
    reg  wr_data;
    wire dfi_cs_n;
    wire dfi_ras_n;
    wire dfi_cas_n;
    wire dfi_we_n;
    wire dfi_act_n;
    wire dfi_bank;
    wire dfi_addr;
    wire dfi_wrdata_valid;
    wire dfi_wrdata;
    reg  dfi_rddata;
    reg  dfi_rddata_valid;

    // DUT Instantiation
    ddr_scheduler uut (
        .clk(clk),
        .rst_n(rst_n),
        .cmd_valid(cmd_valid),
        .cmd_type(cmd_type),
        .cmd_bank(cmd_bank),
        .cmd_row(cmd_row),
        .cmd_col(cmd_col),
        .cmd_ready(cmd_ready),
        .rd_data(rd_data),
        .rd_valid(rd_valid),
        .wr_data(wr_data),
        .dfi_cs_n(dfi_cs_n),
        .dfi_ras_n(dfi_ras_n),
        .dfi_cas_n(dfi_cas_n),
        .dfi_we_n(dfi_we_n),
        .dfi_act_n(dfi_act_n),
        .dfi_bank(dfi_bank),
        .dfi_addr(dfi_addr),
        .dfi_wrdata_valid(dfi_wrdata_valid),
        .dfi_wrdata(dfi_wrdata),
        .dfi_rddata(dfi_rddata),
        .dfi_rddata_valid(dfi_rddata_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_ddr_scheduler.vcd");
        $dumpvars(0, tb_ddr_scheduler);

        // Initialize inputs
        rst_n = 0;
        cmd_valid = 0;
        cmd_type = 0;
        cmd_bank = 0;
        cmd_row = 0;
        cmd_col = 0;
        wr_data = 0;
        dfi_rddata = 0;
        dfi_rddata_valid = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
