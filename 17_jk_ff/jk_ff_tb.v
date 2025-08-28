`include "jk_ff.v"

module jk_ff_tb();
reg J, K, CLK, Reset;
wire Q;

// Instantiate JK Flip-Flop
jk_ff uut (.J(J), .K(K), .CLK(CLK), .Reset(Reset), .Q(Q));

// Clock generation
always #10 CLK = ~CLK;

initial begin
    // Initialize
    CLK = 0; Reset = 1; J = 0; K = 0;
    #20 Reset = 0;

    // Apply random inputs
    repeat(10) begin
        {J, K} = $random % 4;
        #20;
    end

    $finish;
end

endmodule
