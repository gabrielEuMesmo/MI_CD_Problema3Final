module divisorFreq(CK, Q);

	// Divisor de frequecia com FlipFlop D;

	input CK;
	output Q;
	
	wire T;
	
	
	DFlipFlop(T, CK, Q, T);
	
endmodule 