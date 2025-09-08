module array_multiplier_4bit (
    input  [3:0] A, B,
    output [7:0] P
);

    wire [3:0] pp0, pp1, pp2, pp3;  

    // Partial products
    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    // Proper shifting of partial products
    assign P = (pp0 << 0) +
               (pp1 << 1) +
               (pp2 << 2) +
               (pp3 << 3);

endmodule

