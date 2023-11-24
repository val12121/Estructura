`timescale 1 ns / 10 ps //Directiva que fija la unidad de tiempo de simulaci�n y el paso de simulaci�n

module ul4_tb;

reg[3:0] test_Inp; 
wire[3:0] test_Out;
reg test_cp1;

compl1 compl1_1 (test_Out, test_Inp, test_cp1);

initial
begin
  $monitor("tiempo=%0d A=%b Out=%b", $time, test_Inp, test_Out);
    //fin simulacion

  test_Inp = 4'b0100;
  test_cp1 = 0; 
  #10

  test_Inp = 4'b1100;
  test_cp1 = 1; 

  $finish;
end
endmodule