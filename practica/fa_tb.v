`timescale 1 ns / 10 ps

module fa_tb;

reg A, B, Cin; 
wire Out, Sum;

fa fa1(Out, Sum, A, B, Cin);

initial
begin
  $monitor("tiempo=%0d B=%b A=%b Cin=%b Sum=%b Out=%b ", $time, B, A, Cin, Sum, Out);

  A = 1;
  B = 0;
  Cin = 1; 

  #10

  A = 1;
  B = 0;
  Cin = 0; 

  $finish;  //fin simulacion

end
endmodule
