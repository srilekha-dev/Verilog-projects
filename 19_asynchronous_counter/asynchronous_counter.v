module async_counter_4bit (
    input CLK, Reset,
    output [3:0] Q
);

    reg [3:0] count;

    // Q0 toggles with CLK
    always @(posedge CLK or posedge Reset)
        if (Reset) count[0] <= 0;
        else count[0] <= ~count[0];

    // Next FFs toggle on inverted outputs to ensure UP counting
    always @(negedge count[0] or posedge Reset)
        if (Reset) count[1] <= 0;
        else count[1] <= ~count[1];

    always @(negedge count[1] or posedge Reset)
        if (Reset) count[2] <= 0;
        else count[2] <= ~count[2];

    always @(negedge count[2] or posedge Reset)
        if (Reset) count[3] <= 0;
        else count[3] <= ~count[3];

    assign Q = count;

endmodule


