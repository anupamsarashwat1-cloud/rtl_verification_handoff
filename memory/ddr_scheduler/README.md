# ddr_scheduler Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `ddr_scheduler` module.

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
- `uut.cmd_valid`
- `uut.cmd_type`
- `uut.cmd_bank`
- `uut.cmd_row`
- `uut.cmd_col`
- `uut.wr_data`
- `uut.dfi_rddata`
- `uut.dfi_rddata_valid`

### Outputs
- `uut.cmd_ready`
- `uut.rd_data`
- `uut.rd_valid`
- `uut.dfi_cs_n`
- `uut.dfi_ras_n`
- `uut.dfi_cas_n`
- `uut.dfi_we_n`
- `uut.dfi_act_n`
- `uut.dfi_bank`
- `uut.dfi_addr`
- `uut.dfi_wrdata_valid`
- `uut.dfi_wrdata`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `ddr_scheduler`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    ddr_scheduler[ddr_scheduler] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp ddr_scheduler.v tb_ddr_scheduler.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_ddr_scheduler.vcd`
