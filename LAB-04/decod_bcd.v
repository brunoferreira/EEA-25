module decod_bcd (

    //Input
    input wire[3:0] count,
    
    //Output
    output reg[6:0] seg_count
);
    
    always @ * begin
    	case (count)
    	4'b0000 : seg_count = 7'b0000001;
    	4'b0001 : seg_count = 7'b1001111;
    	4'b0010 : seg_count = 7'b0010010;
    	4'b0011 : seg_count = 7'b0000110;
    	4'b0100 : seg_count = 7'b1001100;
    	4'b0101 : seg_count = 7'b0100100;
    	4'b0110 : seg_count = 7'b0100000;
    	4'b0111 : seg_count = 7'b0001111;
    	4'b1000 : seg_count = 7'b0000000;
    	4'b1001 : seg_count = 7'b0000100;
    	4'b1010 : seg_count = 7'b0001000;
    	4'b1011 : seg_count = 7'b1100000;
    	4'b1100 : seg_count = 7'b0110001;
    	4'b1101 : seg_count = 7'b1000010;
    	4'b1110 : seg_count = 7'b0110000;
    	4'b1111 : seg_count = 7'b0111000;
    	endcase
    end
endmodule
