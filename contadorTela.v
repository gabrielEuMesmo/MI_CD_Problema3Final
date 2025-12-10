module contadorTela(Ck, clear, Q);

	// Contador de 0 a 10.
	input Ck, clear;
	
	output [3:0]Q;
	
	wire J2, J3, K2, K1, J0;
	
	contadorDuzia(Ck, clear, S);
	
	JK_FlipFlop_Preset_Clear(J0, 1'b1, S, 1'b1,clear, Q[0], );
	
	JK_FlipFlop_Preset_Clear(Q[0], K1, S, 1'b1,clear, Q[1], );
	
	JK_FlipFlop_Preset_Clear(J2, K2, S, 1'b1,clear, Q[2], );
	
	JK_FlipFlop_Preset_Clear(J3, Q[1], S, 1'b1,clear, Q[3], );
	
	
	and(J2, Q[1], Q[0]);
	and(J3, Q[2], Q[1], Q[0]);
	
	and(K2, Q[1], Q[0]);
	
	or(K1, Q[3], Q[0]);
	
	or(J0, ~Q[1], ~Q[3]);
	

endmodule
