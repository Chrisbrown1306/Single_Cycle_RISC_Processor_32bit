module choose_cathode(tho, hun, ten, one, an, ca);
    input [6:0] tho, hun, ten, one;
    input [3:0] an;
    output reg [6:0] ca;

    always @(an) begin
        case(an)
            4'b1110: ca = one;
            4'b1101: ca = ten;
            4'b1011: ca = hun;
            4'b0111: ca = tho;
            default: ca = 7'b1111111;
        endcase
    end
endmodule
