`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module ul4_tb;

reg[3:0] A, B; 
reg[1:0] s;
wire[3:0] Out;

ul4 ul4_1 (Out, A, B, s);

initial
begin
  $monitor("tiempo=%0d B=%b A=%b s=%b Out=%b", $time, B, A, s, Out);

  A = 4'b0000;
  B = 4'b0011;
  s = 2'b01;
  #5;

  A = 4'b0000;
  B = 4'b0011;
  s = 2'b11;
  #5;

  A = 4'b0000;
  B = 4'b0011;
  s = 2'b10;
  #5;

  A = 4'b0000;
  B = 4'b0011;
  s = 2'b00;
  #5;

 $finish;  //fin simulacion

end
endmodule
