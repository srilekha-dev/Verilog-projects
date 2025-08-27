`include "jk_latch.v"

module jk_latch_tb();

reg en,j,k;
wire q,qn;

jk_latch dut( 
              .en(en),
              .j(j),
              .k(k),
              .q(q),
              .qn(qn)
              );

initial begin
en=0;
#10;
en=1;
end

initial begin
repeat(20) begin
{j,k}=$random;
#10;
end
end

initial 
 #200 $finish;
endmodule
