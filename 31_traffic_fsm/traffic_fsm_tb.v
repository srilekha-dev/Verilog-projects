`include "traffic_fsm.v"
`timescale 1ns/1ps
module tb_traffic_light;

    reg clk, rst;
    wire [2:0] NS, EW;

    traffic_light_controller uut (.clk(clk), .rst(rst), .NS(NS), .EW(EW));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1;
        #10 rst = 0;

        #200 $stop; // Run for 200ns
    end

    initial begin
        $monitor("Time=%0t | NS(RYG)=%b | EW(RYG)=%b", $time, NS, EW);
    end

endmodule

