`timescale 1ns/10ps

module cuenta1_tb;
  reg [2:0] t_Valor;
  reg t_start, t_clk;
  wire [3:0] t_Cuenta;
  wire t_fin;

    cuenta1 cuenta1_1(t_Valor, t_start, t_clk, t_Cuenta, t_fin);

always //siempre activo, no hay condición de activación
begin
t_clk = 1;
#20;
t_clk = 0;
#20;
end

      initial
      begin
        $monitor("tiempo=%0d Valor=%b start=%b clk=%b Cuenta=%b fin=%b", $time, t_Valor, t_start, t_clk, t_Cuenta, t_fin);
        $dumpfile("cuenta1_tb.vcd");
        $dumpvars;

        t_Valor = 3'b000;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b001;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b010;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b011;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b100;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b101;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b110;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;

        t_Valor = 3'b111;
        t_start = 1'b1;
        #10;
        t_start = 1'b0;
        #270;
        $finish;
      end
endmodule