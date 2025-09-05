`include "up_counter.v"
module tb_ripple_counter_up;

reg CLK, Reset;
wire [3:0] Q;

// Instantiate Counter
ripple_counter_up uut (.CLK(CLK), .Reset(Reset), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1;
    #15 Reset = 0;

    // Run for some cycles
    #300;

    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t CLK=%b Reset=%b Count=%b", $time, CLK, Reset, Q);
end

endmodule

