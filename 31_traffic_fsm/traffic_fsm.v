module traffic_light_controller (
    input clk, rst,
    output reg [2:0] NS, // North-South lights: {Red, Yellow, Green}
    output reg [2:0] EW  // East-West lights:  {Red, Yellow, Green}
);

    // State encoding
    parameter S0 = 2'b00, // NS Green, EW Red
              S1 = 2'b01, // NS Yellow, EW Red
              S2 = 2'b10, // NS Red, EW Green
              S3 = 2'b11; // NS Red, EW Yellow

    reg [1:0] state, next_state;
    reg [3:0] timer;

    // State Register
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= S0;
            timer <= 0;
        end else begin
            state <= next_state;
            timer <= timer + 1;
        end
    end

    // Next State Logic (Timing controlled)
    always @(*) begin
        case(state)
            S0: if (timer == 4) next_state = S1; else next_state = S0; // 5 cycles green
            S1: if (timer == 2) next_state = S2; else next_state = S1; // 3 cycles yellow
            S2: if (timer == 4) next_state = S3; else next_state = S2; // 5 cycles green
            S3: if (timer == 2) next_state = S0; else next_state = S3; // 3 cycles yellow
            default: next_state = S0;
        endcase
    end

    // Output Logic
    always @(*) begin
        case(state)
            S0: begin NS = 3'b001; EW = 3'b100; end // NS=Green, EW=Red
            S1: begin NS = 3'b010; EW = 3'b100; end // NS=Yellow, EW=Red
            S2: begin NS = 3'b100; EW = 3'b001; end // NS=Red, EW=Green
            S3: begin NS = 3'b100; EW = 3'b010; end // NS=Red, EW=Yellow
            default: begin NS = 3'b100; EW = 3'b100; end // Both Red (safe state)
        endcase
    end

endmodule
