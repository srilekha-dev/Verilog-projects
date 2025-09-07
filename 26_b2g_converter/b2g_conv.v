module binary_to_gray #(parameter N = 4) (
    input  [N-1:0] binary_in,
    output [N-1:0] gray_out
);

    assign gray_out = binary_in ^ (binary_in >> 1);

endmodule
