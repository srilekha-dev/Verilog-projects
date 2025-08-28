`include "t_ff.v"

module t_ff_tb();

reg T, CLK, Reset;
wire Q;

// Instantiate T Flip-Flop
t_ff uut (.T(T), .CLK(CLK), .Reset(Reset), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1; T = 0;
    #20 Reset = 0;

    // Apply random values of T
    repeat(10) begin
        T = $random % 2;
        #20;
    end

    $finish;
end

endmodule

