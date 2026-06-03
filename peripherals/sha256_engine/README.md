# sha256_engine Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `sha256_engine` module.

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
- `uut.psel`
- `uut.penable`
- `uut.pwrite`
- `uut.paddr`
- `uut.pwdata`

### Outputs
- `uut.prdata`
- `uut.pready`
- `uut.irq`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `sha256_engine`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    sha256_engine[sha256_engine] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp sha256_engine.v tb_sha256_engine.v` (Include dependencies using `-I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_sha256_engine.vcd`
