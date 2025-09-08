module divider_4bit (
    input  [3:0] A,   // Dividend
    input  [3:0] B,   // Divisor
    output [3:0] Q,   // Quotient
    output [3:0] R    // Remainder
);
    assign Q = A / B;
    assign R = A % B;
endmodule
