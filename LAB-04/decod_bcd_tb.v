`timescale 10ns/1ps
`include "decod_bcd.v"

module decod_bcd_tb ;

    output reg[3:0] count;
    input wire[6:0] seg_count;

    decod_bcd uut(count, seg_count);
    
    always
    #1 count = count + 1;
    
    initial
        count = 4'b0 ;
    
    initial begin
        $monitor($time,"count = %b, seg_count = %b", count, seg_count);
        #15 $finish;
    end

    initial begin
        $dumpfile ("decod_bcd_tb.vcd");
        $dumpvars (0, decod_bcd_tb);
    end

endmodule