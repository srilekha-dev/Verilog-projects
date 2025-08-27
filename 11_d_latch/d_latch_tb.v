`include "d_latch.v"

module d_latch_tb();

reg en,d;
wire q,qn;

d_latch DUT(.en(en),
            .d(d),
            .q(q),
            .qn(qn)
            );

initial begin
en=0;
#10;
en=1;
end

initial begin
repeat(20)
d=0;
#20;
d=1;
#50;
d=0;
#50;
d=1;
end


initial
#200 $finish;
endmodule
