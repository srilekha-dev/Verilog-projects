`include "shift_register.v"

module sipo_shift_register_tb();

reg D, CLK, Reset;
wire [3:0] Q;

// Instantiate SIPO Shift Register
sipo_shift_register uut (.D(D), .CLK(CLK), .Reset(Reset), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1; D = 0;
    #20 Reset = 0;

    // Apply serial data sequence = 1011
    D = 1; #20;
    D = 0; #20;
    D = 1; #20;
    D = 1; #20;

    $finish;
end

endmodule

