# uart_16550 Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `uart_16550` module.

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
- `uut.paddr`
- `uut.psel`
- `uut.penable`
- `uut.pwrite`
- `uut.pwdata`
- `uut.rxd`
- `uut.irda_rx`
- `uut.lin_rx`

### Outputs
- `uut.prdata`
- `uut.pready`
- `uut.pslverr`
- `uut.uart_irq`
- `uut.txd`
- `uut.irda_tx`
- `uut.lin_tx`

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `uart_16550`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    uart_16550[uart_16550] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp uart_16550.v tb_uart_16550.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_uart_16550.vcd`
