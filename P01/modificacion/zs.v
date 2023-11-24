module zs(output reg zero, sign, input wire [3:0] R);

  always @(R) 
  begin
    if (R == 0)
      zero = 1;
    else
      zero = 0;  
    sign = R[3];
  end
    
endmodule