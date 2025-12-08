module contadorDuzia(Ck, clear, S);

	input Ck, clear;
	output S;
	
	wire [3:0]Q;
	wire J0, J2, J3, K2part,K2 ;
	
	JK_FlipFlop_Preset_Clear(J0, 1'b1, Ck, 1'b1,clear, Q[0], );
	
	JK_FlipFlop_Preset_Clear(Q[0], Q[0], Ck, 1'b1,clear, Q[1], );
	
	JK_FlipFlop_Preset_Clear(J2, K2, Ck, 1'b1,clear, Q[2], );
	
	JK_FlipFlop_Preset_Clear(J3, Q[2], Ck, 1'b1,clear, Q[3], );
	
	or(J0, ~Q[2], ~Q[3]);
	
	and(J2, Q[1], Q[0]);
	and(J3, Q[2], Q[1], Q[0]);
	
	and(K2part, Q[1], Q[0]);
	or(K2, Q[3], K2part);
	
	and(S, Q[3], Q[2]);
	
endmodule