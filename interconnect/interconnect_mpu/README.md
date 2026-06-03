# interconnect_mpu Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `interconnect_mpu` module.

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
- `uut.cfg_base_addr`
- `uut.cfg_limit_addr`
- `uut.cfg_master_mask`
- `uut.cfg_perm`
- `uut.cfg_valid`
- `uut.s_arvalid`
- `uut.s_araddr`
- `uut.s_arid`
- `uut.m_arready`
- `uut.m_rvalid`
- `uut.m_rdata`
- `uut.m_rresp`
- `uut.m_rlast`
- `uut.m_rid`
- `uut.s_rready`
- `uut.s_awvalid`
- `uut.s_awaddr`
- `uut.s_awid`
- `uut.m_awready`
- `uut.m_bvalid`
- `uut.m_bresp`
- `uut.m_bid`
- `uut.s_bready`

### Outputs
- `uut.s_arready`
- `uut.m_arvalid`
- `uut.m_araddr`
- `uut.m_arid`
- `uut.m_rready`
- `uut.s_rvalid`
- `uut.s_rdata`
- `uut.s_rresp`
- `uut.s_rlast`
- `uut.s_rid`
- `uut.s_awready`
- `uut.m_awvalid`
- `uut.m_awaddr`
- `uut.m_awid`
- `uut.m_bready`
- `uut.s_bvalid`
- `uut.s_bresp`
- `uut.s_bid`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `interconnect_mpu`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    interconnect_mpu[interconnect_mpu] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp interconnect_mpu.v tb_interconnect_mpu.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_interconnect_mpu.vcd`
