# Ripple Carry Adder (RCA)

## 📘 Theory
A **Ripple Carry Adder (RCA)** is a digital circuit used to add **two multi-bit binary numbers**.  
- It is constructed by connecting multiple **Full Adders** in series.  
- The **carry output** of one full adder is connected to the **carry input** of the next stage.  
- The carry signal “ripples” through each stage, which is why it’s called a Ripple Carry Adder.  

### Example: 4-bit RCA
- Inputs: `A[3:0]`, `B[3:0]`, `Cin`  
- Outputs: `Sum[3:0]`, `Cout`  

---

## 📝 Truth Table (4-bit Example)

| A (4-bit) | B (4-bit) | Cin | Sum (4-bit) | Cout |
|-----------|-----------|-----|-------------|------|
| 0000      | 0000      |  0  | 0000        |  0   |
| 0101      | 0011      |  0  | 1000        |  0   |
| 1111      | 0001      |  0  | 0000        |  1   |
| 1010      | 0101      |  1  | 0000        |  1   |

---
