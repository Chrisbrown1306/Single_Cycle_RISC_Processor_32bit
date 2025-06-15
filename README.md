

## 🛠 Tools Used

- **Vivado 2024.2** (Xilinx/AMD)
- Verilog HDL
- Vivado XSim (for simulation)
- Synthesis, Implementation, Bitstream Generation (FPGA Ready)

---

## 🔧 How to Simulate

1️⃣ Open Vivado → Open the Project.  
2️⃣ In **Flow Navigator → Simulation → Run Behavioral Simulation**  
3️⃣ Observe the waveforms in Vivado XSim.

*You can use `tb_single_cycle.v` testbench provided.*

---

## 🔧 How to Synthesize & Generate Bitstream

1️⃣ Go to **Flow Navigator → Synthesis → Run Synthesis**  
2️⃣ After successful synthesis, run **Implementation**  
3️⃣ Finally, generate **Bitstream** for FPGA.



## 💡 Features

- Supports basic RISC instruction set
- Single-cycle architecture (simpler design, easier to understand pipeline basics)
- Fully synthesizable for FPGA
- Modular design for easy debugging and modification




Implementation
![Single cycle implementation](https://github.com/user-attachments/assets/47fbedb2-a177-4373-b159-5368ab41d99d)
 
Schematic
![Single cycle schematic](https://github.com/user-attachments/assets/c09623b6-a0cf-4faf-a9e4-38bc937c4f0e)

## 📖 Future Improvements

- Add pipeline stages (IF, ID, EX, MEM, WB)
- Extend Instruction Set (Load/Store, Jump)
- Add Interrupt Handling
- Hazard Detection & Forwarding

## 👨‍💻 Author

> Om Naik
>
> Email: bt23ece008@iiitn.ac.in
