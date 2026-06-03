`timescale 1ns / 1ps

module tb_ddr_phy_if();

    reg  clk;
    reg  rst_n;
    reg  dfi_ck_en;
    reg  dfi_cs_n;
    reg  dfi_ras_n;
    reg  dfi_cas_n;
    reg  dfi_we_n;
    reg  dfi_bank;
    reg  dfi_addr;
    reg  dfi_wrdata_valid;
    reg  dfi_wrdata;
    reg  dfi_wrdata_mask;
    wire dfi_rddata;
    wire dfi_rddata_valid;
    wire ddr_ck_p;
    wire ddr_ck_n;
    wire ddr_cke;
    wire ddr_cs_n;
    wire ddr_ras_n;
    wire ddr_cas_n;
    wire ddr_we_n;
    wire ddr_ba;
    wire ddr_addr;
    wire ddr_dm;
    wire ddr_dq;
    wire ddr_dqs_p;
    wire ddr_dqs_n;

    // DUT Instantiation
    ddr_phy_if uut (
        .clk(clk),
        .rst_n(rst_n),
        .dfi_ck_en(dfi_ck_en),
        .dfi_cs_n(dfi_cs_n),
        .dfi_ras_n(dfi_ras_n),
        .dfi_cas_n(dfi_cas_n),
        .dfi_we_n(dfi_we_n),
        .dfi_bank(dfi_bank),
        .dfi_addr(dfi_addr),
        .dfi_wrdata_valid(dfi_wrdata_valid),
        .dfi_wrdata(dfi_wrdata),
        .dfi_wrdata_mask(dfi_wrdata_mask),
        .dfi_rddata(dfi_rddata),
        .dfi_rddata_valid(dfi_rddata_valid),
        .ddr_ck_p(ddr_ck_p),
        .ddr_ck_n(ddr_ck_n),
        .ddr_cke(ddr_cke),
        .ddr_cs_n(ddr_cs_n),
        .ddr_ras_n(ddr_ras_n),
        .ddr_cas_n(ddr_cas_n),
        .ddr_we_n(ddr_we_n),
        .ddr_ba(ddr_ba),
        .ddr_addr(ddr_addr),
        .ddr_dm(ddr_dm),
        .ddr_dq(ddr_dq),
        .ddr_dqs_p(ddr_dqs_p),
        .ddr_dqs_n(ddr_dqs_n)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_ddr_phy_if.vcd");
        $dumpvars(0, tb_ddr_phy_if);

        // Initialize inputs
        rst_n = 0;
        dfi_ck_en = 0;
        dfi_cs_n = 0;
        dfi_ras_n = 0;
        dfi_cas_n = 0;
        dfi_we_n = 0;
        dfi_bank = 0;
        dfi_addr = 0;
        dfi_wrdata_valid = 0;
        dfi_wrdata = 0;
        dfi_wrdata_mask = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
