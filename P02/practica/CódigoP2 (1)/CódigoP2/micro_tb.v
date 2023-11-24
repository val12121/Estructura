`timescale 1 ns / 10 ps
module microc_tb;
// declaración de variables
// instanciación del camino de datos
// generación de reloj clk
// Reseteo y configuración de salidas del testbench

  wire[5:0] t_Opcode;
  wire t_zero;
  reg t_clk, t_reset, s_inc, s_inm, we, wez;
  reg[2:0] t_aluop;

  microc microc1(t_Opcode, t_zero, t_clk, t_reset, s_inc, s_inm, we, wez, aluop);

always 
begin
t_clk = 1;
#20;
t_clk = 0;
#20;
end

initial
begin
$dumpfile("cpu_tb.vcd");
$dumpvars;

t_reset = 1'b1;
#8;
t_reset = 1'b0;
// ... señal de reset
end
// bloque simulación señales control por ciclo
initial
begin
  #10;
  //Pocisión 0
  s_inc = 1;
  s_inm =1;
  we=1;
  wez=0;
  t_aluop= 3'b000;
  
  #20;
  //Pocisión 1
  s_inc = 1;
  s_inm = 1;
  we= 1;
  wez= 0;
  t_aluop = 3'b000;
  
  //#20;
  //Pocisión 2
  //t_clk = 0;
  //s_inc = 1;
  //reset = 0;
  //s_inm = 0;
  //we= 1;
  //wez= 0;
  //t_aluop= 3'b001;
  
  //#20;
  //Pocisión 3
  //t_clk = 0;
  //s_inc = 1;
  //reset = 0;
  //s_inm = 0;
  //we = 1;
  //wez = 0;
  //t_aluop= 3'b001; //Operaciones aritmeticas
  
  //#20;
  //Pocisión 4
  //t_clk = 0;
  //s_inc = 1;
  //reset = 0;
  //s_inm = 0;
  //we= 0;
  //wez= 0;
  //t_aluop = 3'b000;
  
  //#20;
  //# Pocisión 5
  //t_clk = ;
  //s_inc = ;
  //reset = ;
  //s_inm = ;
  //we= ;
  //wez= ;
  //t_aluop = 3'b000;
  

$finish;
end

endmodule