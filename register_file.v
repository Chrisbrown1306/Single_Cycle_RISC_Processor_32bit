module register_file (
    input [4:0] read_addr_1, 
    input [4:0] read_addr_2, 
    input [4:0] write_addr,
    input [31:0] write_data,
    input clk, reset, reg_write,
    output reg [31:0] read_data_1,
    output reg [31:0] read_data_2
);
    reg [31:0] reg_file [0:31];
    integer k;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (k = 0; k < 32; k = k + 1)
                reg_file[k] <= 32'b0;
        end 
        else if (reg_write && write_addr != 5'b00000) begin
            reg_file[write_addr] <= write_data;
        end
    end

    always @(posedge clk) begin
        read_data_1 <= reg_file[read_addr_1];
        read_data_2 <= reg_file[read_addr_2];
    end
endmodule
