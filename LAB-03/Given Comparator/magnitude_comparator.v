module magnitude_comparator (
	// Inputs
	input [3:0] a , b ,
	// Outputs
	output aeqb , agtb , altb
);
	assign aeqb = ( a == b ) ? 1'b1 : 1'b0 ;
	assign agtb = ( a > b ) ? 1'b1 : 1'b0 ;
	assign altb = ( a < b ) ? 1'b1 : 1'b0 ;
endmodule