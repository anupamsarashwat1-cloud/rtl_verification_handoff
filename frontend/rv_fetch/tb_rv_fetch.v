`timescale 1ns / 1ps

module tb_rv_fetch();

    reg  clk;
    reg  rst_n;
    reg  stall;
    reg  flush;
    reg  branch_taken;
    reg  branch_target;
    wire imem_addr;
    wire imem_arvalid;
    reg  imem_arready;
    reg  imem_rdata;
    reg  imem_rvalid;
    reg  imem_rresp;
    wire pc_out;
    wire instr_out;
    wire valid_out;

    // DUT Instantiation
    rv_fetch uut (
        .clk(clk),
        .rst_n(rst_n),
        .stall(stall),
        .flush(flush),
        .branch_taken(branch_taken),
        .branch_target(branch_target),
        .imem_addr(imem_addr),
        .imem_arvalid(imem_arvalid),
        .imem_arready(imem_arready),
        .imem_rdata(imem_rdata),
        .imem_rvalid(imem_rvalid),
        .imem_rresp(imem_rresp),
        .pc_out(pc_out),
        .instr_out(instr_out),
        .valid_out(valid_out)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_fetch.vcd");
        $dumpvars(0, tb_rv_fetch);

        // Initialize inputs
        rst_n = 0;
        stall = 0;
        flush = 0;
        branch_taken = 0;
        branch_target = 0;
        imem_arready = 0;
        imem_rdata = 0;
        imem_rvalid = 0;
        imem_rresp = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
