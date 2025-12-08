module decodificador7seg(A, S);

	// Decodificador de uma palavra binaria de 4 bits para saida em display de 7 segmentos;
	input [3:0]A;
	output [6:0]S;
	
	wire [24:0]T;
	
	and(T[0], ~A[3], A[2], ~A[1], ~A[0]); 
	and(T[1], ~A[3], ~A[2], ~A[1], A[0]);
	and(T[2], A[3], A[2], ~A[1], A[0]);
	and(T[3], A[3], ~A[2], A[1], A[0]);
	or(S[0], T[0], T[1], T[2], T[3]);
	
	and(T[4], ~A[3], A[2], ~A[1], A[0]); 
	and(T[5], A[3], A[1], A[0]);
	and(T[6], A[2], A[1], ~A[0]);
	and(T[7], A[3], A[2], ~A[0]);
	or(S[1], T[4], T[5], T[6], T[7]);
	
	and(T[8], ~A[3], ~A[2], A[1], ~A[0]); 
	and(T[9], A[3], A[2], A[1]);
	and(T[10], A[3], A[2], ~A[0]);
	or(S[2], T[8], T[9], T[10]);
	
	and(T[11], ~A[3], A[2], ~A[1], ~A[0]); 
	and(T[12], ~A[3], ~A[2], ~A[1], A[0]);
	and(T[13], A[3], ~A[2], A[1], ~A[0]);
	and(T[14], A[2], A[1], A[0]);
	or(S[3], T[11], T[12], T[13], T[14]);
	
	and(T[15], ~A[3], A[0]); 
	and(T[16], ~A[3], A[2], ~A[1]);
	and(T[17], A[3], ~A[2], ~A[1], A[0]);
	or(S[4], T[15], T[16], T[17]);
	
	and(T[18], ~A[3], ~A[2], A[1]); 
	and(T[19], ~A[3], A[1], A[0]);
	and(T[20], A[3], A[2], ~A[1], A[0]);
	and(T[24], ~A[3], ~A[2], A[0]);
	or(S[5], T[18], T[19], T[20], T[24]);
	
	and(T[21], ~A[3], A[2], A[1], A[0]); 
	and(T[22], ~A[3], ~A[2], ~A[1]);
	and(T[23], A[3], A[2], ~A[1], ~A[0]);
	or(S[6], T[21], T[22], T[23]);
	
endmodule