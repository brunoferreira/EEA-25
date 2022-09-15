`include "frequency_divider.v"
`include "decod_bcd.v"


module top_level(
	//Inputs
	input clk,
	input rst_btn,
	
	//Output
	output wire[6:0] seg_count
);
	wire[3:0] out_clk;
	frequency_divider inst1(clk, rst_btn, out_clk);
	decod_bcd inst2(out_clk, seg_count);
endmodule
