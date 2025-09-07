module seq_detector_1011 (
    input clk, rst, x,       // clock, reset, serial input
    output reg z             // output high when "1011" detected
);

    // State encoding
    parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;

    reg [2:0] state, next_state;

    // State Register
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    // Next State Logic
    always @(*) begin
        case(state)
            S0: if (x) next_state = S1; else next_state = S0;
            S1: if (x) next_state = S1; else next_state = S2;
            S2: if (x) next_state = S3; else next_state = S0;
            S3: if (x) next_state = S4; else next_state = S2;
            S4: if (x) next_state = S1; else next_state = S2;
            default: next_state = S0;
        endcase
    end

    // Output Logic (Moore: depends only on state)
    always @(*) begin
        case(state)
            S4: z = 1;   // when sequence "1011" detected
            default: z = 0;
        endcase
    end

endmodule
