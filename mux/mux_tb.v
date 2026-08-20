`timescale 1ns/1ps

module mux4to1_tb;

reg [3:0] I;
reg [1:0] S;
wire Y;

mux4to1 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux4to1_tb);

    $display("Time\tI\tS\tY");
    $display("------------------------");

    I = 4'b1010;

    S = 2'b00;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b01;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b10;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b11;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    I = 4'b0101;

    S = 2'b00;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b01;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b10;
    #10;
    $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

    S = 2'b11;
    #10;
    $display("%0t\t%b\t%b", $time, I, S, Y);

    $finish;
end

endmodule