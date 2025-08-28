`include "d_ff.v"

module d_ff_tb();

reg clk,rst,d;
wire q,qn;

d_ff RTL(
           .clk(clk),
           .rst(rst),
           .d(d),
           .q(q),
           .qn(qn)
           );

//clock generation
always #5 clk=~clk;
initial clk=1;
//reset generation
initial begin
rst=0;
#10;
rst=1;
#30;
rst=0;
end

initial begin

d=1'bx;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
d=1'b0;
#10;
d=1'b1;
#10;
end


initial
#300 $finish;
endmodule
