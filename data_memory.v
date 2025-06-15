module data_memory (addr, write_data, read_data, clk, reset, mem_read, mem_write);
    input [7:0] addr;
    input [31:0] write_data;
    output reg [31:0] read_data;
    input clk, reset, mem_read, mem_write;

    reg [31:0] dmemory [0:63];
    integer k;

    wire [5:0] shifted_addr = addr[7:2];

    always @(*) 
        if (mem_read)
            read_data = dmemory[shifted_addr];
        else
            read_data = 32'b0;

    always @(posedge clk or posedge reset) 
        if (reset)
            for (k = 0; k < 64; k = k + 1)
                dmemory[k] <= 0;
        else if (mem_write)
            dmemory[shifted_addr] <= write_data;
endmodule
