\# 2-bit Comparator



\## 📘 Theory

A \*\*comparator\*\* is a combinational circuit that compares two binary numbers and determines their relationship:

\- \*\*A = B\*\*

\- \*\*A > B\*\*

\- \*\*A < B\*\*



For a \*\*2-bit comparator\*\*, inputs are `A\[1:0]` and `B\[1:0]`.  

The outputs are:

\- `AeqB` → High if A = B  

\- `AgtB` → High if A > B  

\- `AltB` → High if A < B  



---



\## 📝 Truth Table



| A1 A0 | B1 B0 | AeqB | AgtB | AltB |

|-------|-------|-------|------|------|

| 00    | 00    | 1     | 0    | 0    |

| 00    | 01    | 0     | 0    | 1    |

| 01    | 00    | 0     | 1    | 0    |

| 01    | 01    | 1     | 0    | 0    |

| 10    | 01    | 0     | 1    | 0    |

| 10    | 11    | 0     | 0    | 1    |

| 11    | 11    | 1     | 0    | 0    |

... and so on for all 16 combinations.



---



\## 📝 Code

\- \[comp.v](comp.v) – RTL Design  

\- \[comp\_tb.v](comp\_tb.v) – Testbench  



\## 🔍 Simulation

\- Tool: QuestaSim / EDA Playground  

\- ### 📊 Waveform Output

Here is the simulation waveform:  

!\[Waveform](comp\_waveform.png)



Output Verified!

