module Reg8bits(Q, CK, D, Enable);

	// Registrador de 8 bits com lógica de Enable;

	input [7:0]D;
	output [7:0]Q;
	input CK, Enable;
	
	wire [7:0]T;
	
	DFlipFlopNeg(T[0], CK, Q[0],);
	DFlipFlopNeg(T[1], CK, Q[1],);
	DFlipFlopNeg(T[2], CK, Q[2],);
	DFlipFlopNeg(T[3], CK, Q[3],);
	DFlipFlopNeg(T[4], CK, Q[4],);
	DFlipFlopNeg(T[5], CK, Q[5],);
	DFlipFlopNeg(T[6], CK, Q[6],);
	DFlipFlopNeg(T[7], CK, Q[7],);
	
	// Multiplexadores responsaveis pela lógica de Enable;
	
	mux1(D[0], Q[0], Enable, T[0]);
	mux1(D[1], Q[1], Enable, T[1]);
	mux1(D[2], Q[2], Enable, T[2]);
	mux1(D[3], Q[3], Enable, T[3]);
	mux1(D[4], Q[4], Enable, T[4]);
	mux1(D[5], Q[5], Enable, T[5]);
	mux1(D[6], Q[6], Enable, T[6]);
	mux1(D[7], Q[7], Enable, T[7]);
endmodule