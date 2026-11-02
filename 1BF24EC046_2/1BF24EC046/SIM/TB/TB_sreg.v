
`timescale 1ns/1ps
module tb_shift_register;
    parameter N=8;
    reg clk, rst, shift_en, d_in;
    wire [N-1:0] q_out;
    shift_register #(N) uut(.clk(clk), .rst(rst), .shift_en(shift_en), .d_in(d_in), .q_out(q_out));
    always #5 clk = ~clk;
    initial begin
        $dumpfile("shift_register_waves.vcd");
        $dumpvars(0, tb_shift_register);
        clk=0; rst=1; shift_en=0; d_in=0;
        #10 rst=0; shift_en=1; d_in=1;
        #10 d_in=0;
        #10 d_in=1;
        #10 d_in=1;
        #50 shift_en=0; d_in=0;
        #20 $finish;
    end
endmodule



