# l2_cache_top Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `l2_cache_top` module.

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
- `uut.s_arvalid`
- `uut.s_araddr`
- `uut.s_rready`
- `uut.s_awvalid`
- `uut.s_awaddr`
- `uut.s_wvalid`
- `uut.s_wdata`
- `uut.s_wstrb`
- `uut.s_bready`
- `uut.m_arready`
- `uut.m_rvalid`
- `uut.m_rdata`
- `uut.m_rresp`
- `uut.m_awready`
- `uut.m_wready`
- `uut.m_bvalid`
- `uut.snoop_ack`
- `uut.snoop_data_valid`

### Outputs
- `uut.s_arready`
- `uut.s_rvalid`
- `uut.s_rdata`
- `uut.s_rresp`
- `uut.s_awready`
- `uut.s_wready`
- `uut.s_bvalid`
- `uut.s_bresp`
- `uut.m_arvalid`
- `uut.m_araddr`
- `uut.m_rready`
- `uut.m_awvalid`
- `uut.m_awaddr`
- `uut.m_wvalid`
- `uut.m_wdata`
- `uut.m_wstrb`
- `uut.m_bready`
- `uut.snoop_valid`
- `uut.snoop_addr`
- `uut.snoop_type`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `l2_cache_top`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    l2_cache_top --> |l2_cache_ctrl| u_ctrl[u_ctrl]
    l2_cache_top --> |sram_512kx8_180nm| u_sram[u_sram]
    l2_cache_top --> |l2_snoop_filter| u_snoop_filter[u_snoop_filter]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp l2_cache_top.v tb_l2_cache_top.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_l2_cache_top.vcd`
