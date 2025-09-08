`include "arr_div.v"
module divider_4bit_tb;
    reg  [3:0] A, B;
    wire [3:0] Q, R;

    divider_4bit uut (.A(A), .B(B), .Q(Q), .R(R));

    initial begin
        $monitor("Time=%0t A=%d B=%d | Q=%d R=%d", $time, A, B, Q, R);

        // Test cases
        A=5;  B=2;  #10;
        A=15; B=3;  #10;
        A=10; B=4;  #10;
        A=7;  B=3;  #10;
        A=9;  B=5;  #10;

        $stop;
    end
endmodule

