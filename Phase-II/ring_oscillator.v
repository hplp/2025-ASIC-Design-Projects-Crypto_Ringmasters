// Simulated Ring Oscillator A (faster)
module ring_oscillator_A(
    output reg osc_out
);
    initial osc_out = 0;
    always #2 osc_out = ~osc_out;  // ~250 MHz
endmodule

// Simulated Ring Oscillator B (slower)
module ring_oscillator_B(
    output reg osc_out
);
    initial osc_out = 0;
    always #8 osc_out = ~osc_out;  // ~62.5 MHz
endmodule
