module mainProject(adicionar, aprovado, reprovado, cheia, garrafa, reset, but, CLK, S0, S1, S2, S3, descartado, posicao, alarme, alarmeGarrafa, valvula, motor, TemGLevel);

	input adicionar, aprovado, reprovado, cheia, garrafa, reset, but, CLK;
	output descartado, posicao, alarme, alarmeGarrafa, valvula, motor, TemGLevel;
	output [6:0] S0, S1, S2, S3;
	
	JK_FlipFlop_Preset_Clear (1'b1, 1'b1,TemGDeb, 1'b1, 1'b1, TemGLevel, );
	
	edge_detector(CLK, ,butDeb, PulseBut); 
	
	debouncer(garrafa, CLK, TemGDeb);
	
	debouncer(cheia, CLK, cheiaDeb);
	
	debouncer(adicionar, CLK, adicionarDeb);
	
	debouncer(reprovado, CLK, reprovadoDeb);
	
	debouncer(aprovado, CLK, aprovadoDeb);
	
	debouncerNeg(but, CLK, butDeb);
	
	debouncerNeg(reset, CLK, resetDeb);
	
	main( ~Start, adicionarDeb, S0, S1, pronto, CLK, TemR);

	mainContadorDuzias(conta, ~Start, S2, S3);
	
	Start_Stop(PulseBut, garrafa, CLK, Start, alarmeGarrafa, resetDeb);
	
	MEFenchimento(CLK, TemR, Start, garrafa, cheiaDeb, motor, pronto, valvula, alarme);
	
	CQ(pronto, aprovadoDeb, reprovadoDeb, CLK, conta, descartado, posicao);
	
endmodule
	
	
	