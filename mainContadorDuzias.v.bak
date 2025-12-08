module mainContadorDuzias(Ck, S0, S1);

	input Ck;
	output [6:0] S0, S1;
	
	contadorTela(Ck, Q);
	
	BinaryToBCD(Q, BCD0, BCD1);
	
	decodificador7seg(BCD0, S0);
	
	decodificador7seg(BCD1, S1);
	
endmodule