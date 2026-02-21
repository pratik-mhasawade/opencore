module flags (
    input wire clk,
    input wire reset,
    input wire [7:0] alu_result,
    output reg zero_flag
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            zero_flag <= 1'b0;
        else
            zero_flag <= (alu_result == 8'b00000000);
    end

endmodule
