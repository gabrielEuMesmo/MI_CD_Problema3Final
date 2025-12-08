module parteDiv(A, B, C, S, P);

	// Módulo responsável pela Subtração ou recuperação do valor anterior;
	
	input [7:0]B;
	input [6:0]A;
	input C;
	output S;
	output [7:0] P;
	
	wire Bout;
	wire [7:0] Sneg;
	
	not(S, Bout);
	
	Subtrator8bitsDiv(Sneg, Bout, A, B, C);
	
	// Multiplrxadores responsaveis por representar o resultado anterior ou o resultado da subtração; 
	
	mux1(Sneg[0],    C, Bout, P[0]);
	mux1(Sneg[1], A[0], Bout, P[1]);
	mux1(Sneg[2], A[1], Bout, P[2]);
	mux1(Sneg[3], A[2], Bout, P[3]);
	mux1(Sneg[4], A[3], Bout, P[4]);
	mux1(Sneg[5], A[4], Bout, P[5]);
	mux1(Sneg[6], A[5], Bout, P[6]);
	mux1(Sneg[7], A[6], Bout, P[7]);
	
endmodule