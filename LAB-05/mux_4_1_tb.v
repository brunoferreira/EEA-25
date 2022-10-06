`include "mux_4_1.v"
`timescale 1 ns /1 ps // time unit / simulation precision

module mux_4_1_tb ;

	reg [3:0] i0, i1, i2, i3 ;
	reg [1:0] S ;
	wire [3:0] Y ;

 	mux_4_1 uut ( i0, i1, i2, i3, S , Y );

 	initial begin
 		$dumpfile ("mux_4_1_tb.vcd");
 		$dumpvars (0 , mux_4_1_tb );
 	end

 	initial begin
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; S = 0; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; S = 1; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; S = 2; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; S = 3; #1;
 	end

 endmodule
