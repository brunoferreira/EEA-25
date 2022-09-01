`include "magnitude_comparator.v"

module magnitude_comparator_tb ;

	// Inputs
	reg [3:0] data_a ;
 	reg [3:0] data_b ;

 	// Outputs
 	wire aeqb , agtb , altb ;

 	// Instantiate the Unit Under Test (UUT)
 	magnitude_comparator uut ( data_a , data_b , aeqb , agtb , altb );

 	initial begin
 		$dumpfile ("magnitude_comparator_tb.vcd");
 		$dumpvars (0 , magnitude_comparator_tb );
 	end

 	initial
 		$monitor ($time ," data_a = %d, data_b = %d, aeqb = %b, agtb = %b, altb = %b",
 				data_a , data_b , aeqb , agtb , altb );

 	initial begin
 		data_a = 4; data_b = 3; #1
 		data_a = 1; data_b = 1; #1
 		data_a = 3; data_b = 4; #1
 		data_a = 10; data_b = 10; #1
 		data_a = 12; data_b = 10; #1;
 		$finish ;
 	end
 endmodule
