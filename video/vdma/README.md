# vdma Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `vdma` module.

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
- `uut.s_axis_s2mm_tdata`
- `uut.s_axis_s2mm_tvalid`
- `uut.s_axis_s2mm_tuser`
- `uut.s_axis_s2mm_tlast`
- `uut.m_axis_mm2s_tready`
- `uut.m_axi_awready`
- `uut.m_axi_wready`
- `uut.m_axi_bvalid`
- `uut.m_axi_bresp`
- `uut.m_axi_arready`
- `uut.m_axi_rvalid`
- `uut.m_axi_rdata`
- `uut.m_axi_rresp`
- `uut.m_axi_rlast`
- `uut.paddr`
- `uut.psel`
- `uut.penable`
- `uut.pwrite`
- `uut.pwdata`

### Outputs
- `uut.s_axis_s2mm_tready`
- `uut.m_axis_mm2s_tdata`
- `uut.m_axis_mm2s_tvalid`
- `uut.m_axis_mm2s_tuser`
- `uut.m_axis_mm2s_tlast`
- `uut.m_axi_awvalid`
- `uut.m_axi_awaddr`
- `uut.m_axi_awlen`
- `uut.m_axi_awsize`
- `uut.m_axi_wvalid`
- `uut.m_axi_wdata`
- `uut.m_axi_wstrb`
- `uut.m_axi_wlast`
- `uut.m_axi_bready`
- `uut.m_axi_arvalid`
- `uut.m_axi_araddr`
- `uut.m_axi_arlen`
- `uut.m_axi_arsize`
- `uut.m_axi_rready`
- `uut.prdata`
- `uut.pready`
- `uut.pslverr`
- `uut.vdma_irq`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `vdma`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    vdma[vdma] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp vdma.v tb_vdma.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_vdma.vcd`
