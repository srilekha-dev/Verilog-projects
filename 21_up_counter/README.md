# ⏱️ 4-bit Ripple UP Counter

## 📘 Introduction
A **4-bit Ripple UP Counter** is an asynchronous counter where each flip-flop is triggered by the **output of the previous flip-flop**.  
- The first flip-flop toggles with the external clock.  
- Each subsequent flip-flop toggles when the **previous output goes from HIGH → LOW** (falling edge).  
- This produces an **incrementing (UP) count sequence**.  

⚠️ In real hardware, ripple counters introduce **propagation delay** between bit transitions.  
In Verilog simulation, you can add `#delay` to visualize this effect.  

---
## 📝 Code

[up_counter.v](up_counter.v) – RTL Design  

[up_counter_tb.v](up_counter_tb.v) – Testbench  



## 🔍 Simulation

- Tool: QuestaSim / EDA Playground  

- ### 📊 Waveform Output

Here is the simulation waveform:  

![Waveform](up_counter_waveform.png)



Output Verified!


