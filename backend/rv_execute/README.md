# rv_execute Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_execute` module.

## 🎯 What to Test
The verification engineer should ensure that:
1. The module resets correctly and all internal states initialize to safe values.
2. All interface protocols (e.g., AXI4, APB, native valid/ready) are strictly adhered to.
3. Edge cases specific to this IP (e.g., full/empty flags for FIFOs, cache misses for memory, etc.) are manually exercised.

## 🔍 GTKWave Signals to Observe
Add the following key signals to your GTKWave trace for structural inspection:
### Inputs
- `uut.clk`
- `uut.rst_n`
- `uut.stall`
- `uut.flush`
- `uut.pc_in`
- `uut.rs1_data`
- `uut.rs2_data`
- `uut.imm`
- `uut.rd_in`
- `uut.rs1_addr`
- `uut.rs2_addr`
- `uut.funct3`
- `uut.funct7`
- `uut.opcode`
- `uut.alu_op`
- `uut.mem_read`
- `uut.mem_write`
- `uut.reg_write`
- `uut.branch`
- `uut.jal`
- `uut.jalr`
- `uut.is_amo`
- `uut.amo_funct5`
- `uut.valid_in`
- `uut.fwd_mem_data`
- `uut.fwd_mem_valid`
- `uut.fwd_mem_rd`
- `uut.fwd_wb_data`
- `uut.fwd_wb_valid`
- `uut.fwd_wb_rd`
- `uut.fpu_result`
- `uut.fpu_valid`
- `uut.fpu_done`

### Outputs
- `uut.alu_result`
- `uut.rs2_out`
- `uut.rd_out`
- `uut.funct3_out`
- `uut.opcode_out`
- `uut.mem_read_out`
- `uut.mem_write_out`
- `uut.reg_write_out`
- `uut.is_amo_out`
- `uut.amo_funct5_out`
- `uut.valid_out`
- `uut.mul_div_stall`
- `uut.branch_taken`
- `uut.branch_target`
- `uut.lr_addr`
- `uut.lr_valid`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_execute`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_execute --> |BUFX4| u_buf_flush_ex1[u_buf_flush_ex1]
    rv_execute --> |BUFX4| u_buf_flush_ex2[u_buf_flush_ex2]
    rv_execute --> |BUFX4| u_buf_flush_ex3[u_buf_flush_ex3]
    rv_execute --> |BUFX4| u_buf_flush_ex4[u_buf_flush_ex4]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_execute.v tb_rv_execute.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_execute.vcd`
