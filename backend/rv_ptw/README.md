# rv_ptw Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_ptw` module.

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
- `uut.va_req`
- `uut.asid_req`
- `uut.satp_ppn`
- `uut.ptw_req`
- `uut.access_r`
- `uut.access_w`
- `uut.access_x`
- `uut.priv_s`
- `uut.ptw_arready`
- `uut.ptw_rvalid`
- `uut.ptw_rdata`
- `uut.ptw_rresp`

### Outputs
- `uut.ptw_busy`
- `uut.fill_valid`
- `uut.fill_va`
- `uut.fill_pa`
- `uut.fill_asid`
- `uut.fill_perm`
- `uut.fill_level`
- `uut.page_fault`
- `uut.fault_addr`
- `uut.fault_type`
- `uut.ptw_arvalid`
- `uut.ptw_araddr`
- `uut.ptw_rready`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_ptw`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_ptw[rv_ptw] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_ptw.v tb_rv_ptw.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_ptw.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `va_req`
- `asid_req`
- `satp_ppn`
- `ptw_req`
- `access_r`
- `access_w`
- `access_x`
- `priv_s`
- `ptw_arready`
- `ptw_rvalid`
- `ptw_rdata`
- `ptw_rresp`
