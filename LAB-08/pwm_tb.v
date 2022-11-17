`include "pwm.v"

module pwm_tb;

reg clk;
reg wstrb; // Write strobe
reg sel; // Select ( read / write ignored if low )
reg [31:0] wdata; // Data to be written ( to driver )
// Outputs
wire  led;
   
pwm #(3) PWM(clk,wstrb, sel, wdata, led);

initial begin
    clk=0;
end

always begin
    clk=~clk;
    #1;
end

initial begin
    wstrb=1; sel=1; wdata=5; #2;
    wstrb=1; sel=0; wdata=5; #12;
    wstrb=1; sel=0; wdata=5; #12;


end

initial begin
    $dumpfile ("pwm_tb.vcd");
    $dumpvars (0, pwm_tb);
    #32;
    $finish;
end
   
endmodule