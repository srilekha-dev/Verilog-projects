module ripple_counter_down (
    input CLK, Reset,
    output [3:0] Q
);

    reg [3:0] count;

    // Q0 toggles on main clock
    always @(posedge CLK or posedge Reset)
        if (Reset) count[0] <= 1;   // Start from 1111 for down count
        else count[0] <= ~count[0];

    // Next FFs toggle on rising edge of previous outputs
    always @(posedge count[0] or posedge Reset)
        if (Reset) count[1] <= 1;
        else count[1] <= ~count[1];

    always @(posedge count[1] or posedge Reset)
        if (Reset) count[2] <= 1;
        else count[2] <= ~count[2];

    always @(posedge count[2] or posedge Reset)
        if (Reset) count[3] <= 1;
        else count[3] <= ~count[3];

    assign Q = count;

endmodule
