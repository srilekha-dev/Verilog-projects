`include "sync_count.v"
module tb_sync_counter_4bit;

reg CLK, Reset;
wire [3:0] Q;

// Instantiate Counter
sync_counter_4bit uut (.CLK(CLK), .Reset(Reset), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1;
    #20 Reset = 0;

    // Run counter for some cycles
    #200;

    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t CLK=%b Reset=%b Count=%b", $time, CLK, Reset, Q);
end

endmodule

