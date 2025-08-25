`include "mux4_1.v"

module mux4_1_tb;
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    mux4_1 uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1), .Y(Y));

    initial begin
        // Test all select line combinations
        I0=0; I1=1; I2=0; I3=1;

        {S1, S0} = 2'b00; #10;
        {S1, S0} = 2'b01; #10;
        {S1, S0} = 2'b10; #10;
        {S1, S0} = 2'b11; #10;

        $stop;
    end

    initial begin
        $monitor("S1=%b S0=%b -> Y=%b", S1, S0, Y);
    end
endmodule

