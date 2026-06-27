module comp4bit (input [3:0] A, input [3:0] B, output reg gt, lt, eq );
 always @(*) begin
   lt=(A<B);
   gt=(A>B);
   eq=(A==B);
 end
endmodule
