module mux_N_bit (in0, in1, mux_out, control);
    parameter N = 32;
    input [N-1:0] in0, in1;
    input control;
    output [N-1:0] mux_out;

    assign mux_out = control ? in1 : in0;
endmodule
