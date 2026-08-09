# Ring Counter Using Verilog HDL

## 📌 Project Overview

This project implements a 4-bit Ring Counter using Verilog HDL.

A Ring Counter is a type of shift register in which the output of the
last flip-flop is connected back to the input of the first flip-flop.

In this project, a single logic HIGH (`1`) circulates through four
flip-flops.

The sequence is:

0001 → 0010 → 0100 → 1000 → 0001

---

## 🎯 Objectives

- Design a 4-bit Ring Counter using Verilog HDL
- Understand the operation of shift registers
- Implement synchronous counter operation
- Apply reset functionality
- Verify the design using a Verilog testbench
- Analyze the output using simulation waveforms

---

## 🧠 What is a Ring Counter?

A Ring Counter is a digital counter consisting of a group of
flip-flops connected as a shift register.

The output of the last flip-flop is connected to the input of the
first flip-flop.

For a 4-bit Ring Counter, the counter follows this sequence:

    0001
    0010
    0100
    1000
    0001

Only one bit is HIGH at a time.

---

## ⚙️ Design Specifications

| Parameter | Value |
|-----------|-------|
| Counter Type | Ring Counter |
| Number of Bits | 4 |
| HDL | Verilog |
| Clock | Positive Edge |
| Reset | Active High |
| Initial State | 0001 |

---

## 🔌 Inputs

### `clk`

Clock signal used to control the counter.

### `reset`

Active-high reset signal.

When reset is HIGH, the counter is initialized to:

```text
0001