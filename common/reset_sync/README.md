# reset_sync Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `reset_sync` module.

## 🎯 What to Test
The verification engineer should ensure that:
1. The module resets correctly and all internal states initialize to safe values.
2. All interface protocols (e.g., AXI4, APB, native valid/ready) are strictly adhered to.
3. Edge cases specific to this IP (e.g., full/empty flags for FIFOs, cache misses for memory, etc.) are manually exercised.

## 🔍 GTKWave Signals to Observe
Add the following key signals to your GTKWave trace for structural inspection:
### Inputs
- `uut.clk`
- `uut.async_rst_n`

### Outputs
- `uut.sync_rst_n`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `reset_sync`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    reset_sync[reset_sync] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp reset_sync.v tb_reset_sync.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_reset_sync.vcd`
