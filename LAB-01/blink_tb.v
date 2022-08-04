
`timescale 10ns/1ps

module blink_tb;
    
     reg CLK;
     wire LED;


     blink blink_tb(CLK, LED);
     
     initial
          CLK = 1'b0;

     always
          #1 CLK = ~CLK;

     initial begin
          $monitor($time,"CLK = %b, LED = %b", CLK, LED);
          #31 $finish;
     end
     
     initial begin
          $dumpfile ("blink_tb.vcd");
          $dumpvars (0, blink_tb);
     end

endmodule
