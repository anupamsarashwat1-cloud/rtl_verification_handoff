# rv_writeback Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_writeback` module.

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
- `uut.result`
- `uut.rd_in`
- `uut.reg_write`
- `uut.valid_in`

### Outputs
- `uut.wb_data`
- `uut.wb_rd`
- `uut.wb_we`
- `uut.fwd_wb_data`
- `uut.fwd_wb_rd`
- `uut.fwd_wb_valid`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_writeback`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_writeback[rv_writeback] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_writeback.v tb_rv_writeback.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_writeback.vcd`
