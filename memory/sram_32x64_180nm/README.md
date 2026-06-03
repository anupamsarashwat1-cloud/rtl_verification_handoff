# sram_32x64_180nm Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `sram_32x64_180nm` module.

## 🎯 What to Test
The verification engineer should ensure that:
1. The module resets correctly and all internal states initialize to safe values.
2. All interface protocols (e.g., AXI4, APB, native valid/ready) are strictly adhered to.
3. Edge cases specific to this IP (e.g., full/empty flags for FIFOs, cache misses for memory, etc.) are manually exercised.

## 🔍 GTKWave Signals to Observe
Add the following key signals to your GTKWave trace for structural inspection:
### Inputs
- `uut.clk0`
- `uut.csb0`
- `uut.web0`
- `uut.wmask0`
- `uut.addr0`
- `uut.din0`

### Outputs
- `uut.dout0`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `sram_32x64_180nm`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    sram_32x64_180nm[sram_32x64_180nm] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp sram_32x64_180nm.v tb_sram_32x64_180nm.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_sram_32x64_180nm.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk0` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- None detected.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `csb0`
- `web0`
- `wmask0`
- `addr0`
- `din0`
