module full_adder (
    input A, B, Cin,
    output Sum, Cout
);

assign Sum  = A ^ B ^ Cin;                  // XOR for sum
assign Cout = (A & B) | (B & Cin) | (A & Cin); // Majority function

endmodule
