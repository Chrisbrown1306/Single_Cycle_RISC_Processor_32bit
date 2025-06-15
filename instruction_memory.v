module instruction_memory (read_addr, instruction, reset);
    input [6:0] read_addr;
    input reset;
    output reg [31:0] instruction;
    reg [31:0] Imemory [0:63];
    integer k;

    wire [5:0] shifted_addr = read_addr[6:2];

    always @(*) instruction = Imemory[shifted_addr];

    initial begin
        for (k = 0; k < 64; k = k + 1)
            Imemory[k] = 32'b0;

        // Put your program instructions here:
        Imemory[0] = 32'b00100000000010000000000000100000;
        Imemory[1] = 32'b00100000000010010000000000110111;
        // Add more...
    end
endmodule
