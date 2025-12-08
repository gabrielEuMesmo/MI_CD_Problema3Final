module SubtratorCompleto(S, Bout, A, B, Bin);

	// Subtrator Completo de 1 bit;

	input A, B, Bin;
	output S, Bout;
	
	wire [2:0]F;
	
	xor (F[0], A, B);
	xor (S, F[0], Bin);
	
	and (F[1], B, ~A);
	and (F[2], ~F[0], Bin);
	
	or (Bout, F[1], F[2]);
endmodule