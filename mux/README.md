# 4:1 Multiplexer using Verilog

## Aim

To design and simulate a 4:1 Multiplexer using Verilog HDL.

## Description

A 4:1 Multiplexer is a combinational circuit that selects one of four
input signals and sends the selected input to a single output.

### Inputs

- I[3:0] - Four data inputs
- S[1:0] - Two select lines

### Output

- Y - Selected output

## Truth Table

| S1 | S0 | Output |
|----|----|--------|
| 0  | 0  | I0     |
| 0  | 1  | I1     |
| 1  | 0  | I2     |
| 1  | 1  | I3     |

## Software Required

- Visual Studio Code
- Icarus Verilog
- GTKWave (optional, for waveform viewing)

## Files

- mux.v - Verilog design code
- mux_tb.v - Testbench
- mux.vcd - Waveform file generated during simulation
- output.txt - Simulation output

## How to Run

Open the project folder in VS Code.

Compile the design and testbench:

    iverilog -o mux_sim mux.v mux_tb.v

Run the simulation:

    vvp mux_sim

Save output to a file:

    vvp mux_sim > output.txt

To view the waveform:

    gtkwave mux.vcd

## Expected Result

For input I = 1010:

S = 00 selects I0 = 0
S = 01 selects I1 = 1
S = 10 selects I2 = 0
S = 11 selects I3 = 1

Therefore, the MUX correctly selects the required input according
to the select lines.

## Conclusion

The 4:1 Multiplexer was successfully designed and simulated using
Verilog HDL. The simulation results verify that the selected input
is correctly transferred to the output.