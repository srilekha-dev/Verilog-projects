# 1-to-4 Demultiplexer (DEMUX)

## 📘 Theory
A **1-to-4 Demultiplexer** (DEMUX) takes a single input and routes it to one of the four outputs based on a 2-bit select line. Only one output is active at a time, corresponding to the select line, while all others remain `0`.



**Truth Table:**

| Select S1 S0 | Y0 | Y1 | Y2 | Y3 |
|--------------|----|----|----|----|
| 00           | I  | 0  | 0  | 0  |
| 01           | 0  | I  | 0  | 0  |
| 10           | 0  | 0  | I  | 0  |
| 11           | 0  | 0  | 0  | I  |

---


