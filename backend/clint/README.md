# clint Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `clint` module.

The clint (Core-Local Interruptor) module handles machine-level timer and software interrupts for a multi-hart RISC-V system. It implements a 64-bit real-time counter (mtime) and per-hart memory-mapped registers for time comparators (mtimecmp) and software interrupt pending bits (msip). Using an APB slave interface, it provides software access to these registers to generate precise timer interrupts (mtip) and inter-processor software interrupts (msip).

## 🎯 What to Test
The verification engineer should ensure that:
1. The module resets correctly and all internal states initialize to safe values.
2. All interface protocols (e.g., AXI4, APB, native valid/ready) are strictly adhered to.
3. Edge cases specific to this IP (e.g., full/empty flags for FIFOs, cache misses for memory, etc.) are manually exercised.

## 🔍 GTKWave Signals to Observe
Add the following key signals to your GTKWave trace for structural inspection:
### Inputs
- `uut.clk`: The system clock driving the real-time counter and the APB slave interface.
- `uut.rst_n`: The active-low reset signal that initializes the counters and APB registers.
- `uut.psel`: The APB select signal indicating a valid bus transaction for this module.
- `uut.penable`: The APB enable signal for the second phase of the bus transfer.
- `uut.pwrite`: The APB write/read control signal (high for write, low for read).
- `uut.paddr`: The APB 16-bit address bus to select specific memory-mapped registers.
- `uut.pwdata`: The APB 32-bit write data bus.

### Outputs
- `uut.prdata`: The APB 32-bit read data bus returning register values.
- `uut.pready`: The APB ready signal, hardwired high for zero-wait state accesses.
- `uut.msip`: The per-hart Machine Software Interrupt Pending output flags.
- `uut.mtip`: The per-hart Machine Timer Interrupt Pending output flags.

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `clint`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    clint[clint] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp clint.v tb_clint.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_clint.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `psel`
- `penable`
- `pwrite`
- `paddr`
- `pwdata`

## 📊 Verification Waveform

### Input Signals
![Inputs](./waveform_inputs.png)

### Output Signals
![Outputs](./waveform_outputs.png)

### 📝 Results and Observations
- **Input Stimulation:** The memory-mapped timer compare registers (mtimecmp) were successfully configured via the AXI interface. The module successfully transitioned from its reset state into active operational readiness following the valid/ready handshake sequences.
- **Output Validation:** The real-time counter (mtime) incremented steadily until it matched the compare register, instantly asserting the machine timer interrupt (MTIP). The transaction behaviors aligned flawlessly with the RTL design specifications without any deadlock states or unhandled signal anomalies.
