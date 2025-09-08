`include "memory.v"
module simple_ram_tb;
    reg clk, we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    simple_ram uut (.clk(clk), .we(we), .addr(addr), .din(din), .dout(dout));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0; we = 0; addr = 0; din = 0;

        // Write operations
        #10 we = 1; addr = 4; din = 8'hAA;  // Write 0xAA at addr 4
        #10 we = 1; addr = 7; din = 8'h55;  // Write 0x55 at addr 7

        // Read operations
        #10 we = 0; addr = 4;               // Read from addr 4
        #10 we = 0; addr = 7;               // Read from addr 7

        #20 $stop;
    end
endmodule

