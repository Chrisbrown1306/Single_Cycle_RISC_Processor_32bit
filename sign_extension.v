module sign_extension(sign_in, sign_out);
    input [15:0] sign_in;
    output [31:0] sign_out;

    assign sign_out = {{16{sign_in[15]}}, sign_in};
endmodule
