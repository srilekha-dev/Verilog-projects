module demux1_4(input I, input [1:0] S, output reg Y0,Y1,Y2,Y3);

always @(*) begin
    Y0=0;Y1=0;Y2=0;Y3=0;
    case({S[1],S[0]})
        2'b00 : Y0=I;
        2'b01 : Y1=I;
        2'b10 : Y2=I;
        2'b11 : Y3=I;
        default : {Y0,Y1,Y2,Y3} = 4'd0;
    endcase
    end
    endmodule

