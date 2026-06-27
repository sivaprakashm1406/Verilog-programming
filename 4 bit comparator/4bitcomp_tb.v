
`timescale 1ns / 1ps

module comp4bit_tb;
  reg [3:0] A_tb;
  reg [3:0] B_tb;
  wire lt_tb;
  wire gt_tb;
  wire eq_tb;

  comp4bit uut( .A(A_tb), .B(B_tb), .lt(lt_tb), .gt(gt_tb), .eq(eq_tb));
  initial begin
    $dumpfile("comp4bit_sim.vcd");
    $dumpvars(0,comp4bit_tb);
    A_tb=4'b0101; B_tb=4'b0101; #10;
    A_tb=4'b1000; B_tb=4'b0001; #10;
    A_tb=4'b0001; B_tb=4'b1000; #10;
    $finish;
  end
endmodule
