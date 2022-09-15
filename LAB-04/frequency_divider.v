module frequency_divider (

    // Inputs
    input clk,
    input rst_btn,

    // Outputs
    output reg[3:0] out_clk
);
    wire rst;
    reg[31:0] count;
    localparam [31:0] max_count = (12000000) - 1;

    // Reset is the inverse of the reset button
    assign rst = ~rst_btn;

    // Clock divider
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            out_clk <= 4'b0;
            count <= 32'b0;
        end
        else if (count == max_count) begin
            count <= 32'b0;
            out_clk <= out_clk + 1'b1;
        end
        else begin
            count <= count + 1;
        end
    end

endmodule
