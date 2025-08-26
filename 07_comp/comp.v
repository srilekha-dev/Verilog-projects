module comp (
    input [1:0] A, B,
    output reg AeqB, AgtB, AltB
);

always @(*) begin
    if (A == B) begin
        AeqB = 1; AgtB = 0; AltB = 0;
    end
    else if (A > B) begin
        AeqB = 0; AgtB = 1; AltB = 0;
    end
    else begin
        AeqB = 0; AgtB = 0; AltB = 1;
    end
end

endmodule

