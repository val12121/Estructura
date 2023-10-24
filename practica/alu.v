module alu(output wire [3:0] R, output wire zero, c_out, sign, input wire [3:0] A, B, input wire c_in,
input wire [1:0] ALUOP, input wire l);
  
  wire[3:0] out_mux2_4_1, out_OP2, out_add1, out_OP1, out_suma, out_ul4;

  mux2_4 mux_1 (out_mux2_4_1, A, B, op2_B); 
  compl1 complemento_1 (out_OP2, out_mux2_4_1, cpl);
  mux2_4 add_1 (out_add1, 4'b0000, 4'b0001, add1);
  mux2_4 mux_2 (out_OP1, out_add1, A, op1_A);

  sum4 suma_12 (out_suma, c_out, out_OP1, out_OP2, c_in);
  ul4 ul4_12 (out_ul4, out_OP1, out_OP2, ALUOP); 
  
  mux2_4 Final (R, out_suma, out_ul4, l);

  /*
  assign add1 = ~l & ALUOP[0]; 
  assign op1_A = ALUOP[1] & (~ALUOP[0]) | l & ~ALUOP[1];
  assign op2_B = ALUOP[1] & (~ALUOP[0]) | l & ~ALUOP[1];
  assign cpl =   (~l &  ~ALUOP[1] & ALUOP[0]) | (l & ALUOP[1] & ALUOP[0]);
  */  
  
  assign zero = R == 0 ? 1 : 0;
  assign sign = R[3];

  assign add1 = (~l & ALUOP[0]);
  assign op1_A = (ALUOP[1] & ~ALUOP[0]) | (l);
  assign op2_B = (ALUOP[1] & ~ALUOP[0]) | (l & ~ALUOP[1]);
  assign cpl = (~l & ~ALUOP[1] & ALUOP[0]);

endmodule