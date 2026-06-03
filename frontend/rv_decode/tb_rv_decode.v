`timescale 1ns / 1ps

module tb_rv_decode();

    reg  clk;
    reg  rst_n;
    reg  stall;
    reg  flush;
    reg  pc_in;
    reg  instr_in;
    reg  valid_in;
    reg  wb_rd;
    reg  wb_data;
    reg  wb_we;
    wire pc_out;
    wire rs1_data;
    wire rs2_data;
    wire imm;
    wire rd;
    wire rs1_addr;
    wire rs2_addr;
    wire funct3;
    wire funct7;
    wire opcode;
    wire alu_op;
    wire mem_read;
    wire mem_write;
    wire reg_write;
    wire branch;
    wire jal;
    wire jalr;
    wire valid_out;

    // DUT Instantiation
    rv_decode uut (
        .clk(clk),
        .rst_n(rst_n),
        .stall(stall),
        .flush(flush),
        .pc_in(pc_in),
        .instr_in(instr_in),
        .valid_in(valid_in),
        .wb_rd(wb_rd),
        .wb_data(wb_data),
        .wb_we(wb_we),
        .pc_out(pc_out),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .imm(imm),
        .rd(rd),
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
        .valid_out(valid_out)
    );

    // Clock Generation (138.8 MHz -> ~7.2ns period)
    initial begin
        clk = 0;
        forever #3.6 clk = ~clk;
    end

    // Initial block for stimulus and VCD dumping
    initial begin
        $dumpfile("tb_rv_decode.vcd");
        $dumpvars(0, tb_rv_decode);

        // Initialize inputs
        rst_n = 0;
        stall = 0;
        flush = 0;
        pc_in = 0;
        instr_in = 0;
        valid_in = 0;
        wb_rd = 0;
        wb_data = 0;
        wb_we = 0;

        // Reset sequence
        #10;
        rst_n = 1;
        #100;

        // Add manual test stimulus here...

        #1000;
        $finish;
    end

endmodule
