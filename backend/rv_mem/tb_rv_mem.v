`timescale 1ns / 1ps

module tb_rv_mem();

    reg  clk;
    reg  rst_n;
    reg  flush;
    reg  alu_result;
    reg  rs2_data;
    reg  rd_in;
    reg  funct3;
    reg  opcode;
    reg  mem_read;
    reg  mem_write;
    reg  reg_write;
    reg  valid_in;
    wire dmem_awvalid;
    reg  dmem_awready;
    wire dmem_awaddr;
    wire dmem_wvalid;
    reg  dmem_wready;
    wire dmem_wdata;
    wire dmem_wstrb;
    reg  dmem_bvalid;
    wire dmem_bready;
    wire dmem_arvalid;
    reg  dmem_arready;
    wire dmem_araddr;
    reg  dmem_rvalid;
    wire dmem_rready;
    reg  dmem_rdata;
    reg  dmem_rresp;
    wire result;
    wire rd_out;
    wire reg_write_out;
    wire valid_out;
    wire fwd_mem_data;
    wire fwd_mem_rd;
    wire fwd_mem_valid;
    wire mem_stall;

    // DUT Instantiation
    rv_mem uut (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .alu_result(alu_result),
        .rs2_data(rs2_data),
        .rd_in(rd_in),
        .funct3(funct3),
        .opcode(opcode),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_write(reg_write),
        .valid_in(valid_in),
        .dmem_awvalid(dmem_awvalid),
        .dmem_awready(dmem_awready),
        .dmem_awaddr(dmem_awaddr),
        .dmem_wvalid(dmem_wvalid),
        .dmem_wready(dmem_wready),
        .dmem_wdata(dmem_wdata),
        .dmem_wstrb(dmem_wstrb),
        .dmem_bvalid(dmem_bvalid),
        .dmem_bready(dmem_bready),
        .dmem_arvalid(dmem_arvalid),
        .dmem_arready(dmem_arready),
        .dmem_araddr(dmem_araddr),
        .dmem_rvalid(dmem_rvalid),
        .dmem_rready(dmem_rready),
        .dmem_rdata(dmem_rdata),
        .dmem_rresp(dmem_rresp),
        .result(result),
        .rd_out(rd_out),
        .reg_write_out(reg_write_out),
        .valid_out(valid_out),
        .fwd_mem_data(fwd_mem_data),
        .fwd_mem_rd(fwd_mem_rd),
        .fwd_mem_valid(fwd_mem_valid),
        .mem_stall(mem_stall)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_mem.vcd");
        $dumpvars(0, tb_rv_mem);

        // Initialize inputs
        rst_n = 0;
        flush = 0;
        alu_result = 0;
        rs2_data = 0;
        rd_in = 0;
        funct3 = 0;
        opcode = 0;
        mem_read = 0;
        mem_write = 0;
        reg_write = 0;
        valid_in = 0;
        dmem_awready = 0;
        dmem_wready = 0;
        dmem_bvalid = 0;
        dmem_arready = 0;
        dmem_rvalid = 0;
        dmem_rdata = 0;
        dmem_rresp = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
