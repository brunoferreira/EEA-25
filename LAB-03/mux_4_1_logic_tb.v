`include "mux_4_1_logic.v"
`timescale 1 ns /1 ps // time unit / simulation precision

module mux_4_1_tb ;

	reg [3:0] IN ;
	reg [1:0] S ;
	reg EN ;
	wire Y ;

 	mux_4_1_logic uut ( EN , IN , S , Y );

 	initial begin
 		$dumpfile ("mux_4_1_tb.vcd");
 		$dumpvars (0 , mux_4_1_tb );
 	end

 	initial begin
 		IN = 15; S = 3; EN = 1; #1
 		IN = 1; S = 1; EN = 0; #1
 		IN = 1; S = 1; EN = 1; #1
 		IN = 3; S = 0; EN = 1; #1
 		IN = 10; S = 2; EN = 1; #1
 		IN = 12; S = 1; EN = 1; #1;
 	end

 endmodule
