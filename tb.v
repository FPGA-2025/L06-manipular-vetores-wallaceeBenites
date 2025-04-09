module tb();

// Sinais gerais
reg   [31:0] entrada;
wire  [31:0] saida;

reg [31:0] dados_arquivo [0:3];

manipular_vetores manip( 
    .entrada(entrada),
    .saida(saida)
);

integer i;

initial begin
  
  $readmemh("teste.txt", dados_arquivo); // le o arquivo de entrada e guarda em dados_arquivo

  $dumpfile("saida.vcd");
  $dumpvars(0, tb);

  $monitor("entrada=%h, saida=%h", entrada, saida);
  
  for (i = 0; i < 4; i = i + 1) begin
    entrada = dados_arquivo[i];
    #1;
  end

end

endmodule