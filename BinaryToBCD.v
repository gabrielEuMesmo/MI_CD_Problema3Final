module BinaryToBCD(A, S0, S1);

	// decodificador de binario para BCD utilizando divisões em cascata;

	input [6:0] A;
	output [3:0] S0, S1;
	
	// Divide o resto por 10 em decimal;
	
	DivBCD(A, 4'b1010, S0, S1);
	
endmodule