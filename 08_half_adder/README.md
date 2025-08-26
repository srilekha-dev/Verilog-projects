# Half Adder

## 📘 Theory
A **Half Adder** is a basic combinational circuit that performs the **addition of two single-bit binary numbers**.  
It has **two inputs (A, B)** and **two outputs (Sum, Carry)**.  
- **Sum** is the result of XOR operation.  
- **Carry** is the result of AND operation.  

---

## 📝 Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

---

## 📝 Code

[half_adder.v](half_adder.v) – RTL Design  

[half_adder_tb.v](half_adder_tb.v) – Testbench  



## 🔍 Simulation

- Tool: QuestaSim / EDA Playground  

- ### 📊 Waveform Output

Here is the simulation waveform:  

![Waveform](half_adder_waveform.png)



Output Verified!




