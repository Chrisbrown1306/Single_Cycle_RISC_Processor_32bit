module ring_counter4(clock, reset, q);
    input clock, reset;
    output reg [3:0] q;

    always @(posedge clock or posedge reset)
        if (reset)
            q <= 4'b1110;
        else
            q <= {q[0], q[3:1]}; 
endmodule
