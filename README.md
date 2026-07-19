# 16-Bit Adder Using VIO and ILA on Basys 3 (Artix-7 XC7A35T)

## Overview

This project demonstrates the implementation and real-time verification of a **16-bit synchronous binary adder** using **Verilog HDL** on the **Digilent Basys 3 FPGA**, featuring the **Xilinx Artix-7 XC7A35T FPGA**.

The design leverages the **Virtual Input/Output (VIO)** and **Integrated Logic Analyzer (ILA)** IP cores from the Vivado IP Catalog. The VIO IP is used to provide two 16-bit input operands (`A` and `B`) directly from the Vivado Hardware Manager, while the ILA IP captures and displays the input and output signals for real-time debugging and verification.

This implementation demonstrates how Vivado's on-chip debugging tools simplify FPGA design validation without relying on physical switches, LEDs, or external measurement equipment.

---

## Features

- 16-bit synchronous binary adder
- Verilog HDL implementation
- Real-time input control using Virtual Input/Output (VIO)
- Real-time signal monitoring using Integrated Logic Analyzer (ILA)
- 17-bit output to accommodate carry-out
- Compatible with the Digilent Basys 3 (Artix-7 XC7A35T FPGA)
- Synthesizable and modular RTL design

---

## Hardware Requirements

- Digilent Basys 3 FPGA Development Board
- Xilinx Artix-7 XC7A35T FPGA
- Xilinx Vivado Design Suite
- USB cable for programming and debugging

---

## Project Structure

```text
16bit-Adder-VIO-ILA/
├── src/
│   └── vio_top.v
├── debug/
│   ├── vio_0.xci
│   └── ila_1.xci
├── constraints/
│   └── basys3.xdc
└── README.md
```

---

## Working Principle

The design consists of three main modules:

- **Virtual Input/Output (VIO):** Generates two 16-bit input values (`A` and `B`) from the Vivado Hardware Manager.
- **16-Bit Adder:** Adds the two input operands on every rising edge of the system clock.
- **Integrated Logic Analyzer (ILA):** Captures and displays the input operands and the 17-bit sum for real-time verification.

The result is stored in a **17-bit register**, where the most significant bit represents the carry-out generated during addition.

```
Sum = A + B
```

---

## VIO Configuration

| Probe | Width | Description |
|--------|------:|-------------|
| Probe Out 0 | 16 bits | Input A |
| Probe Out 1 | 16 bits | Input B |
| Probe In 0 | 17 bits | Sum |

---

## ILA Configuration

| Probe | Width | Description |
|--------|------:|-------------|
| Probe 0 | 16 bits | Input A |
| Probe 1 | 16 bits | Input B |
| Probe 2 | 17 bits | Sum |

---

## Design Flow

1. Design the 16-bit adder in Verilog HDL.
2. Add the VIO IP from the Vivado IP Catalog.
3. Configure two 16-bit output probes for inputs **A** and **B**.
4. Add the ILA IP and configure probes for **A**, **B**, and **Sum**.
5. Connect the VIO outputs to the adder inputs.
6. Connect the adder output to both the VIO input probe and the ILA.
7. Run Synthesis and Implementation.
8. Generate the Bitstream.
9. Program the Basys 3 FPGA.
10. Open the Vivado Hardware Manager.
11. Apply different values to **A** and **B** using the VIO.
12. Observe and verify the resulting **Sum** using the ILA waveform viewer.

---

## Applications

- FPGA design verification
- Vivado Debug IP learning
- Arithmetic circuit validation
- RTL debugging
- Digital system testing
- Embedded hardware development

---

## Tools Used

- Verilog HDL
- Xilinx Vivado Design Suite
- Vivado Virtual Input/Output (VIO)
- Vivado Integrated Logic Analyzer (ILA)
- Digilent Basys 3 FPGA
- Xilinx Artix-7 XC7A35T FPGA

---

## Future Enhancements

- 32-bit and 64-bit adder implementations
- Arithmetic Logic Unit (ALU)
- Adder/Subtractor design using VIO control
- Carry Look-Ahead Adder (CLA)
- Performance comparison of different adder architectures

---


---

**Developed using Verilog HDL, Xilinx Vivado, the VIO & ILA Debug IPs, and the Digilent Basys 3 featuring the Xilinx Artix-7 XC7A35T FPGA.**
