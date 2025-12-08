module Subtrator8bitsDiv(S, Bout, A, B, C);

	// Subtrator de 8 bits sem Carry In e com um bit de entrada separado;
	input [7:0] B;
	input [6:0] A;
	input C;
	output [7:0] S;
	output Bout;
	
	wire [6:0] F;
	
	SubtratorCompleto(S[0], F[0], C, B[0], );
	SubtratorCompleto(S[1], F[1], A[0], B[1], F[0]);
	SubtratorCompleto(S[2], F[2], A[1], B[2], F[1]);
	SubtratorCompleto(S[3], F[3], A[2], B[3], F[2]);
	SubtratorCompleto(S[4], F[4], A[3], B[4], F[3]);
	SubtratorCompleto(S[5], F[5], A[4], B[5], F[4]);
	SubtratorCompleto(S[6], F[6], A[5], B[6], F[5]);
	SubtratorCompleto(S[7], Bout, A[6], B[7], F[6]);
	
endmodule