`include "mux_8_1.v"
module alu (
    input [3:0] src_a, src_b,
    input [2:0] operation,
    output [3:0] alu_result,
    output zero_flag
);

    wire [3:0] opand,opor,opplus,opsl,opminus,opsr,opAltB,opXOR;
    
    assign opand=src_a & src_b;
    assign opor=src_a | src_b;
    assign opplus=src_a + src_b;
    assign opsl=src_a << src_b;
    assign opminus=src_a - src_b;
    assign opsr=src_a >> src_b;
    assign opAltB=src_a < src_b;
    assign opXOR=src_a ^ src_b;
    mux_8_1 mux (opand,opor,opplus,opsl,opminus,opsr,opAltB,opXOR,operation,alu_result);

    assign zero_flag = alu_result ? 0:1;

endmodule

