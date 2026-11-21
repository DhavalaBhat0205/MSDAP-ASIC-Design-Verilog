# Project notes and limitations

## Original implementation

- The 11 original Verilog files are preserved byte-for-byte: 10 RTL modules and `tb.v`.
- The original stimulus file `data2.txt` is unchanged.
- Synthesis reports and constraints are archived. Paths into student/department tool installations and the synthesis host name were masked in the text reports only; the numeric results are unchanged.
- The report and presentation retain their technical content and the names of both authors. Student identifier numbers were removed before public sharing.
- The images in `images/` were extracted from the original report.

## Reported results and limits

- Design Compiler reports show timing slack was met **for the listed synthesis constraints**; this does not demonstrate post-placement timing closure.
- `Sclk` is constrained to a 39.03 ns period (approximately 25.62 MHz) in `MSDAP.sdc`, whereas the report's system-level discussion targets 26.88 MHz. Both have been kept as originally documented.
- The original testbench toggles each clock every `Sclk_Time` / `Dclk_Time` delay, producing full simulated periods twice those parameter values; this differs from the nominal periods in the synthesis SDC. The original source is left unchanged for archival accuracy.
- The original testbench records output data but does not contain an automated golden-reference comparison. Its `if (count==6394) $finish;` is inside a one-time initial block, so it does not implement a reliable completion trigger. A new wrapper supplies a termination condition for command-line use; this wrapper has not been tested here.
- The tool-generated power report identifies unannotated primary-input/sequential activity, limiting the certainty of the power estimate.
- No physical implementation files or independently verified post-route results were supplied in the archive. Do not describe this repository as a tapeout or completed RTL-to-GDSII flow.
