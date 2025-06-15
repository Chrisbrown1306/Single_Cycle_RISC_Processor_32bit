module control(opcode, reg_dest, jump, branch, mem_read, mem_to_reg, aluop, mem_write, alusrc, reg_write);
    input [5:0] opcode;
    output reg_dest, jump, branch, mem_read, mem_to_reg, mem_write, alusrc, reg_write;
    output [1:0] aluop;

    assign reg_dest = (opcode == 6'b000000);
    assign jump = (opcode == 6'b000010);
    assign branch = (opcode == 6'b000100);
    assign mem_read = (opcode == 6'b100011);
    assign mem_to_reg = mem_read;
    assign mem_write = (opcode == 6'b101011);
    assign alusrc = (opcode == 6'b100011) || (opcode == 6'b101011) || (opcode == 6'b001000);
    assign reg_write = (opcode == 6'b000000) || (opcode == 6'b100011) || (opcode == 6'b001000);
    assign aluop = (opcode == 6'b000000) ? 2'b10 : ((opcode == 6'b000100) ? 2'b01 : 2'b00);
endmodule
