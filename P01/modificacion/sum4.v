module sum4(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);

  wire out_carry1, out_carry2, out_carry3;

  fa fa_1(out_carry1, S[0], A[0], B[0], c_in);
  fa fa_2(out_carry2, S[1], A[1], B[1], out_carry1);
  fa fa_3(out_carry3, S[2], A[2], B[2], out_carry2);
  fa fa_4(c_out, S[3], A[3], B[3], out_carry3);

endmodule 