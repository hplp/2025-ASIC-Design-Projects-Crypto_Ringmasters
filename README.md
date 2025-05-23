## Team Name: 
Crypto_Ringmasters

## Team Members:
- Shafat Shahnewaz
- Rumali Siddiqua

## Project Title:
ASIC Design and Implementation of a Ring Oscillator-Based Physical Unclonable Function (RO-PUF)

## Project Description:
This project presents the complete ASIC flow for designing a Ring Oscillator-based Physical Unclonable Function (RO-PUF) using a 28nm CMOS process and the full Synopsys EDA toolchain. The goal is to leverage process variations in ring oscillators to generate unique and unclonable identifiers at the silicon level, validated through synthesis, physical implementation, and signoff verification flows.
Our RO-PUF architecture includes:

Ring Oscillators (ROs): Exploiting process variations to generate distinct delay paths.

Frequency Counters: Measuring the oscillation frequency of paired ROs over a fixed time window.

Comparator Module: Comparing the counts to generate a single PUF bit (1 or 0).

Control FSM: Sequencing operations, start/stop control, and output bit storage.



## Key Objectives:
- Develop a synthesizable RO-PUF design featuring Ring Oscillator Module, Frequency Counter, Comparator, Control Logic, and Control FSM.

- Perform complete ASIC implementation using Synopsys tools.
 
- Generate a GDSII file that is ready for fabrication.

## Technology Stack:
RTL Development & Simulation: Verilog, Synopsys VCS, GTKWave.

Synthesis: Synopsys Design Compiler.

Place & Route: Synopsys IC Compiler II (ICC2).

Formal Verification: Synopsys Formality.

Layout Verification: Synopsys IC Validator.

STA & Power Analysis:	Synopsys PrimeTime

Version Control and Documentation: Git and LaTeX.

## Expected Outcomes:
- A fully verified ASIC RO-PUF design integrated within the Synopsys ASIC design flow in process node of 28nm CMOS. 
- Detailed simulation, synthesis, and timing reports that validate design performance and security.

## Tasks:

| Task                         | Description                                                                                      | Assigned To       |
|------------------------------|--------------------------------------------------------------------------------------------------|-------------------|
| Environment Setup            | Organize modules, and configure pin mapping                                    | Shafat & Rumali   |
| RTL Design                   | Implemented ring oscillator, frequency counter, comparator, and FSM in synthesizable Verilog      | Shafat & Rumali           |
| Functional Verification      | Develop testbenches and validate PUF bit generation using simulations                           | Shafat & Rumali            |
| Synthesis & Optimization     | Run synthesis, apply constraints, and optimize logic using Design Compiler                     |     Rumali        |
| Place & Route & DRC/LVS      | Using ICC2 for layout and design checks                                   |         Rumali    |           
| Documentation & Signoff     | Write report, generate GDSII, summarize results                                                 | Both              |


## Timeline:

| Milestone                        | Timeline |
|----------------------------------|----------|
| Functional Simulation and Verification | Week 1  |
| Synthesis and Early Optimization      | Week 2  |
| Place & Route and Layout Verification | Week 3  |
| Post-Layout Simulation and Final Signoff | Week 4  |

## Project Directory Structure:

asic-ro-puf-28nm/

├── src/         Verilog RTL files (RO, Counter, FSM, Comparator)

├── sim/         VCS simulation scripts and testbenches

├── synth/       Design Compiler scripts, .ddc netlist, and reports

├── pnr/         ICC2 setup: floorplan, placement, CTS, routing

├── formal_ver/  Pre-layout and Post-layout verification     

├── gds/         Final GDSII layout files and screenshots

└── README.md    Project overview and usage instructions

## Workflow of the Project:

This project involves the design, simulation, and ASIC implementation of a 1-bit RO-PUF (Ring Oscillator-based Physical Unclonable Function). The objective is to demonstrate a lightweight hardware security primitive in a standard-cell based silicon design flow.

Step 1: Behavioral Simulation

- Simulated the Verilog design using Synopsys VCS for RTL simulation and DVE waveform viewer for functional verification.

- Verified the toggling behavior of Ring Oscillators (ROs), the accuracy of the counter module, and the correctness of the comparator output.

- Observed output bit variations based on subtle frequency differences between ROs, confirming the expected PUF behavior.

<p align="middle">
<img src="doc/RTL Simulation_1.jpg">
</p>

<p align="middle">
<img src="doc/RTL Simulation_2.jpg">
</p>
Fig. 1. Behavioral RTL Simulation 

<br>
<br>

Step 2: Synthesis

- Synthesized the design using Synopsys Design Compiler, targeting a standard-cell library.

- Performed area, timing, and power analysis on the synthesized netlist to ensure design constraints were met.
