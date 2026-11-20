#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v iverilog >/dev/null 2>&1 || ! command -v vvp >/dev/null 2>&1; then
  echo "Icarus Verilog (iverilog and vvp) is required." >&2
  exit 1
fi
mkdir -p build
iverilog -g2012 -s tb_runner -o build/msdap_sim.vvp tb_runner.v tb.v ../rtl/*.v
vvp build/msdap_sim.vvp
printf '
Output (if generated): %s/output2.txt
' "$PWD"
