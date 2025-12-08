module DivBCD(A, B, R, S);

	// Divisor com lógica de recuperação;

	input [7:0] A, B;
	output [7:0] R, S;
	
	wire [7:0] P, P1, P2, P3, P4, P5, P6;

	parteDiv( , B, A[7], S[7], P);
	parteDiv(P[0], B, A[6], S[6], P1);
	parteDiv(P1[1:0], B, A[5], S[5], P2);
	parteDiv(P2[2:0], B, A[4], S[4], P3);
	parteDiv(P3[3:0], B, A[3], S[3], P4);
	parteDiv(P4[4:0], B, A[2], S[2], P5);
	parteDiv(P5[5:0], B, A[1], S[1], P6);
	parteDiv(P6[6:0], B, A[0], S[0], R);
	
endmodule