module ha_v3 (output wire sum, output wire carry, input wire a, input wire b);

  assign {carry, sum} = a + b; 

endmodule 