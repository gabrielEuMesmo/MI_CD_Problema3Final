module mainProject(adicionar, aprovado, reprovado, cheia, garrafa, reset, but, CLK,CLK1, S0, S1, S2, S3, descartado, posicao, alarme, alarmeGarrafa, valvula, motor, TemGLevel);

	input adicionar, aprovado, reprovado, cheia, garrafa, reset, but, CLK, CLK1;
	output descartado, posicao, alarme, alarmeGarrafa, valvula, motor, TemGLevel;
	output [6:0] S0, S1, S2, S3;
	//
	
	edge_detector(CLK, ,butDeb, PulseBut); 
	
	debouncer(adicionar, CLK, adicionarDeb);
	
	debouncer(reprovado, CLK, reprovadoDeb);
	
	debouncer(aprovado, CLK, aprovadoDeb);

	
	debouncerNeg(but, CLK, butDeb);
	
	debouncerNeg(reset, CLK, resetDeb);
	
	main( ~Start, adicionarDeb, S0, S1, posicao, CLK, TemR);
	
	and(Enable, Start, ~posicao);

	mainContadorDuzias(conta, Start, S2, S3); 
	
	Start_Stop(PulseBut, garrafa, CLK, Start, alarmeGarrafa, resetDeb);
	
	MEFenchimento(CLK, TemR, Enable, garrafa, cheia, motor, pronto, valvula, alarme);
	
	CQ(pronto, aprovadoDeb, reprovado, CLK1, conta, descartado, posicao);
	
endmodule
	
	
	