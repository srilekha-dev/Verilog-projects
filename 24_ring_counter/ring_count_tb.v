`include "ring_count.v"
`timescale 1ns/1ps

module tb_ring_counter;

    reg CLK, Reset;
    wire [3:0] Q;

    // DUT instance
    ring_counter uut (
        .CLK(CLK),
        .Reset(Reset),
        .Q(Q)
    );

    // Clock generation (10ns period)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Stimulus
    initial begin
        // Apply Reset
        Reset = 1;
        #10 Reset = 0;

        // Run simulation
        #100 $stop;
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | Reset=%b | Q=%b", $time, Reset, Q);
    end

endmodule
