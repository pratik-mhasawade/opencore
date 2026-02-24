# 🧠 8-bit RISC Processor (Phase 0 - Stable RTL Baseline)

A custom-designed **8-bit RISC processor** implemented in Verilog HDL, built with a focus on **clean RTL design, modular architecture, and FPGA compatibility**.
This project is being progressively developed toward a **pipelined processor with hazard handling**, following industry-standard design practices.

---

# 📌 Project Overview

This processor implements a **minimal instruction set architecture (ISA)** using an **accumulator-based datapath**.
The current version establishes a **correct and synthesizable baseline**, ensuring proper data flow, memory behavior, and control logic.

---

# 🚀 Current Version: Phase 0 (Stable Baseline)

This phase focuses on:

* Functional correctness
* Hardware-realistic design
* Clean project organization

---

# 🏗️ Architecture Summary

| Feature         | Description                                  |
| --------------- | -------------------------------------------- |
| Data Width      | 8-bit                                        |
| Address Width   | 5-bit (32 locations)                         |
| Architecture    | Harvard (separate instruction & data memory) |
| Execution Model | Single-cycle                                 |
| Datapath        | Accumulator-based                            |

---

# ⚙️ Instruction Set Architecture (ISA)

| Opcode | Instruction | Operation               |
| ------ | ----------- | ----------------------- |
| `001`  | LOAD        | ACC ← MEM[address]      |
| `010`  | STORE       | MEM[address] ← ACC      |
| `011`  | ADD         | ACC ← ACC + MEM         |
| `100`  | SUB         | ACC ← ACC - MEM         |
| `101`  | JMP         | PC ← address            |
| `110`  | JZ          | Jump if Zero Flag = 1   |
| `111`  | OUT         | Output ACC (simulation) |

---

# 🔧 Key Improvements in Phase 0

## ✅ 1. Corrected LOAD Datapath

* Introduced a **MUX before accumulator input**
* Ensures correct operation:

  * Arithmetic → ALU → ACC
  * LOAD → Memory → ACC

---

## ✅ 2. Synchronous Data Memory (FPGA-Ready)

* Converted memory read to **clocked (posedge) behavior**
* Matches real FPGA BRAM characteristics
* Introduces realistic memory latency

---

## ✅ 3. Zero Flag Register

* Added dedicated **flags module**
* Eliminates combinational dependency on ACC
* Enables clean and scalable branch logic (`JZ`)

---

## ✅ 4. External Memory Initialization

* Replaced hardcoded ROM with `$readmemh`
* Program and data are loaded from external files:

  * `mem/program.mem`
  * `mem/data.mem`
* Improves flexibility and scalability

---

## ✅ 5. Clean Repository Structure (Industry Standard)

The project is reorganized to separate RTL, memory, and documentation:

```
risc-cpu/
│
├── src/        # RTL design files
│   ├── top.v
│   ├── pc.v
│   ├── instruction_rom.v
│   ├── data_memory.v
│   ├── alu.v
│   ├── accumulator.v
│   ├── control_fsm.v
│   ├── flags.v
│   ├── uart_output.v
│
├── mem/        # Program and data memory files
│   ├── program.mem
│   ├── data.mem
│
#├── docs/       # Architecture diagrams and notes
#│   ├── datapath.pdf
#│   ├── fsm.md
#│
└── README.md
```

---

# 🧩 Core Modules

| Module              | Function                                         |
| ------------------- | ------------------------------------------------ |
| `top.v`             | Top-level integration of all components          |
| `pc.v`              | Program Counter with sequential and jump logic   |
| `instruction_rom.v` | Instruction memory (file-based initialization)   |
| `data_memory.v`     | Synchronous data memory                          |
| `alu.v`             | Arithmetic Logic Unit                            |
| `accumulator.v`     | ACC register (central datapath element)          |
| `control_fsm.v`     | Instruction decode and control signal generation |
| `flags.v`           | Zero flag generation                             |
| `uart_output.v`     | Simulation-based output                          |

---

# 🔄 Datapath Flow (Simplified)

```
Instruction ROM → Control FSM → Datapath
                         ↓
        -----------------------------------
        |        |            |           |
      ALU     Memory       ACC        Flags
        |        |            |
        ---------+------------+
                  ↓
               Output
```

---

# 🧪 Simulation

Supported simulators:

* Icarus Verilog
* ModelSim
* Vivado Simulator

### Example (Icarus Verilog)

```bash
iverilog -o cpu.out src/*.v
vvp cpu.out
```

---

# ⚠️ Current Limitations

* Single-cycle execution (no timing separation)
* Accumulator-based design (no register file)
* No pipelining or hazard handling
* UART output is simulation-only (`$display`)

---

# 🚀 Roadmap

## 🔜 Phase 1: Multi-Cycle CPU

* FSM-based execution (Fetch, Decode, Execute)

## 🔜 Phase 2: Register File Architecture

* Replace accumulator with general-purpose registers

## 🔜 Phase 3: Pipelined CPU

* 5-stage pipeline (IF, ID, EX, MEM, WB)
* Forwarding + hazard detection

## 🔜 Phase 4: FPGA Implementation

* Real UART transmitter
* On-board testing

---

# 🎯 Key Learning Outcomes

* RTL design and debugging
* Datapath vs control separation
* FPGA-aware memory design
* Instruction set design fundamentals
* Structured hardware project development

---

# 👨‍💻 Author

**Pratik Mhasawade**
VLSI & Computer Architecture Enthusiast

---

# ⭐ Notes

This project is part of a structured journey toward building a **fully pipelined RISC processor**, aligned with real-world processor design methodologies used in industry.
