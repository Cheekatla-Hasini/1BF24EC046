`timescale 1ns/1ps
module tb_comparator;
    parameter N=4;
    reg [N-1:0] A, B;
    wire A_greater_B, A_equal_B, A_less_B;
    comparator #(N) uut(.A(A), .B(B), .A_greater_B(A_greater_B), .A_equal_B(A_equal_B), .A_less_B(A_less_B));
    initial begin
        $dumpfile("comparator_waves.vcd");
        $dumpvars(0, tb_comparator);
        A=4'd5; B=4'd5; #10;
        A=4'd9; B=4'd4; #10;
        A=4'd2; B=4'd7; #10;
        A=4'd15; B=4'd0; #10;
        A=4'd0; B=4'd15; #10;
        A=4'd10; B=4'd10; #10;
        $finish;
    end
endmodule

