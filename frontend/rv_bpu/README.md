# rv_bpu Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_bpu` module.

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
- `uut.fetch_pc`
- `uut.fetch_valid`
- `uut.ex_pc`
- `uut.ex_is_branch`
- `uut.ex_is_jal`
- `uut.ex_taken`
- `uut.ex_target`
- `uut.ex_valid`

### Outputs
- `uut.pred_taken`
- `uut.pred_target`
- `uut.pred_valid`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_bpu`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_bpu[rv_bpu] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_bpu.v tb_rv_bpu.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_bpu.vcd`
