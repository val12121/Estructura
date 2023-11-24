`timescale 1 ns / 10 ps

module fa_v1_tb;

  reg test_A, test_B, test_Cin;
  wire test_sum, test_cout;

  fa_v1 fa1(test_sum, test_cout, test_A, test_B, test_Cin);

    initial
      begin
        $monitor("tiempo = %0d, a = %b, b = %b, suma = %b, acarreo = %b", $time, test_A, test_B, test_sum, test_Cin);
        // Prueba 1: A = 0, B = 0, Cin = 0
          test_A = 1'b0;
          test_B = 1'b0;
          test_Cin = 1'b0; 

          #10 

          // Prueba 2: A = 1, B = 0, Cin = 1
          test_A = 1'b1;
          test_B = 1'b0;
          test_Cin = 1'b1; 
          #10 

          // Prueba 3: A = 1, B = 1, Cin = 0
          test_A = 1'b1;
          test_B = 1'b1;
          test_Cin = 1'b0; 

        $finish;
      end

endmodule 