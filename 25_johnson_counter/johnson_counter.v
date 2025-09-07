module johnson_counter (
    input CLK, Reset,
    output reg [3:0] Q
);

    always @(posedge CLK or posedge Reset) begin
        if (Reset)
            Q <= 4'b0000;
        else
            Q <= {~Q[0], Q[3:1]}; // Shift right with inverted feedback
    end

endmodule

