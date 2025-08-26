`include "demux1_4.v"

module demux1_4_tb();

reg I;
reg [1:0] S;
wire Y0,Y1,Y2,Y3;

demux1_4 uut(.I(I),.S(S),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));

initial begin
   I=0;S=2'b00;#10;
   I=1;S=2'b00;#10;
   I=0;S=2'b01;#10;
   I=1;S=2'b01;#10;
   I=0;S=2'b10;#10;
   I=1;S=2'b10;#10;
   I=0;S=2'b11;#10;
   I=1;S=2'b11;#10;

   end

   initial 
   $monitor("I=%B S=%B Y0=%B Y1=%B Y2=%B Y3=%B",I,S,Y0,Y1,Y2,Y3);

   endmodule

