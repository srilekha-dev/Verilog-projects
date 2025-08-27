module sr_latch(
                input en,s,r,
                output reg q,
                output qn);
assign qn=~q;

always @(*)
    begin
        if(!en)
                        q<=0;
            
        else
               begin
                        case({s,r})
                        2'b00 : q<=q;
                        2'b01 : q<=0;
                        2'b10 : q<=1;
                        default : q<=1'bx;
                       endcase
                      end
                     
                       end

    endmodule
