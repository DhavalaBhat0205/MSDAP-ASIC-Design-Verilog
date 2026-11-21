// Added for convenient command-line execution of the archived testbench.
// Original testbench is preserved unchanged in tb.v.
`timescale 1ns / 1ps
module tb_runner;
  tb original_tb();

  initial begin
    wait (original_tb.count >= 6395);
    #1;
    $display("Original testbench completed %0d output samples.", original_tb.count);
    $finish;
  end

  // Prevent an unlimited simulation if the archived testbench never completes.
  initial begin
    #500000000;
    $display("TIMEOUT: simulation reached 500 ms of simulation time.");
    $finish;
  end
endmodule
