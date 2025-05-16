module manipular_vetores( 
    input [31:0] entrada,
    output [31:0] saida );

assign saida[31:24] = entrada[7:0];   // Byte 0 da entrada vai para o Byte 3 da saída
assign saida[23:16] = entrada[15:8];  // Byte 1 da entrada vai para o Byte 2 da saída
assign saida[15:8]  = entrada[23:16]; // Byte 2 da entrada vai para o Byte 1 da saída
assign saida[7:0]   = entrada[31:24]; // Byte 3 da entrada vai para o Byte 0 da saída


endmodule