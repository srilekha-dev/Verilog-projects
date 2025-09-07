module ring_counter (
    input CLK, Reset,
    output reg [3:0] Q
);

    always @(posedge CLK or posedge Reset) begin
        if (Reset)
            Q <= 4'b0001;   // Start with 0001
        else
            Q <= {Q[2:0], Q[3]}; // Rotate left
    end

endmodule
