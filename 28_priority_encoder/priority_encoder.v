module priority_encoder_8to3 (
    input  [7:0] I,     // 8 input lines
    output reg [2:0] Y, // Encoded output
    output reg Valid    // Indicates if any input is active
);

    always @(*) begin
        casez (I)
            8'b1???????: begin Y = 3'b111; Valid = 1; end // I7 highest priority
            8'b01??????: begin Y = 3'b110; Valid = 1; end // I6
            8'b001?????: begin Y = 3'b101; Valid = 1; end // I5
            8'b0001????: begin Y = 3'b100; Valid = 1; end // I4
            8'b00001???: begin Y = 3'b011; Valid = 1; end // I3
            8'b000001??: begin Y = 3'b010; Valid = 1; end // I2
            8'b0000001?: begin Y = 3'b001; Valid = 1; end // I1
            8'b00000001: begin Y = 3'b000; Valid = 1; end // I0
            default:     begin Y = 3'b000; Valid = 0; end // No input active
        endcase
    end

endmodule
