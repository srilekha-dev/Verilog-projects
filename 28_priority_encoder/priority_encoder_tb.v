`include "priority_encoder.v"
`timescale 1ns/1ps

module tb_priority_encoder_8to3;

    reg [7:0] I;
    wire [2:0] Y;
    wire Valid;

    // DUT
    priority_encoder_8to3 uut (
        .I(I),
        .Y(Y),
        .Valid(Valid)
    );

    initial begin
        $display("Time | Input       | Y   | Valid");
        $display("---------------------------------");

        I = 8'b00000000; #10;  // No input
        I = 8'b00000001; #10;  // I0 active
        I = 8'b00000100; #10;  // I2 active
        I = 8'b00001000; #10;  // I3 active
        I = 8'b10000000; #10;  // I7 active (highest)
        I = 8'b11000000; #10;  // I7 & I6 → I7 dominates
        I = 8'b00101000; #10;  // I5 & I3 → I5 dominates
        I = 8'b00010010; #10;  // I4 & I1 → I4 dominates

        $stop;
    end

    initial begin
        $monitor("%0t | %b | %b | %b", $time, I, Y, Valid);
    end

endmodule

