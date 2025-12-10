module main(ini, adicionar, S0, S1, Tampar, CLKplaca, TemR);

	// Modulo responsavel pela contagem de rolhas.
	wire [7:0]P, Z;
	input ini, adicionar, Tampar, CLKplaca;
	output [6:0] S0, S1;
	output TemR;
	
	wire [7:0] Qbuff;
	wire [3:0]BCD0, BCD1;
	wire [6:0]Q;
	
	debouncer(Tampar, CLKplaca, TamparDeb);
	
	edge_detector (CLKplaca, , TamparDeb, TamparDebSlow);
	
	wire PLoad, save, CLK;
	
	or(TemR, Q[0], Q[1], Q[2], Q[3], Q[4], Q[5], Q[6]);
	
	ContadorDecrescente(adicionarFinal, ~ini, S,  );
	
	ContadorDeCargaParalela( Z[6:0], Q, ~PLoad, TamparDebSlow);
	
	Reg8bits(Qbuff, ~CLK, Q, );
	
	and(Tem5, ~Qbuff[6], ~Qbuff[5],  ~Qbuff[4],  ~Qbuff[3], Qbuff[2], ~Qbuff[1], Qbuff[0], CLK); // Verifica se tem 5 rolhas.
	
	or(save, Tem5, adicionar); //Verifica as condições para adicionar rolhas.
	
	and(adicionarFinal, save, S);// Verifica se tem rolhas no dispensador.
	
	or(CLK, adicionar, TamparDeb);//Amarra o funcionamento do circuito as ações de tampar ou adicionar rolhas.
	
	or(PLoad, ini, adicionarFinal);
	
	mux1_8bits(P, 8'b00001111, ini, Z);

	BinaryToBCD(Q, BCD0, BCD1);
	
	Somador8bits(P, , Qbuff, 8'b00001111, );
	
	decodificador7seg(BCD0, S0);

	decodificador7seg(BCD1, S1);
	

endmodule
