# rv_fetch Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_fetch` module.

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
- `uut.branch_taken`
- `uut.branch_target`
- `uut.imem_arready`
- `uut.imem_rdata`
- `uut.imem_rvalid`
- `uut.imem_rresp`

### Outputs
- `uut.imem_addr`
- `uut.imem_arvalid`
- `uut.pc_out`
- `uut.instr_out`
- `uut.valid_out`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_fetch`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_fetch[rv_fetch] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_fetch.v tb_rv_fetch.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_fetch.vcd`
