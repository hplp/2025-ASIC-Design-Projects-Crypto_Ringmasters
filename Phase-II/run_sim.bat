@echo off
echo [1] Compiling Verilog files...

C:\iverilog\bin\iverilog.exe -o simv freq_counter.v comparator.v control_fsm.v ring_oscillator.v project.v testbench.v

if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    pause
    exit /b
)

echo [2] Running simulation...
C:\iverilog\bin\vvp.exe simv

if not exist simulation.vcd (
    echo Simulation VCD file not found!
    pause
    exit /b
)

echo [3] Launching GTKWave...
start "" "C:\iverilog\gtkwave\bin\gtkwave.exe" simulation.vcd

echo [Done]
pause
