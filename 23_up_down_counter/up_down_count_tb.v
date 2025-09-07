`include "up_down_count.v"
module tb_up_down_counter;

reg CLK, Reset, mode;
wire [3:0] Q;

// Instantiate Counter
up_down_counter uut (.CLK(CLK), .Reset(Reset), .mode(mode), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1; mode = 1;
    #15 Reset = 0;

    // Count UP for some cycles
    mode = 1;
    #100;

    // Switch to DOWN
    mode = 0;
    #100;

    // Back to UP
    mode = 1;
    #100;

    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t CLK=%b Reset=%b Mode=%b Count=%b",
              $time, CLK, Reset, mode, Q);
end

endmodule

