
# Progress Report Summary: RO-PUF ASIC Implementation for TinyTapeout 10

**Name:** Shafat Shahnewaz  
**Project Title:** Ring Oscillator-Based Physical Unclonable Function (RO-PUF)  
**Platform:** TinyTapeout 10 (Sky130 Open PDK)

---

## ✅ Objectives:
To design, simulate, and prepare a tapeout-ready implementation of a single-bit Ring Oscillator-based Physical Unclonable Function (RO-PUF) using the open-source TinyTapeout 10 ASIC flow.

---

## 🧠 Work Completed So Far:

### 🔹 RTL Design (Verilog)
- Developed synthesizable modules for:
  - Ring Oscillators (`ring_oscillator_A` & `B`)
  - Frequency Counters (`freq_counter`)
  - Comparator (`comparator`)
- Integrated all modules in a top-level `project.v`.

### 🔹 Simulation (Icarus Verilog + GTKWave)
- Created a complete testbench for functional verification.
- Used simulated oscillators (`#3` and `#5`) to model frequency variation.
- Verified oscillator toggling, counter behavior, and PUF bit output.
- Visualized results using GTKWave and confirmed correct logic operation.

### 🔹 TinyTapeout 10 Integration
- Set up the official [tt10-verilog-template](https://github.com/TinyTapeout/tt10-verilog-template) repository.
- Added RO-PUF design files to `src/`.
- Updated `project.v`, `config.json`, and `info.yaml` to meet TT10 constraints.
- Verified I/O definitions and pin mappings.
- Passed `run-precheck` verification and prepared for synthesis.

---

## 🔄 Current Status:
- RTL code is ready and integrated with TT10 flow.
- Preliminary simulations are complete and validated.
- The design is ready for synthesis and GDS generation via Docker.

---

## 🎯 Next Steps:
- Run full ASIC flow using `./run-docker.sh build` to generate GDSII.
- Submit the final repository for inclusion in TinyTapeout 10 tapeout.
- Optionally extend to multi-bit PUF using FSM in future revisions.
