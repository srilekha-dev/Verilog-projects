module sync_counter_4bit (
    input CLK, Reset,
    output reg [3:0] Q
);

    always @(posedge CLK or posedge Reset) begin
        if (Reset)
            Q <= 4'b0000;       // Reset counter
        else
            Q <= Q + 1;         // Increment synchronously
    end

endmodule
