// Top-level project module
module project (
    input  wire clk,
    input  wire rst,
    output wire puf_bit_out
);

    wire osc_out_A, osc_out_B;
    wire [31:0] count_A, count_B;
    wire puf_bit;
    wire enable_ro, start_count, done;

    // Ring Oscillators (always enabled in sim)
    ring_oscillator_A ro_A (.osc_out(osc_out_A));
    ring_oscillator_B ro_B (.osc_out(osc_out_B));

    // Frequency Counters
    freq_counter counter_A (
        .clk(clk),
        .rst(rst),
        .osc_in(osc_out_A),
        .count(count_A)
    );

    freq_counter counter_B (
        .clk(clk),
        .rst(rst),
        .osc_in(osc_out_B),
        .count(count_B)
    );

    // Comparator
    comparator comp (
        .count_A(count_A),
        .count_B(count_B),
        .puf_bit(puf_bit)
    );

    // FSM to control timing
    control_fsm fsm (
        .clk(clk),
        .rst(rst),
        .enable_ro(enable_ro),      // currently unused
        .start_count(start_count),  // currently unused
        .done()                     // not used in this version
    );

    assign puf_bit_out = puf_bit;

endmodule
