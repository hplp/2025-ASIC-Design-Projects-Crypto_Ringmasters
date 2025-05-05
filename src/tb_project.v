`timescale 1ns / 1ps

module tb_project;

  // Testbench signals
  reg clk;
  reg rst;
  wire puf_bit_out;
  wire led_on;

  // Instantiate the DUT (Design Under Test)
  project uut (
    .clk(clk),
    .rst(rst),
    .puf_bit_out(puf_bit_out),
    .led_on(led_on)
  );

  // Clock generation: 10ns period => 100MHz
  always #5 clk = ~clk;

  initial begin
    // Initial values
    clk = 0;
    rst = 1;     // Assert reset
    #20;
    rst = 0;     // Deassert reset

    // Wait for system to run
    #1000;

    // End of simulation
    $display("Simulation completed.");
    $stop;
  end

  // Monitor outputs for debugging
  initial begin
    $monitor("Time = %0t | puf_bit_out = %b | led_on = %b", $time, puf_bit_out, led_on);
  end

endmodule
