`include "arr_mul.v"
`timescale 1ns/1ps
module array_multiplier_4bit_tb;

    reg  [3:0] A, B;
    wire [7:0] P;

    // DUT instantiation
    array_multiplier_4bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        // Monitor signals
        $monitor("Time=%0t | A=%b (%0d) | B=%b (%0d) | P=%b (%0d)",
                 $time, A, A, B, B, P, P);

        // Test case 1: 11 * 5 = 55
        A = 4'b1011;  // 11
        B = 4'b0101;  // 5
        #10;

        // Test case 2: 15 * 15 = 225
        A = 4'b1111;  // 15
        B = 4'b1111;  // 15
        #10;

        // Test case 3: 9 * 3 = 27
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3
        #10;

        $stop;
    end

endmodule

