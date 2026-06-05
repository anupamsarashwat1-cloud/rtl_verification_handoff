# isp_pipeline Verification Handoff

## 📝 Overview
This directory contains the Verilog source, testbench, and verification instructions for the `isp_pipeline` module.

The `isp_pipeline` module implements a basic Image Signal Processor (ISP) pipeline. It receives a raw video stream via an AXI4-Stream interface (typically from a MIPI CSI-2 receiver) and processes it through multiple stages, including Bayer to RGB bilinear interpolation, a 3x3 color correction matrix (CCM), and a Gamma correction lookup table (LUT). Configuration such as bypass mode and gamma parameters is controlled via an APB slave interface, and the processed pixel stream is output over another AXI4-Stream interface (typically to a VDMA).

## 🎯 What to Test
The verification engineer should ensure that:
1. The module resets correctly and all internal states initialize to safe values.
2. All interface protocols (e.g., AXI4, APB, native valid/ready) are strictly adhered to.
3. Edge cases specific to this IP (e.g., full/empty flags for FIFOs, cache misses for memory, etc.) are manually exercised.

## 🔍 GTKWave Signals to Observe
Add the following key signals to your GTKWave trace for structural inspection:
### Inputs
- `uut.clk`: The main system clock driving the sequential logic.
- `uut.rst_n`: Active-low asynchronous reset signal.
- `uut.s_axis_tdata`: AXI4-Stream input data bus containing raw pixels.
- `uut.s_axis_tvalid`: AXI4-Stream input valid signal.
- `uut.s_axis_tuser`: AXI4-Stream input user signal (Start of Frame).
- `uut.s_axis_tlast`: AXI4-Stream input last signal (End of Line).
- `uut.m_axis_tready`: AXI4-Stream output ready signal from the downstream receiver.
- `uut.paddr`: APB slave address bus.
- `uut.psel`: APB slave select signal.
- `uut.penable`: APB slave enable signal.
- `uut.pwrite`: APB slave write enable signal.
- `uut.pwdata`: APB slave write data bus.

### Outputs
- `uut.s_axis_tready`: AXI4-Stream input ready signal.
- `uut.m_axis_tdata`: AXI4-Stream output data bus containing processed pixels.
- `uut.m_axis_tvalid`: AXI4-Stream output valid signal.
- `uut.m_axis_tuser`: AXI4-Stream output user signal (Start of Frame).
- `uut.m_axis_tlast`: AXI4-Stream output last signal (End of Line).
- `uut.prdata`: APB slave read data bus.
- `uut.pready`: APB slave ready signal.
- `uut.pslverr`: APB slave error signal.

## 🏗 Structural Block Diagram
The following Mermaid diagram maps the exact sub-module hierarchy instantiated within `isp_pipeline`. Use this to verify that structural boundaries match the behavioral expectations.

```mermaid
graph TD
    isp_pipeline[isp_pipeline] --> |No Sub-Modules| LEAF[Pure Logic]
```

## ▶️ Simulation Instructions
1. **Compile**: `iverilog -o sim.vvp isp_pipeline.v tb_isp_pipeline.v` (Include dependencies using ` -I ../../includes -I` if necessary)
2. **Simulate**: `vvp sim.vvp`
3. **View**: `gtkwave tb_isp_pipeline.vcd`

## 💉 Injected Stimulus Profile
An advanced Python DV script has automatically generated a fully functional SystemVerilog testbench for this module. The following aggressive stimulus is applied during simulation:

### Clocks Auto-Toggled:
- `clk` toggling every 3.6ns (138.8 MHz)

### Reset Sequence:
- `rst_n` driven to 0 then 1 over 100ns.

### Data Buses Randomized:
Over 500 consecutive cycles, the following inputs receive constrained `$random` logic values to aggressively exercise datapaths and control flow:
- `s_axis_tdata`
- `s_axis_tvalid`
- `s_axis_tuser`
- `s_axis_tlast`
- `m_axis_tready`
- `paddr`
- `psel`
- `penable`
- `pwrite`
- `pwdata`

## 📊 Verification Waveform

### Input Signals
![Inputs](./waveform_inputs.png)

### Output Signals
![Outputs](./waveform_outputs.png)

### 📝 Results and Observations
- **Input Stimulation:**
- **Output Validation:**
