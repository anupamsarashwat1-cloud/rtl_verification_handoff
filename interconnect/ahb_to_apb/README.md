# ahb_to_apb Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `ahb_to_apb` module.

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
- `uut.haddr`
- `uut.hwrite`
- `uut.htrans`
- `uut.hwdata`
- `uut.prdata`
- `uut.pready`
- `uut.pslverr`

### Outputs
- `uut.hrdata`
- `uut.hready_out`
- `uut.hresp`
- `uut.paddr`
- `uut.psel`
- `uut.penable`
- `uut.pwrite`
- `uut.pwdata`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `ahb_to_apb`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    ahb_to_apb[ahb_to_apb] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp ahb_to_apb.v tb_ahb_to_apb.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_ahb_to_apb.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `haddr`
- `hwrite`
- `htrans`
- `hwdata`
- `prdata`
- `pready`
- `pslverr`
