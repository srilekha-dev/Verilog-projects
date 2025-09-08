module uart_tx (
    input        clk,         // System clock
    input        rst,         // Reset
    input  [7:0] data_in,     // 8-bit parallel data
    input        tx_start,    // Start transmission
    output reg   tx,          // Serial output
    output reg   busy         // High when transmitting
);
    parameter CLK_DIV = 10416;  // Example: 9600 baud @ 100 MHz clock
    reg [13:0] count;
    reg [3:0]  bit_index;
    reg [9:0]  tx_shift;       // Start + Data + Stop bits

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            tx <= 1'b1; busy <= 0; count <= 0; bit_index <= 0; tx_shift <= 10'b1111111111;
        end else if (tx_start & ~busy) begin
            busy <= 1;
            tx_shift <= {1'b1, data_in, 1'b0}; // {Stop, Data, Start}
            bit_index <= 0;
            count <= 0;
        end else if (busy) begin
            if (count == CLK_DIV-1) begin
                tx <= tx_shift[bit_index];
                bit_index <= bit_index + 1;
                count <= 0;
                if (bit_index == 9) busy <= 0; // Done
            end else count <= count + 1;
        end
    end
endmodule
//UART Receiver
module uart_rx (
    input        clk,         // System clock
    input        rst,         // Reset
    input        rx,          // Serial input
    output reg [7:0] data_out,// 8-bit parallel data
    output reg   data_valid   // High when new data received
);
    parameter CLK_DIV = 10416; // Example: 9600 baud @ 100 MHz clock
    reg [13:0] count;
    reg [3:0]  bit_index;
    reg [9:0]  rx_shift;
    reg        receiving;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0; bit_index <= 0; data_out <= 0; data_valid <= 0; receiving <= 0;
        end else if (~receiving & ~rx) begin
            receiving <= 1; count <= CLK_DIV/2; bit_index <= 0; // Detect start bit
        end else if (receiving) begin
            if (count == CLK_DIV-1) begin
                rx_shift[bit_index] <= rx;
                bit_index <= bit_index + 1;
                count <= 0;
                if (bit_index == 9) begin
                    receiving <= 0;
                    data_out <= rx_shift[8:1]; // Extract 8-bit data
                    data_valid <= 1;
                end
            end else count <= count + 1;
        end else data_valid <= 0;
    end
endmodule

