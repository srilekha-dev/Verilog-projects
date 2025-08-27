module jk_latch(
                input en,j,k,
                output reg q,
                output qn);
assign qn=~q;

always @(*)
    begin
        if(!en)
                        q<=0;
            
        else
               begin
                        case({j,k})
                        2'b00 : q<=q;
                        2'b01 : q<=0;
                        2'b10 : q<=1;
                        default : q=~q;
                       endcase
                      end
                     
                       end

    endmodule
