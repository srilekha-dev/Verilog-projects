module mux2_1 (input a, input b, input s, output reg y);

always @(*) begin
    if (s)
        y = a;
    else
        y = b;
end

endmodule
