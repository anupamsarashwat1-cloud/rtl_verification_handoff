# l2_snoop_filter Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `l2_snoop_filter` module.

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
- `uut.req_valid`
- `uut.req_addr`
- `uut.req_type`
- `uut.req_core`
- `uut.snoop_ack`
- `uut.snoop_data_valid`

### Outputs
- `uut.snoop_valid`
- `uut.snoop_addr`
- `uut.snoop_type`
- `uut.resp_valid`
- `uut.resp_hit`
- `uut.resp_dirty`
- `uut.resp_owner`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `l2_snoop_filter`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    l2_snoop_filter[l2_snoop_filter] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp l2_snoop_filter.v tb_l2_snoop_filter.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_l2_snoop_filter.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `req_valid`
- `req_addr`
- `req_type`
- `req_core`
- `snoop_ack`
- `snoop_data_valid`
