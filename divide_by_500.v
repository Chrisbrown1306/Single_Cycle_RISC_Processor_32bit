module divide_by_500 (clock, reset, clock_out);
    parameter N = 9;
    input clock, reset;
    output clock_out;
    reg [N-1:0] q;
    wire load, asyclock_out;
    wire [N-1:0] dat = 0;

    assign load = q[8] & q[7] & q[6] & q[5] & q[4] & q[1] & q[0];

    always @(posedge clock or posedge reset)
        if (reset)
            q <= 0;
        else if (load)
            q <= dat;
        else
            q <= q + 1;

    assign asyclock_out = load;
    dff_asy dff (.q(clock_out), .d(asyclock_out), .clk(clock), .rst(reset));
endmodule
