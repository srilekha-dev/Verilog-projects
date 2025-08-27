`include "t_latch.v"

module t_latch_tb();

reg en,t;
wire q,qn;

t_latch DUT(    
            .en(en),
            .t(t),
            .q(q),
            .qn(qn)
            );

initial begin
en=0;
#10;
en=1;
end

initial begin

t=0;
#10;
t=1;
#10;
t=0;
#20;
t=1;
#20;
end

initial
#400 $finish;

endmodule
