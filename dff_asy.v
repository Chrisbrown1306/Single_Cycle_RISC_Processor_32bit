module dff_asy (q, d, clk, rst);
    input d, clk, rst;
    output reg q;
    
    always @(posedge clk or posedge rst)
        if (rst)
            q <= 0;
        else
            q <= d;
endmodule
