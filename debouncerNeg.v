module debouncerNeg(entrada, CK, saida);

	// Deboucer com FlipFlop em cascata e saida negada;

	input CK, entrada;
	
	output saida;
	
	wire [1:0]T;
	wire Nentrada;
	
	divisorFreq(CK, slowCK);
	
	not(Nentrada, entrada);
	
	DFlipFlop(Nentrada, slowCK, T[0], );
	
	DFlipFlop(T[0], slowCK, ,T[1] );
	
	and(saida, T[0], T[1]);
	
endmodule
