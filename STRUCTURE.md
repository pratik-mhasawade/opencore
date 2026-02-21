opencore/
│
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── CHANGELOG.md
│
├── docs/                # Learning + explanations
│   ├── overview.md
│   ├── roadmap.md
│   ├── beginner/
│   ├── advanced/
│
├── spec/                # ISA + design specification
│   ├── isa.md
│   ├── instruction_format.md
│   ├── memory_model.md
│
├── arch/                # Microarchitecture
│   ├── datapath.png
│   ├── control_fsm.md
│   ├── pipeline.md
│
├── model/               # Behavioral / TLM model
│   ├── python/
│   │   ├── cpu_model.py
│   │   ├── memory_model.py
│   │
│   └── systemverilog/
│       ├── behavioral_cpu.sv
│
├── rtl/                 # Synthesizable RTL (MAIN DESIGN)
│   ├── core/
│   │   ├── opencore_top.v
│   │   ├── opencore_datapath.v
│   │   ├── opencore_control.v
│   │
│   ├── blocks/
│   │   ├── alu.v
│   │   ├── register_file.v
│   │   ├── pc.v
│   │   ├── flags.v
│   │
│   ├── memory/
│   │   ├── instruction_rom.v
│   │   ├── data_memory.v
│   │
│   └── include/
│       ├── defines.vh
│
├── mem/                 # Program & data memory
│   ├── program.mem
│   ├── data.mem
│
├── verification/        # Verification environment
│   ├── tb/
│   │   ├── tb_top.sv
│   │
│   ├── tests/
│   │   ├── test_add.sv
│   │   ├── test_load_store.sv
│   │
│   ├── assertions/
│   │   ├── alu_assertions.sv
│   │
│   └── reference_model/
│       ├── golden_model.py
│
├── synthesis/           # Synthesis scripts & reports
│   ├── yosys/
│   │   ├── synth.ys
│   │   ├── reports/
│   │
│   ├── constraints/
│       ├── timing.sdc
│
├── gls/                 # Gate-level simulation
│   ├── netlist/
│   ├── tb_gls.sv
│
├── dft/                 # DFT (concept/demo)
│   ├── scan_chain.md
│   ├── scan_insertion.v
│
├── scripts/             # Automation
│   ├── run_sim.sh
│   ├── run_synth.sh
│
└── .github/
    ├── ISSUE_TEMPLATE/
    ├── PULL_REQUEST_TEMPLATE.md
