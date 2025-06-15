reg switch_run_reg;

always @(posedge clkssd or posedge reset) begin
    if (reset)
        switch_run_reg <= 1'b0;
    else
        switch_run_reg <= switch_run;
end

always @(posedge clkssd or posedge reset) begin
    if (reset) begin
        // initialize everything
        clkrf_reg <= 1'b0;
        clk_reg <= 1'b0;
        multi_purpose_read_addr_reg <= 5'd0;
        multi_purpose_reg_write_reg <= 1'b0;
        tho_reg <= 4'd0;
        hun_reg <= 4'd0;
        ten_reg <= 4'd0;
        one_reg <= 4'd0;
    end else if (switch_run_reg) begin
        clkrf_reg <= clknormal;
        clk_reg <= clknormal;
        multi_purpose_read_addr_reg <= instruction[25:21];
        multi_purpose_reg_write_reg <= reg_write;
        tho_reg <= pc_out_unsign_extended[15:12];
        hun_reg <= pc_out_unsign_extended[11:8];
        ten_reg <= pc_out_unsign_extended[7:4];
        one_reg <= pc_out_unsign_extended[3:0];
    end else begin
        clkrf_reg <= clkssd;
        clk_reg <= 1'b0;
        multi_purpose_read_addr_reg <= switch_select;
        multi_purpose_reg_write_reg <= 1'b0;
        tho_reg <= reg_read_data_1[15:12];
        hun_reg <= reg_read_data_1[11:8];
        ten_reg <= reg_read_data_1[7:4];
        one_reg <= reg_read_data_1[3:0];
    end
end
