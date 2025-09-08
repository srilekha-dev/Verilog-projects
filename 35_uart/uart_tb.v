`include "uart.v"
module uart_tb;
    reg clk, rst, tx_start;
    reg [7:0] data_in;
    wire tx, busy;
    wire [7:0] data_out;
    wire data_valid;

    uart_tx tx0 (.clk(clk), .rst(rst), .data_in(data_in), .tx_start(tx_start), .tx(tx), .busy(busy));
    uart_rx rx0 (.clk(clk), .rst(rst), .rx(tx), .data_out(data_out), .data_valid(data_valid));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; tx_start = 0; data_in = 0;
        #20 rst = 0;

        // Send data 0x55
        #20 data_in = 8'h55; tx_start = 1;
        #10 tx_start = 0;

        // Wait for reception
        wait(data_valid);
        $display("Received Data = %h", data_out);

        #100 $stop;
    end
endmodule

