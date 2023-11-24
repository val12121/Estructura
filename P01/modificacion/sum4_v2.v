module sum4_v2(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);
  
  assign {c_out, S} = A + B + c_in;

  //Esto coge A en su version entera, ej= A= 0000 y B= 0000, y nos devuelve la suma de ambos mas 
  //el carry 

endmodule