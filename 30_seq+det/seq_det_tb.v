`include "seq_det.v"
`timescale 1ns/1ps
module tb_seq_detector;

    reg clk, rst, x;
    wire z;

    seq_detector_1011 uut (.clk(clk), .rst(rst), .x(x), .z(z));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; x = 0;
        #10 rst = 0;

        // Input stream = 1101011011
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;

        #20 $stop;
    end

    initial begin
        $monitor("Time=%0t | x=%b | state_detected=%b", $time, x, z);
    end

endmodule

