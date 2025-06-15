module jump_shiftleft2(shift_in, shift_out);
    input [25:0] shift_in;
    output [27:0] shift_out;

    assign shift_out = {shift_in, 2'b00};
endmodule
