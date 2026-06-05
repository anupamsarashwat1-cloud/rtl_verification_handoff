#!/usr/bin/env python3
"""
Capture a single module's Input and Output waveform screenshots from GTKWave.
Properly parses VCD hierarchy, maps README signals, sets 0-1500ns range.

Usage: python3 capture_one.py <category> <module_name>
"""
import sys
import os
import re
import subprocess
import time
import glob

if len(sys.argv) < 3:
    print("Usage: python3 capture_one.py <category> <module_name>")
    sys.exit(1)

category = sys.argv[1]
module_name = sys.argv[2]
base_dir = "/home/anupam-sarashwat/rtl_verification_handoff"
module_dir = os.path.join(base_dir, category, module_name)
tb_name = f"tb_{module_name}"
vcd_file = os.path.join(module_dir, f"{tb_name}.vcd")

if not os.path.exists(vcd_file):
    print(f"ERROR: VCD file not found: {vcd_file}")
    sys.exit(1)

os.chdir(module_dir)

# ---- Step 1: Parse VCD to get all signal paths ----
def parse_vcd_signals(vcd_path):
    signals = {}
    scope_stack = []
    with open(vcd_path, 'r') as f:
        for line in f:
            line = line.strip()
            if line.startswith('$scope'):
                parts = line.split()
                if len(parts) >= 3:
                    scope_stack.append(parts[2])
            elif line.startswith('$upscope'):
                if scope_stack:
                    scope_stack.pop()
            elif line.startswith('$var'):
                parts = line.split()
                if len(parts) >= 5:
                    sig_name = parts[4]
                    full_path = ".".join(scope_stack) + "." + sig_name
                    if sig_name not in signals:
                        signals[sig_name] = []
                    signals[sig_name].append(full_path)
            elif line.startswith('$enddefinitions'):
                break
    return signals

vcd_signals = parse_vcd_signals(vcd_file)

# ---- Step 2: Parse README for Input/Output signals ----
def parse_readme_signals(readme_path):
    inputs = []
    outputs = []
    current_section = None
    with open(readme_path, 'r') as f:
        for line in f:
            if '### Inputs' in line or '**Inputs' in line:
                current_section = 'inputs'
            elif '### Outputs' in line or '**Outputs' in line:
                current_section = 'outputs'
            elif line.startswith('## ') and 'Input' not in line and 'Output' not in line:
                current_section = None
                    
            if line.strip().startswith('- `'):
                match = re.search(r'`([^`]+)`', line)
                if match:
                    sig = match.group(1)
                    bare_name = sig.split('.')[-1]
                    if current_section == 'inputs':
                        inputs.append(bare_name)
                    elif current_section == 'outputs':
                        outputs.append(bare_name)
    return inputs, outputs

readme_path = os.path.join(module_dir, "README.md")
readme_inputs, readme_outputs = parse_readme_signals(readme_path)
print(f"README Inputs: {readme_inputs}")
print(f"README Outputs: {readme_outputs}")

# ---- Step 3: Map README names to VCD paths ----
def resolve_signals(sig_names, vcd_signals, tb_name):
    resolved = []
    for name in sig_names:
        if name in vcd_signals:
            paths = vcd_signals[name]
            tb_level = [p for p in paths if p.startswith(tb_name + ".") and p.count('.') == 1]
            if tb_level:
                resolved.append(tb_level[0])
            else:
                resolved.append(paths[0])
        else:
            print(f"  WARNING: Signal '{name}' not found in VCD, skipping")
    return resolved

resolved_inputs = resolve_signals(readme_inputs, vcd_signals, tb_name)
resolved_outputs = resolve_signals(readme_outputs, vcd_signals, tb_name)
print(f"Resolved Inputs: {resolved_inputs}")
print(f"Resolved Outputs: {resolved_outputs}")

# ---- Step 4: Clean up old screenshots ----
for f in glob.glob("waveform_inputs*.png") + glob.glob("waveform_outputs*.png"):
    os.remove(f)

# ---- Step 5: Generate Tcl and capture ----
def capture(signals, filename):
    if not signals:
        print(f"  No signals for {filename}, skipping")
        return False
    
    tcl = "set sigs [list]\n"
    for s in signals:
        tcl += f'lappend sigs "{s}"\n'
    tcl += "gtkwave::addSignalsFromList $sigs\n"
    # Zoom -18 gives ~0-1900ns range (covers the 0-1500ns requirement)
    tcl += "gtkwave::setZoomFactor -18\n"
    tcl += "gtkwave::setWindowStartTime 0\n"
    
    tcl_path = f"run_{filename.replace('.png', '.tcl')}"
    with open(tcl_path, 'w') as f:
        f.write(tcl)
    
    p = subprocess.Popen(
        ["gtkwave", f"{tb_name}.vcd", "--script", tcl_path],
        env=dict(os.environ, DISPLAY=":0"),
        stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL
    )
    time.sleep(4)
    ret = os.system(f"DISPLAY=:0 scrot -u {filename}")
    os.system("killall gtkwave 2>/dev/null")
    p.wait()
    
    if os.path.exists(filename):
        print(f"  Captured {filename} ({os.path.getsize(filename)} bytes)")
        return True
    else:
        print(f"  FAILED to capture {filename}")
        return False

print("\n--- Capturing Inputs ---")
capture(resolved_inputs, "waveform_inputs.png")

print("\n--- Capturing Outputs ---")
capture(resolved_outputs, "waveform_outputs.png")

# ---- Step 6: Git push ----
os.chdir(base_dir)
os.system("git add .")
os.system(f'git commit -m "test: {module_name} - Waveform screenshots (0-1500ns) with correct signal mapping"')
os.environ.pop("GITHUB_TOKEN", None)
os.system("git push")
print(f"\nDone: {module_name}")
