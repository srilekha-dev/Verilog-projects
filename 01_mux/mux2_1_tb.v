`include "mux2_1.v"

module mux2_1_tb();
reg a, b, s;
wire y;

mux2_1 uut (.a(a), .b(b), .s(s), .y(y));

initial begin
    a=0; b=0; s=0; #10;
    a=0; b=0; s=1; #10;
    a=0; b=1; s=0; #10;
    a=0; b=1; s=1; #10;
    a=1; b=0; s=0; #10;
    a=1; b=0; s=1; #10;
    a=1; b=1; s=0; #10;
    a=1; b=1; s=1; #10;
end

initial begin
    $monitor("a=%b b=%b s=%b y=%b", a, b, s, y);
end
endmodule

