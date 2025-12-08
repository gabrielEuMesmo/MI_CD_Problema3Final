module debouncer(entrada, CK, saida);

	// Deboucer com FlipFlop em cascata;

	input CK, entrada;
	
	output saida;
	
	wire [1:0]T;
	
	wire [15:0]slowCK;

	divisorFreq(CK, slowCK[0]);
	divisorFreq(slowCK[0], slowCK[1]);
	divisorFreq(slowCK[1], slowCK[2]);
	divisorFreq(slowCK[2], slowCK[3]);
	divisorFreq(slowCK[3], slowCK[4]);
	divisorFreq(slowCK[4], slowCK[5]);
	divisorFreq(slowCK[5], slowCK[6]);
	divisorFreq(slowCK[6], slowCK[7]);
	divisorFreq(slowCK[7], slowCK[8]);
	divisorFreq(slowCK[8], slowCK[9]);
	divisorFreq(slowCK[9], slowCK[10]);
	divisorFreq(slowCK[10], slowCK[11]);
	divisorFreq(slowCK[11], slowCK[12]);
	divisorFreq(slowCK[12], slowCK[13]);
	divisorFreq(slowCK[13], slowCK[14]);
	divisorFreq(slowCK[14], slowCK[15]);
	
	DFlipFlop(entrada, slowCK[15], T[0], );
	
	DFlipFlop(T[0], slowCK[15], ,T[1] );
	
	and(saida, T[0], T[1]);
	
endmodule