# aes_engine Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `aes_engine` module.

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
- `uut.paddr`
- `uut.psel`
- `uut.penable`
- `uut.pwrite`
- `uut.pwdata`
- `uut.s_axis_tdata`
- `uut.s_axis_tvalid`
- `uut.s_axis_tlast`
- `uut.m_axis_tready`

### Outputs
- `uut.prdata`
- `uut.pready`
- `uut.pslverr`
- `uut.s_axis_tready`
- `uut.m_axis_tdata`
- `uut.m_axis_tvalid`
- `uut.m_axis_tlast`
- `uut.aes_irq`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `aes_engine`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    aes_engine[aes_engine] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp aes_engine.v tb_aes_engine.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_aes_engine.vcd`
