module reg_file (
    input [4:0]  rg_A1,rg_A2,rg_A3,
    input [31:0] rg_WD3,
    output reg [31:0] rg_RD1,rg_RD2,
    input rg_WE3,
    input clock,
    input reset
);

    integer i;
    reg [31:0] reg_file[31:0];

    always @(posedge clock, posedge reset)
    begin
        if(reset)
            for(i=0 ; i<32; i=i+1) begin
                reg_file[i]<=i;
            end
        else if(rg_WE3) 
            reg_file[rg_A3]<=rg_WD3;
    end

    always @(*)
    begin
        rg_RD1=reg_file[rg_A1];
        rg_RD2=reg_file[rg_A2];
    end

 endmodule