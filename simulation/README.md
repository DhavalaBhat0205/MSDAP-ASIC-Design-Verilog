# Simulation

- `tb.v`: original student-written stimulus and output-recording testbench (**unchanged**).
- `data2.txt`: original hex input vectors (**unchanged**).
- `tb_runner.v`: additional wrapper to stop the original testbench after its configured count reaches 6,395 (or after a simulation-time safeguard).
- `run.sh`: optional build/run helper for Icarus Verilog.

From this folder, run `bash run.sh` after installing Icarus Verilog. The testbench writes `output2.txt` here; output is ignored by Git.

**Important:** This wrapper and run script were not executed in the packaging environment. There is no automatic pass/fail check against a golden output. The testbench also uses clock delays that differ from synthesis clock periods; see `../docs/PROJECT_NOTES.md`.
