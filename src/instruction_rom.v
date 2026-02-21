module instruction_rom (
    input wire [4:0] addr,         // 5-bit address supports 32 instructions
    output reg [7:0] instruction   // 8-bit instruction output
);

    always @(*) begin

        reg [7:0] rom [0:31];

        initial begin
            $readmemh("program.mem", rom);
        end

        always @(*) begin
            instruction = rom[addr];
        end
    end

endmodule
