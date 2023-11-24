`timescale 1 ns / 10 ps

module sum4_tb;

  reg [3:0] A, B;
  reg cin;
  wire[3:0] S;
  wire Out;

  sum4_v2 sumar (S, Out, A, B, cin);
 
  initial 
    begin
    $monitor("tiempo=%0d B=%b A=%b cin=%b S=%b Out=%b", $time, B, A, cin, S, Out);
      
    A = 4'b0000;
    B = 4'b0011;
    cin = 2'b01;
    #5;

    end

endmodule