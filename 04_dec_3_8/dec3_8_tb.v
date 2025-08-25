`include "dec3_8.v"

module dec3_8_tb();
    reg en;
    reg [2:0] a;
    wire [7:0] y;

    dec3_8 uut (.en(en), .a(a), .y(y));

    initial begin
        $monitor("EN=%b A=%b Y=%b", en, a, y);
        en = 0; a = 3'b000; #10;
        en = 1; a = 3'b000; #10;
        en = 1; a = 3'b001; #10;
        en = 1; a = 3'b010; #10;
        en = 1; a = 3'b011; #10;
        en = 1; a = 3'b100; #10;
        en = 1; a = 3'b101; #10;
        en = 1; a = 3'b110; #10;
        en = 1; a = 3'b111; #10;
    end
endmodule
