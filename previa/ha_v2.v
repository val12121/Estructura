module ha_v2(output wire sum, output wire carry, input wire a, input wire b); //Aquí tambien va un ;
  
  assign sum = a ^ b; //XOR  (bit a bit)
  assign carry = a & b; //AND (bit a bit)

  //Recuerda que los assign acaban con ";"

endmodule