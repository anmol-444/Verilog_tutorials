Verilog Tutorials
=================

A collection of small Verilog examples and testbenches to help beginners learn and practise Verilog simulation using Icarus Verilog and GTKWave on Windows PowerShell.

Structure
---------
Each folder contains a small example (`design.v` or similar) and a `testbench.v` that demonstrates the module's behavior and writes a VCD waveform (e.g. `dump.vcd`).

Folders and quick summaries
--------------------------
- blocking_non_blocking/
  - Demonstrates non-blocking vs blocking assignments in sequential logic (clocked). See `testbench.v` and `design.v`.

- branched_inst/
  - Example using `if-else` or branched (conditional) statements to drive outputs from inputs.

- combinational/
  - Simple combinational logic example (drives an LED output from several inputs).

- concatenation/
  - Shows concatenation of vectors and building larger buses from smaller signals.

- decoder/
  - 2-to-4 decoder with enable signal. Drives one-hot outputs based on address input.

- encoder/
  - Priority or simple encoder converting multiple inputs to smaller code outputs.

- flip-flop/
  - D flip-flop with asynchronous reset and clock; demonstrates edge-triggered storage.

- gates/
  - Basic logic gates (AND/OR/XOR/etc.) with a testbench exercising input combinations.

- halfAdder/
  - Half adder example (sum and carry) with test vectors.

- modules/
  - Top-level module that instantiates multiple submodules (module hierarchy example).

- multiplexer/
  - Multiplexer examples showing 2:1 multiplexing with vectors.

- mux_4x1/
  - 4:1 multiplexer (case/select style) with multiple inputs.

- parameters/
  - Parameterized module example (e.g., configurable width adder) showing the `parameter` usage.

- Sequential_circuit/
  - Small sequential circuit (stateful logic) demonstrating clock and reset behavior.

- up_counter/
  - Example up-counter producing a multi-bit count (includes `Counter.vcd`).

How to run simulations (Windows PowerShell)
-------------------------------------------
These instructions assume you have Icarus Verilog (`iverilog`) and GTKWave (`gtkwave`) installed and on your PATH. If not installed, download from:
- Icarus Verilog: http://iverilog.icarus.com/
- GTKWave: http://gtkwave.sourceforge.net/

Open PowerShell and change to the repository root:

```powershell
cd "C:\Users\anmol\OneDrive\Desktop\verilog"
```

To compile a single example and run it (example: `gates`):

```powershell
cd gates
iverilog -o out.vvp design.v testbench.v
vvp out.vvp
# This will create dump.vcd in the same folder
gtkwave dump.vcd
```

General pattern (one-liner):

```powershell
cd <folder>
iverilog -o out.vvp design.v testbench.v ; vvp out.vvp ; gtkwave dump.vcd
```

Notes and tips
--------------
- Some folders name the generated VCD differently (for example `Counter.vcd` in `up_counter/`). Check the `testbench.v` in the folder to find the exact filename written by `$dumpfile`.
- If your design file has a different name or there are multiple source files (e.g., `module1.v`, `module2.v`), include them all when compiling: `iverilog -o out.vvp module1.v module2.v design.v testbench.v`.
- Use `$finish;` in testbenches to stop the simulation after tests complete.

Contributing
------------
Feel free to add more examples, improve docstrings inside the Verilog files, or add higher-level projects. If you add files, update this README with a short summary and example run commands.

License
-------
Add a LICENSE file if you want to make these examples public under a specific license.

Acknowledgements
----------------
Created as a beginner-friendly collection of Verilog examples for hands-on learning and GitHub upload.
