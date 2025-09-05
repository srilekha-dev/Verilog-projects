module async_counter_4bit (
    input CLK, Reset,
    output [3:0] Q
);

    reg [3:0] count;

    assign Q = count;

    always @(posedge CLK or posedge Reset) begin
        if (Reset)
            count <= 4'b0000;      // Reset counter
        else
            count <= count + 1;    // Increment count
    end

endmodule
