`include "g2b_conv.v"
`timescale 1ns/1ps

module tb_gray_to_binary;

    parameter N = 4;
    reg [N-1:0] gray_in;
    wire [N-1:0] binary_out;

    integer i;

    // DUT instantiation
    gray_to_binary #(N) uut (
        .gray_in(gray_in),
        .binary_out(binary_out)
    );

    initial begin
        $display("Time | Gray | Binary");
        $display("---------------------");

        // Apply all Gray inputs (0 to 15 for 4-bit)
        for (i = 0; i < 16; i = i + 1) begin
            gray_in = i;
            #10;
            $display("%0t | %b | %b", $time, gray_in, binary_out);
        end

        $stop;
    end

endmodule

