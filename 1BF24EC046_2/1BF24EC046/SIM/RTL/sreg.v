`timescale 1ns/1ps
module shift_register #(parameter N=8)(
    input wire clk, rst, shift_en, d_in,
    output reg [N-1:0] q_out
);
    always @(posedge clk) begin
        if (rst) q_out <= {N{1'b0}};
        else if (shift_en) q_out <= {q_out[N-2:0], d_in};
    end
endmodule




