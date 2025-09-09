# Verilog Projects Portfolio  

This repository contains my **Verilog RTL design and testbench practice projects**.  
Each project folder has:  
- RTL Design Code  
- Testbench  
- Truth Table & Explanation  
- Simulation Waveform  

## 📂 Projects
1. [2:1 Multiplexer](01_mux/)
2. [4:1 Multiplexer](02_mux_4_1/)
3. [2:4 Decoder](03_dec_2_4/)
4. [3:8 Decoder](04_dec_3_8/)
5. [1:2 Demultiplexer](05_demux_1_2/)
6. [1:4 Demultiplexer](06_demux_1_4/)
7. [Comparator](07_comp/)
8. [Half Adder](08_half_adder/)
9. [Full Adder](09_full_adder/)
10. [Ripple Carry Adder](10_rca/)
11. [D Latch](11_d_latch/)
12. [T Latch](12_t_latch/)
13. [SR Latch](13_sr_latch/)
14. [JK Latch](14_jk_latch/)
15. [D Flip-Flop](15_d_ff/)
16. [T Flip-Flop](16_t_ff/)
17. [JK Flip-Flop](17_jk_ff/)
18. [Shift Register](18_shift_register/)
19. [Asynchronous Counter](19_asynchronous_counter/)
20. [Synchronous Counter](20_synchronous_counter/)
21. [UP Counter](21_up_counter/)
22. [DOWN Counter](22_down_counter/)
23. [UP-DOWN Counter](23_up_down_counter/)
24. [Ring Counter](24_ring_counter/)
25. [Johnson Counter](25_johnson_counter/)
26. [Binary To Gray Converter](26_b2g_converter/)
27. [Gray To Binary Converter](27_g2b_converter/)
28. [Priority Encoder](28_priority_encoder/)
29. [ALU](29_alu/)
30. [Sequence Detector](30_seq+det/)
31. [Traffic Light Controller FSM](31_traffic_fsm/)
32. [4 Bit Array Multiplier](32_arr_mul/)
33. [4 Bit Divider](33_arr_div/)
34. [Memory](34_memory/)
35. [UART Trasmitter/Receiver](35_uart/)

## ▶️ Running the Verilog Projects in QuestaSim

Each project folder contains:
- `design.v` (RTL file)
- `tb_design.v` (testbench)

To run the simulation in **QuestaSim/ModelSim**:

1. Open QuestaSim.
2. Navigate to the project folder using the terminal inside QuestaSim.
cd path/to/project_folder


3. Compile the design and testbench:

vlog (testbench file name with extension)

4. Load the testbench for simulation:
   
vsim (top module name)

5. Add all signals to the waveform:
   
add wave *

6. Run the simulation:
   
run -all

---

💡 These are **basic to advanced Verilog projects** created for learning and practice.  
They cover combinational, sequential circuits, and system-level designs — useful for interviews and hands-on experience.
