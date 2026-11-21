# Project notes and limitations

This repository is an organized record of the **Spring 2023** Master's ASIC Design course project, not a revised or recently reverified implementation.

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

## Sharing and licensing

The original archive contains an `18m.v` file with the wording **CONFIDENTIAL AND PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.** That file is excluded, and its licensing rights have not been established. The DC gate-level netlist includes `` `include "18m.v" ``; it is also excluded from the public package. Both files remain only in the original user-provided ZIP.

**Repository maintained by: Dhavala Bhat.** The original work was a collaborative course project. No open-source license is assumed or included, and the original files retain their archival attribution.
