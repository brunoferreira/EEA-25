`timescale 10ns/1ps
`include "top_level.v"

module top_level_tb ;

    output reg clk, rst;
    input wire[6:0] seg_count;

    top_level uut(clk, rst, seg_count);
    
    initial
        clk = 1'b0 ;
    
    always
        #1 clk = ~clk;
    
    initial begin
        $monitor($time,"clk = %b, rst = %b, seg_count = %b", clk, rst, seg_count);
        rst = 0;
        #1 rst = 1;
        #31 $finish;
    end

    initial begin
        $dumpfile ("top_level_tb.vcd");
        $dumpvars (0, top_level_tb);
    end

endmodule
