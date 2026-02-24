# 🚀 OpenCore

**OpenCore — An open-source processor design platform from specification to RTL, verification, and beyond.**

<p align="center">
  <i>Building a complete CPU design journey: Spec → Architecture → TLM → RTL → Verification → Synthesis → GLS → DFT</i>
</p>

---

##  Overview

**OpenCore** is a structured, educational, and extensible open-source project focused on **processor design and frontend VLSI flow**.
It starts from a simple 8-bit CPU and evolves step-by-step into a **modern pipelined architecture**, while demonstrating **industry-relevant design methodologies**.

This project is designed to:

*  Help students learn CPU design from first principles
*  Bridge the gap between theory and RTL implementation
*  Demonstrate a complete frontend design flow used in industry
*  Encourage open-source collaboration in hardware design

---

##  Design Flow Coverage

OpenCore aims to cover the **complete frontend design stack**:

```
Specification → Architecture → Behavioral Model (TLM)
        ↓
RTL Design → Verification → Synthesis
        ↓
Gate-Level Simulation (GLS) → DFT (Conceptual)
```

---

##  Project Status

 Actively under development
 Phase 0: Stable single-cycle CPU (baseline RTL)
 Phase 1: Multi-cycle FSM-based CPU

---

##  Key Features

* 8-bit RISC-style processor (initial version)
* Modular RTL design (Verilog)
* File-based instruction & data memory
* Zero-flag based branching
* Clean and scalable architecture
* Designed for FPGA compatibility

---

## 📦 Repository Structure

```
opencore/
│
├── src/        # RTL design files
├── mem/        # Program & data memory
├── docs/       # Architecture, diagrams, notes
├── spec/       # ISA and design specifications (planned)
├── rtl/        # Advanced RTL versions (planned)
├── verification/ # Testbenches (planned)
│
└── README.md
```

---

##  Badges

![Status](https://img.shields.io/badge/status-active--development-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-orange)
![Domain](https://img.shields.io/badge/domain-VLSI%20%7C%20Computer%20Architecture-purple)
![Open Source](https://img.shields.io/badge/open--source-yes-brightgreen)

---

## 🎯 Vision

> To build a **transparent, end-to-end processor design platform** that helps learners understand how real CPUs are designed — from concept to implementation.

---

## 🤝 Contributing

Contributions are welcome!
This project is designed to be beginner-friendly and collaborative.

* Add new instructions
* Improve verification
* Enhance documentation
* Build pipeline stages

 See `CONTRIBUTING.md` (coming soon)

---

##  Support

If you find this project useful:

* ⭐ Star the repository
* 🍴 Fork and contribute
* 📢 Share with peers

---

## 👨‍💻 Author

**Pratik Mhasawade**
VLSI Enthusiast

---

##  License

This project is licensed under the **MIT License**.
