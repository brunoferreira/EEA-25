module magnitude_comparator (
	// Inputs
 	input [3:0] a , b ,
 	// Outputs
 	output aeqb , agtb , altb
 );
 	wire x0,x1,x2,x3,x4,x5,x6,x7;

	assign x3 = ~( a[3] ^ b[3]);
	assign x2 = ~( a[2] ^ b[2]);
	assign x1 = ~( a[1] ^ b[1]);
	assign x0 = ~( a[0] ^ b[0]);

	assign aeqb = x3 & x2 & x1 & x0 ;

	assign x4 = (~b[3] & a[3]);
	assign x5 = (x3 & ~b[2] & a[2]);
	assign x6 = (x3 & x2 & ~b[1] & a[1]);
	assign x7 = (x3 & x2 & x1 & ~b[0] & a[0]);
	
	assign agtb = x4 | x5 | x6 | x7 ;	
 	assign altb = ~(aeqb | agtb) ;
 endmodule