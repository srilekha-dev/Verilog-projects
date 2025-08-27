`include "sr_latch.v"

module sr_latch_tb();

reg en,s,r;
wire q,qn;

sr_latch dut( 
              .en(en),
              .s(s),
              .r(r),
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
{s,r}=$random;
#10;
end
end

initial 
 #200 $finish;
endmodule
