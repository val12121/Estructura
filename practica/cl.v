module cl(output wire out, input wire a, b, input wire [1:0] S);

  wire out_or, out_and, out_xor, out_not;

  or or1(out_or, a, b);
  and and1(out_and, a, b);
  xor xor1(out_xor, a, b);
  not not1(out_not, a, b);

  mux4_1 mux(out, out_or, out_and, out_xor, out_not, S);

endmodule