`include "b2g_conv.v"
`timescale 1ns/1ps

module tb_binary_to_gray;

    parameter N = 4;
    reg [N-1:0] binary_in;
    wire [N-1:0] gray_out;

    integer i; // Declare loop variable outside

    // DUT instantiation
    binary_to_gray #(N) uut (
        .binary_in(binary_in),
        .gray_out(gray_out)
    );

    // Stimulus
    initial begin
        $display("Time | Binary | Gray");
        $display("---------------------");

        // Apply all binary inputs (0 to 15 for 4-bit)
        for (i = 0; i < 16; i = i + 1) begin
            binary_in = i;
            #10; // Wait 10ns for output
            $display("%0t | %b | %b", $time, binary_in, gray_out);
        end

        $stop; // End simulation
    end

endmodule

