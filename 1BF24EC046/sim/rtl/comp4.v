`timescale 1ns/1ps
module comparator #(parameter N=4)(
    input wire [N-1:0] A, B,
    output reg A_greater_B, A_equal_B, A_less_B
);
    always @(*) begin
        A_greater_B = 1'b0;
        A_equal_B = 1'b0;
        A_less_B = 1'b0;
        if (A > B) A_greater_B = 1'b1;
        else if (A < B) A_less_B = 1'b1;
        else A_equal_B = 1'b1;
    end
endmodule

