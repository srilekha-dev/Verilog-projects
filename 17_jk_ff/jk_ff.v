module jk_ff (
    input J, K, CLK, Reset,
    output reg Q
);

always @(posedge CLK or posedge Reset) begin
    if (Reset)
        Q <= 0;                 // Active high reset
    else begin
        case ({J,K})
            2'b00: Q <= Q;      // No change
            2'b01: Q <= 0;      // Reset
            2'b10: Q <= 1;      // Set
            2'b11: Q <= ~Q;     // Toggle
        endcase
    end
end

endmodule
