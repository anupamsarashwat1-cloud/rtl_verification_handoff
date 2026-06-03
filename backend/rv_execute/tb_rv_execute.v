`timescale 1ns / 1ps

module tb_rv_execute();

    reg  clk;
    reg  rst_n;
    reg  stall;
    reg  flush;
    reg  pc_in;
    reg  rs1_data;
    reg  rs2_data;
    reg  imm;
    reg  rd_in;
    reg  rs1_addr;
    reg  rs2_addr;
    reg  funct3;
    reg  funct7;
    reg  opcode;
    reg  alu_op;
    reg  mem_read;
    reg  mem_write;
    reg  reg_write;
    reg  branch;
    reg  jal;
    reg  jalr;
    reg  is_amo;
    reg  amo_funct5;
    reg  valid_in;
    reg  fwd_mem_data;
    reg  fwd_mem_valid;
    reg  fwd_mem_rd;
    reg  fwd_wb_data;
    reg  fwd_wb_valid;
    reg  fwd_wb_rd;
    reg  fpu_result;
    reg  fpu_valid;
    reg  fpu_done;
    wire alu_result;
    wire rs2_out;
    wire rd_out;
    wire funct3_out;
    wire opcode_out;
    wire mem_read_out;
    wire mem_write_out;
    wire reg_write_out;
    wire is_amo_out;
    wire amo_funct5_out;
    wire valid_out;
    wire mul_div_stall;
    wire branch_taken;
    wire branch_target;
    wire lr_addr;
    wire lr_valid;

    // DUT Instantiation
    rv_execute uut (
        .clk(clk),
        .rst_n(rst_n),
        .stall(stall),
        .flush(flush),
        .pc_in(pc_in),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .imm(imm),
        .rd_in(rd_in),
        .rs1_addr(rs1_addr),
        .rs2_addr(rs2_addr),
        .funct3(funct3),
        .funct7(funct7),
        .opcode(opcode),
        .alu_op(alu_op),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_write(reg_write),
        .branch(branch),
        .jal(jal),
        .jalr(jalr),
        .is_amo(is_amo),
        .amo_funct5(amo_funct5),
        .valid_in(valid_in),
        .fwd_mem_data(fwd_mem_data),
        .fwd_mem_valid(fwd_mem_valid),
        .fwd_mem_rd(fwd_mem_rd),
        .fwd_wb_data(fwd_wb_data),
        .fwd_wb_valid(fwd_wb_valid),
        .fwd_wb_rd(fwd_wb_rd),
        .fpu_result(fpu_result),
        .fpu_valid(fpu_valid),
        .fpu_done(fpu_done),
        .alu_result(alu_result),
        .rs2_out(rs2_out),
        .rd_out(rd_out),
        .funct3_out(funct3_out),
        .opcode_out(opcode_out),
        .mem_read_out(mem_read_out),
        .mem_write_out(mem_write_out),
        .reg_write_out(reg_write_out),
        .is_amo_out(is_amo_out),
        .amo_funct5_out(amo_funct5_out),
        .valid_out(valid_out),
        .mul_div_stall(mul_div_stall),
        .branch_taken(branch_taken),
        .branch_target(branch_target),
        .lr_addr(lr_addr),
        .lr_valid(lr_valid)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_execute.vcd");
        $dumpvars(0, tb_rv_execute);

        // Initialize inputs
        rst_n = 0;
        stall = 0;
        flush = 0;
        pc_in = 0;
        rs1_data = 0;
        rs2_data = 0;
        imm = 0;
        rd_in = 0;
        rs1_addr = 0;
        rs2_addr = 0;
        funct3 = 0;
        funct7 = 0;
        opcode = 0;
        alu_op = 0;
        mem_read = 0;
        mem_write = 0;
        reg_write = 0;
        branch = 0;
        jal = 0;
        jalr = 0;
        is_amo = 0;
        amo_funct5 = 0;
        valid_in = 0;
        fwd_mem_data = 0;
        fwd_mem_valid = 0;
        fwd_mem_rd = 0;
        fwd_wb_data = 0;
        fwd_wb_valid = 0;
        fwd_wb_rd = 0;
        fpu_result = 0;
        fpu_valid = 0;
        fpu_done = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
