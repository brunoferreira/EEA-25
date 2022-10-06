`include "alu.v"

module alu_tb ();

    parameter DATA_WIDTH = 4;
    parameter OPCODE_LENGTH = 3;

    reg [DATA_WIDTH - 1:0] A;
    reg [DATA_WIDTH - 1:0] B;
    reg [OPCODE_LENGTH - 1:0] OP;

    wire [DATA_WIDTH - 1:0] RESULT ;
    wire F_ZERO;

    alu uut (   .src_a(A),
                .src_b(B),
                .operation(OP),
                .alu_result(RESULT),
                .zero_flag(F_ZERO)
    );

    initial begin
        A = 1; B = 2; OP = 4'b0000; #1
        A = 1; B = 2; OP = 4'b0001; #1
        A = 1; B = 2; OP = 4'b0010; #1
        A = 1; B = 2; OP = 4'b0011; #1
        A = 1; B = 2; OP = 4'b0100; #1
        A = 4; B = 2; OP = 4'b0101; #1
        A = 3; B = 2; OP = 4'b0110; #1
        A = 2; B = 2; OP = 4'b0111; #1;
    end
	initial begin
	    $dumpfile ("alu_tb.vcd");
	    $dumpvars (0, alu_tb);
	end

endmodule
