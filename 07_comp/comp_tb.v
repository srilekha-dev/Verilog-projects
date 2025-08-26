`include "comp.v"

module comp_tb();
    reg [1:0] A, B;
    wire AeqB, AgtB, AltB;

    comp uut (.A(A), .B(B), .AeqB(AeqB), .AgtB(AgtB), .AltB(AltB));

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | AeqB=%b | AgtB=%b | AltB=%b", 
                  $time, A, B, AeqB, AgtB, AltB);

        A=2'b00; B=2'b00; #10;
        A=2'b01; B=2'b00; #10;
        A=2'b10; B=2'b11; #10;
        A=2'b11; B=2'b01; #10;
        A=2'b11; B=2'b11; #10;

        $finish;
    end
endmodule

