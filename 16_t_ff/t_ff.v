module t_ff (
    input T, CLK, Reset,
    output reg Q
);

always @(posedge CLK or posedge Reset) begin
    if (Reset)
        Q <= 0;           // Reset clears the output
    else if (T)
        Q <= ~Q;          // Toggle when T = 1
    else
        Q <= Q;           // Hold when T = 0
end

endmodule
