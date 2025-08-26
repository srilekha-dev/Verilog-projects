# 1:2 DeMultiplexer (DEMUX)

## Overview
The 1×2 Demultiplexer consists of 1 input line (I), 1 select line (S), and 2 output lines (Y0 and Y1). The logic level applied at the select line determines the output line to which the input data will be transmitted.

- **Number of Inputs (Data):** 1 (I)  
- **Number of Select Lines:** 1 (S)  
- **Number of Outputs:** 2 (Y0,Y1)  

## 📘 Truth Table

| S  | I  |  Y0 | Y1 |
|----|----|----------|
| 0  | 0  |  I  | 0  |
| 0  | 1  |  I  | 0  |
| 1  | 0  |  0  | I  |
| 1  | 1  |  0  | I  |

## 📝 Code
- [demux1_2.v](demux1_2.v) – RTL Design  
- [demux1_2_tb.v](demux1_2_tb.v) – Testbench  

## 🔍 Simulation
- Tool: QuestaSim / EDA Playground  
- ### 📊 Waveform Output
Here is the simulation waveform:  


Output Verified!
