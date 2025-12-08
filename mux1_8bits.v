module mux1_8bits(A, B, S, Z);

	// Multiplexador de 8 bits de 2 entradas e 1 saída;

	input [7:0] A, B;
	input S;
	output [7:0]Z;
	
	
	mux1(A[0], B[0], S, Z[0]);
	mux1(A[1], B[1], S, Z[1]);
	mux1(A[2], B[2], S, Z[2]);
	mux1(A[3], B[3], S, Z[3]);
	mux1(A[4], B[4], S, Z[4]);
	mux1(A[5], B[5], S, Z[5]);
	mux1(A[6], B[6], S, Z[6]);
	mux1(A[7], B[7], S, Z[7]);
	
endmodule