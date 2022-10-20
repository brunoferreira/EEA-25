`include "reg_file.v"

module reg_file_tb ();

    reg [4:0] rg_A1, rg_A2, rg_A3;
    reg [31:0] rg_WD3;
    wire [31:0] rg_RD1, rg_RD2;
    reg rg_WE3;
    reg clock, reset;
    integer i;

    reg_file uut (
        rg_A1, rg_A2, rg_A3, rg_WD3,
        rg_RD1, rg_RD2, rg_WE3,
        clock, reset);

    initial begin
        $dumpfile ("reg_file_output_wave.vcd");
        $dumpvars (0, reg_file_tb );
    end

    initial begin
        reset = 1;
        #15 reset = 0;
    end

    initial begin
        clock = 0;
        forever #20 clock = ~ clock ;
    end

    // Reading the values from the 32 registers
    initial begin
        for ( i = 0; i < 31; i = i + 2) begin
            rg_A1 = i ;
            rg_A2 = i + 1;
            #20;
        end

        rg_A3=2; rg_WD3=35; rg_WE3=1; #40;
        rg_A3=9; rg_WD3=45; rg_WE3=1; #40;
        rg_A1=2; rg_A2=9;rg_WE3=0; #40;
        reset=1; #40;

        for ( i = 0; i < 31; i = i + 2) begin
            rg_A1 = i ;
            rg_A2 = i + 1;
            #20;
        end
    end

    initial begin
        #1000 $finish ;
    end

endmodule