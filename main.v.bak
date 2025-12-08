module main(P, PLoad, S0, S1, CLK);

	input [6:0]P;
	input PLoad, CLK;
	output [6:0] S0, S1;
	
	wire [3:0]BCD0, BCD1;
	wire [6:0]Q;
	ContadorDeCargaParalela( P, Q, PLoad, CLK);
	
	BinaryToBCD(Q, BCD0, BCD1);
	
	decodificador7seg(BCD0, S0);

	decodificador7seg(BCD1, S1);
	
endmodule