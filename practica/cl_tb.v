`timescale 1 ns / 10 ps

module cl_tb;

reg A, B; 
wire Out;
reg[1:0] s;

cl cl1(Out, A, B, s);

initial
begin
  $monitor("tiempo=%0d B=%b A=%b s=%b Out=%b", $time, B, A, s, Out);

  //Prueba 1 ( A or B )
  A = 1'b0;
  B = 1'b1;
  s = 2'b00;
  #5;

  //Prueba 2 (A and B)
  A = 1'b0;
  B = 1'b1;
  s = 2'b01;
  #5

  //Prueba 2 (A and B)
  A = 1'b0;
  B = 1'b1;
  s = 2'b01;
  #5
    
  //Los valores que se encuentren aquí son reg

  $finish;  //fin simulacion

end
endmodule
