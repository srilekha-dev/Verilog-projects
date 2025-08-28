module sipo_shift_register (
    input D, CLK, Reset,
    output reg [3:0] Q
);

always @(posedge CLK or posedge Reset) begin
    if (Reset)
        Q <= 4'b0000;             // Clear register
    else
        Q <= {Q[2:0], D};         // Shift left and insert new bit D
end

endmodule
