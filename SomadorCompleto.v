module SomadorCompleto(S, Cout, A, B, Cin);

	input A, B, Cin;
	output S, Cout;
	
	wire [2:0]F;
	
	xor (F[0], A, B);
	xor (S, F[0], Cin);
	
	and(F[1], A, B);
	and(F[2], F[0], Cin);
	
	or (Cout, F[1], F[2]);
	
endmodule