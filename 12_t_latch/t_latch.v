module t_latch(
                input en,t,
                output reg q,
                output qn);
assign qn=~q;

always @(en or t)
    begin
        if(!en)
            q<=0;
        else
            begin
            case(t)
            1'b0 : q<=q;
            
            default : q<=~q;
            
                       endcase
                      end
                                            
                       end

    endmodule
