# ddr_phy_if Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `ddr_phy_if` module.

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
- `uut.dfi_ck_en`
- `uut.dfi_cs_n`
- `uut.dfi_ras_n`
- `uut.dfi_cas_n`
- `uut.dfi_we_n`
- `uut.dfi_bank`
- `uut.dfi_addr`
- `uut.dfi_wrdata_valid`
- `uut.dfi_wrdata`
- `uut.dfi_wrdata_mask`

### Outputs
- `uut.dfi_rddata`
- `uut.dfi_rddata_valid`
- `uut.ddr_ck_p`
- `uut.ddr_ck_n`
- `uut.ddr_cke`
- `uut.ddr_cs_n`
- `uut.ddr_ras_n`
- `uut.ddr_cas_n`
- `uut.ddr_we_n`
- `uut.ddr_ba`
- `uut.ddr_addr`
- `uut.ddr_dm`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `ddr_phy_if`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    ddr_phy_if[ddr_phy_if] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp ddr_phy_if.v tb_ddr_phy_if.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_ddr_phy_if.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `dfi_ck_en`
- `dfi_cs_n`
- `dfi_ras_n`
- `dfi_cas_n`
- `dfi_we_n`
- `dfi_bank`
- `dfi_addr`
- `dfi_wrdata_valid`
- `dfi_wrdata`
- `dfi_wrdata_mask`
