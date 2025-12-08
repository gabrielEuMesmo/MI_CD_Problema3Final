module Somador8bits(S, Cout, A, B, Cin);

	input [7:0] A, B;
	input Cin;
	output [7:0] S;
	output Cout;
	
	wire [6:0] F;
	
	SomadorCompleto(S[0], F[0], A[0], B[0], Cin);
	SomadorCompleto(S[1], F[1], A[1], B[1], F[0]);
	SomadorCompleto(S[2], F[2], A[2], B[2], F[1]);
	SomadorCompleto(S[3], F[3], A[3], B[3], F[2]);
	SomadorCompleto(S[4], F[4], A[4], B[4], F[3]);
	SomadorCompleto(S[5], F[5], A[5], B[5], F[4]);
	SomadorCompleto(S[6], F[6], A[6], B[6], F[5]);
	SomadorCompleto(S[7], Cout, A[7], B[7], F[6]);
	
endmodule