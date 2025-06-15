module alucontrol(aluop, funct, out_to_alu);
    input [1:0] aluop;
    input [5:0] funct;
    output reg [3:0] out_to_alu;

    always @(*) begin
        case(aluop)
            2'b00: out_to_alu = 4'b0010;  // lw/sw/addi → add
            2'b01: out_to_alu = 4'b0110;  // beq → subtract
            2'b10: begin                  // R-type
                case(funct)
                    6'b100000: out_to_alu = 4'b0010; // add
                    6'b100010: out_to_alu = 4'b0110; // sub
                    6'b100100: out_to_alu = 4'b0000; // and
                    6'b100101: out_to_alu = 4'b0001; // or
                    6'b101010: out_to_alu = 4'b0111; // slt
                    default:   out_to_alu = 4'b0000;
                endcase
            end
            default: out_to_alu = 4'b0000;
        endcase
    end
endmodule
