module d_latch(
                input en,
                input wire d,
                output reg q,
                output qn);
assign qn=~q;

always @(en or d)
    begin
        if(!en)
            
            q<=0;
            
        else
            begin
            case(d)
            1'b0 : q<=0;
            default : q<=1;
            
                       endcase
                      end
                                            
                       end
                       endmodule
