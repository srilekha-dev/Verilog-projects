module alu_4bit (
    input  [3:0] A, B,      // 4-bit operands
    input  [2:0] ALU_Sel,   // Operation selector
    output reg [3:0] Result,// 4-bit Result
    output reg Carry        // Carry/borrow flag
);

    always @(*) begin
        case (ALU_Sel)
            3'b000: {Carry, Result} = A + B;   // Addition
            3'b001: {Carry, Result} = A - B;   // Subtraction
            3'b010: begin Result = A & B; Carry = 0; end // AND
            3'b011: begin Result = A | B; Carry = 0; end // OR
            3'b100: begin Result = A ^ B; Carry = 0; end // XOR
            default: begin Result = 4'b0000; Carry = 0; end
        endcase
    end
endmodule
