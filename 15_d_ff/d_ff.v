module d_ff(
            input clk,rst,
            input d,
            output reg q,
            output qn
            );

assign qn=~q;

always @(posedge clk)


    begin
    if(!rst)
       
         q<=0;
       
     else
         q<=d;
    end
endmodule

