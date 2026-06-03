# qos_controller Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `qos_controller` module.

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
- `uut.cfg_base_qos`
- `uut.cfg_boost_qos`
- `uut.cfg_bw_limit`
- `uut.cfg_time_win`
- `uut.m_arvalid`
- `uut.m_arready`
- `uut.m_awvalid`
- `uut.m_awready`

### Outputs
- `uut.m_arqos`
- `uut.m_awqos`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `qos_controller`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    qos_controller[qos_controller] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp qos_controller.v tb_qos_controller.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_qos_controller.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `cfg_base_qos`
- `cfg_boost_qos`
- `cfg_bw_limit`
- `cfg_time_win`
- `m_arvalid`
- `m_arready`
- `m_awvalid`
- `m_awready`
