module compl1 (output wire [3:0] Out, input wire [3:0] Inp, input wire cpl);
  /*
  wire comple1;
  not not1 (comple1, Inp);

  always @(cpl) 
  begin
    if (cpl == 0) begin
      Out = Inp; 
    end
    else begin
      Out = ~Inp;
    end
  end
  */

  //Aqui no podemos hacer modelado de commportamiento porque nuestras variables no son reg

  assign Out = cpl == 1 ? ~Inp : Inp;

endmodule