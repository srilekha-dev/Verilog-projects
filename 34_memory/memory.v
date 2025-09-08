module simple_ram (
    input        clk,          // Clock
    input        we,           // Write Enable (1 = Write, 0 = Read)
    input  [3:0] addr,         // 4-bit Address (16 locations)
    input  [7:0] din,          // Data Input (8-bit)
    output reg [7:0] dout      // Data Output (8-bit)
);
    reg [7:0] mem [15:0];      // 16 x 8 RAM

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;  // Write operation
        else
            dout <= mem[addr]; // Read operation
    end
endmodule
