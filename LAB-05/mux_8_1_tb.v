`include "mux_8_1.v"
`timescale 1 ns /1 ps // time unit / simulation precision

module mux_8_1_tb ;

	reg [3:0] i0, i1, i2, i3, i4, i5, i6, i7 ;
	reg [2:0] S ;
	wire [3:0] Y ;

 	mux_8_1 uut ( i0, i1, i2, i3, i4, i5, i6, i7, S , Y );

 	initial begin
 		$dumpfile ("mux_8_1_tb.vcd");
 		$dumpvars (0 , mux_8_1_tb );
 	end

 	initial begin
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 0; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 1; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 2; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 3; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 4; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 5; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 6; #1
 		i0 = 4; i1 = 8; i2 = 1; i3 = 15; i4 = 3; i5 = 7; i6 = 0; i7 = 14; S = 7; #1;
 		
 	end

 endmodule
