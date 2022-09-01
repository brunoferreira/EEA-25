module mux_4_1_logic(
	//Inputs
	input EN,
	input [3:0] IN,
	input [1:0] S,
	
	//Output
	output Y
);
	wire x0,x1,x2,x3;
	assign x3 = (EN & IN[3] & S[1] & S[0]);
	assign x2 = (EN & IN[2] & S[1] & ~S[0]);
	assign x1 = (EN & IN[1] & ~S[1] & S[0]);
	assign x0 = (EN & IN[0] & ~S[1] & ~S[0]);
	
	assign Y = (x3 | x2 | x1 | x0);
	
endmodule
