module program_counter(clk, reset, pc_in, pc_out);
    input clk, reset;
    input [6:0] pc_in;
    output reg [6:0] pc_out;

    always @(posedge clk or posedge reset)
        if (reset)
            pc_out <= 0;
        else
            pc_out <= pc_in;
endmodule
