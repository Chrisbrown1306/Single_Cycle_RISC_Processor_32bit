module alu(in_a, in_b, alu_out, zero, control);
    input [31:0] in_a, in_b;
    input [3:0] control;
    output reg [31:0] alu_out;
    output zero;

    assign zero = (alu_out == 32'b0);

    always @(*) begin
        case(control)
            4'b0010: alu_out = in_a + in_b;        // add
            4'b0110: alu_out = in_a - in_b;        // subtract
            4'b0000: alu_out = in_a & in_b;        // and
            4'b0001: alu_out = in_a | in_b;        // or
            4'b0111: alu_out = (in_a < in_b) ? 1 : 0;  // set less than
            default: alu_out = 32'b0;
        endcase
    end
endmodule
