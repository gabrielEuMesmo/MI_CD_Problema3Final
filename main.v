module main(ini, adicionar, S0, S1, Tampar, CK, TemR);

	wire [7:0]P, Z;
	input ini, adicionar, Tampar, CK;
	output [6:0] S0, S1;
	output TemR;
	
	wire [7:0] Qbuff;
	wire [3:0]BCD0, BCD1;
	wire [6:0]Q;
	
	debouncer(Tampar, CK, TamparDeb);
	
	edge_detector (CK, , TamparDeb, TamparDebSlow);
	
	wire PLoad, save, CLK;
	or(TemR, Q[0], Q[1], Q[2], Q[3], Q[4], Q[5], Q[6]);
	ContadorDecrescente(adicionarFinal, ~ini, S,  );
	
	ContadorDeCargaParalela( Z[6:0], Q, ~PLoad, TamparDebSlow);
	
	Reg8bits(Qbuff, ~CLK, Q, );
	
	and(Tem5, ~Qbuff[6], ~Qbuff[5],  ~Qbuff[4],  ~Qbuff[3], Qbuff[2], ~Qbuff[1], Qbuff[0], CLK); 
	
	or(save, Tem5, adicionar);
	
	and(adicionarFinal, save, S);
	
	or(CLK, adicionar, Tampar);
	
	or(PLoad, ini, adicionarFinal);
	
	mux1_8bits(P, 8'b00001111, ini, Z);

	BinaryToBCD(Q, BCD0, BCD1);
	
	Somador8bits(P, , Qbuff, 8'b00001111, );
	
	decodificador7seg(BCD0, S0);

	decodificador7seg(BCD1, S1);
	
endmodule