`include "alu.v"
`timescale 1ns/1ps

module tb_alu_4bit;

    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [3:0] Result;
    wire Carry;

    // DUT
    alu_4bit uut (
        .A(A), .B(B), .ALU_Sel(ALU_Sel),
        .Result(Result), .Carry(Carry)
    );

    initial begin
        $display("Time | A    | B    | ALU_Sel | Result | Carry");
        $display("------------------------------------------------");

        A = 4'b1010; B = 4'b0101;

        ALU_Sel = 3'b000; #10; // Add
        ALU_Sel = 3'b001; #10; // Sub
        ALU_Sel = 3'b010; #10; // AND
        ALU_Sel = 3'b011; #10; // OR
        ALU_Sel = 3'b100; #10; // XOR

        $stop;
    end

    initial begin
        $monitor("%0t | %b | %b | %b      | %b   | %b", 
                 $time, A, B, ALU_Sel, Result, Carry);
    end

endmodule
