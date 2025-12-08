module contadorTela(Ck, Q);

	input Ck;
	
	output [3:0]Q;
	
	wire clear, FF, FF1, S;
	
	contadorDuzia(Ck, S);
	
	JK_FlipFlop_Preset_Clear(1'b1, 1'b1, S, 1'b1,clear, Q[0], );
	
	JK_FlipFlop_Preset_Clear(Q[0], Q[0], S, 1'b1,clear, Q[1], );
	
	JK_FlipFlop_Preset_Clear(FF, FF, S, 1'b1,clear, Q[2], );
	
	JK_FlipFlop_Preset_Clear(FF1, FF1, S, 1'b1,clear, Q[3], );
	
	and(FF, Q[0], Q[1]);
	and(FF1, FF, Q[2]);
	
	nand(clear, Q[3], ~Q[2], Q[1], Q[0]);
	

endmodule