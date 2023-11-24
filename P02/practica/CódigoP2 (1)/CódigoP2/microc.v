module microc(output wire [5:0] Opcode, output wire zero, input wire clk, reset, s_inc, s_inm, we, wez, input wire [2:0] ALUOp);
//Microcontrolador sin memoria de datos de un solo ciclo

//Microcontrolador sin memoria de datos de un solo ciclo
    
    wire[15:0] Instruction;
    wire[9:0] nuevo_PC, actual_PC, out_sum;
    wire[7:0] RD1, RD2, WD3, out_mux_ALU;
    wire[3:0] out_mux;
    wire Z_alu;
    assign Opcode = Instruction[15:10];

    mux2 #10 mux_sum(nuevo_PC, Instruction[9:0], out_sum, s_inc);
    sum sum1(out_sum, 10'b0000000001, actual_PC);
    memprog memprog1(Instruction, clk, actual_PC);
    mux2 #4 mux(out_mux, Instruction[11:8], Instruction[3:0], s_inm);
    regfile banco(RD1, RD2, clk, we, out_mux, Instruction[7:4], Instruction[3:0], WD3);
    mux2 mux_ALU(out_mux_ALU, RD2, Instruction[11:4], s_inm);
    alu alu1(WD3, Z_alu, RD1, out_mux_ALU, ALUOp);
    ffd ffZ(clk, reset, Z_alu, wez, zero);
    registro #10 PC(actual_PC, clk, reset, nuevo_PC);

    // Decodificación de la instrucción para obtener los campos específicos
    //assign Opcode = instruction[15:10];
    //assign RA1 = instruction[11:8];
    //assign RA2 = instruction[7:4];
    //assign WA3 = instruction[3:0];
    //assign Inm = instruction[11:4];
    //assign Dir_salto = instruction[9:0];

endmodule
