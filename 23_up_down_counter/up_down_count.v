module up_down_counter (
    input CLK, Reset, mode,     // mode: 1=UP, 0=DOWN
    output reg [3:0] Q
);

    always @(posedge CLK or posedge Reset) begin
        if (Reset)
            Q <= 4'b0000;  // Reset counter
        else begin
            if (mode)
                Q <= Q + 1; // UP counting
            else
                Q <= Q - 1; // DOWN counting
        end
    end

endmodule
