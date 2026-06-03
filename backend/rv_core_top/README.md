# rv_core_top Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_core_top` module.

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
- `uut.irq_m_ext`
- `uut.irq_m_timer`
- `uut.irq_m_soft`
- `uut.imem_arready`
- `uut.imem_rvalid`
- `uut.imem_rdata`
- `uut.imem_rlast`
- `uut.imem_rresp`
- `uut.dmem_awready`
- `uut.dmem_wready`
- `uut.dmem_bvalid`
- `uut.dmem_bresp`
- `uut.dmem_arready`
- `uut.dmem_rvalid`
- `uut.dmem_rdata`
- `uut.dmem_rlast`
- `uut.dmem_rresp`
- `uut.snoop_valid`
- `uut.snoop_addr`
- `uut.snoop_type`
- `uut.halt_req`
- `uut.resume_req`

### Outputs
- `uut.imem_arvalid`
- `uut.imem_araddr`
- `uut.imem_arlen`
- `uut.imem_arsize`
- `uut.imem_arburst`
- `uut.imem_rready`
- `uut.dmem_awvalid`
- `uut.dmem_awaddr`
- `uut.dmem_awlen`
- `uut.dmem_awsize`
- `uut.dmem_awburst`
- `uut.dmem_wvalid`
- `uut.dmem_wdata`
- `uut.dmem_wstrb`
- `uut.dmem_wlast`
- `uut.dmem_bready`
- `uut.dmem_arvalid`
- `uut.dmem_araddr`
- `uut.dmem_arlen`
- `uut.dmem_arsize`
- `uut.dmem_arburst`
- `uut.dmem_arlock`
- `uut.dmem_rready`
- `uut.snoop_ack`
- `uut.snoop_data_valid`
- `uut.snoop_data`
- `uut.hart_halted`
- `uut.hart_running`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_core_top`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_core_top --> |BUFX4| u_buf_flush1[u_buf_flush1]
    rv_core_top --> |BUFX4| u_buf_flush2[u_buf_flush2]
    rv_core_top --> |BUFX4| u_buf_flush3[u_buf_flush3]
    rv_core_top --> |BUFX4| u_buf_flush4[u_buf_flush4]
    rv_core_top --> |rv_mmu| u_immu[u_immu]
    rv_core_top --> |rv_icache| u_icache[u_icache]
    rv_core_top --> |rv_decode| u_decode[u_decode]
    rv_core_top --> |rv_fpu| u_fpu[u_fpu]
    rv_core_top --> |rv_execute| u_execute[u_execute]
    rv_core_top --> |rv_mmu| u_dmmu[u_dmmu]
    rv_core_top --> |rv_pmp| u_pmp[u_pmp]
    rv_core_top --> |rv_dcache| u_dcache[u_dcache]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_core_top.v tb_rv_core_top.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_core_top.vcd`
