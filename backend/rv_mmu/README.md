# rv_mmu Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `rv_mmu` module.

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
- `uut.satp`
- `uut.priv_mode`
- `uut.va_req`
- `uut.req_valid`
- `uut.req_r`
- `uut.req_w`
- `uut.req_x`
- `uut.ptw_arready`
- `uut.ptw_rvalid`
- `uut.ptw_rdata`
- `uut.ptw_rresp`
- `uut.sfence_vma`
- `uut.sfence_asid_en`
- `uut.sfence_va_en`
- `uut.sfence_va_val`
- `uut.sfence_asid_val`

### Outputs
- `uut.pa_out`
- `uut.trans_valid`
- `uut.trans_busy`
- `uut.page_fault`
- `uut.fault_va`
- `uut.ptw_arvalid`
- `uut.ptw_araddr`
- `uut.ptw_rready`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `rv_mmu`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    rv_mmu --> |rv_tlb| u_tlb[u_tlb]
    rv_mmu --> |rv_ptw| u_ptw[u_ptw]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp rv_mmu.v tb_rv_mmu.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_rv_mmu.vcd`
