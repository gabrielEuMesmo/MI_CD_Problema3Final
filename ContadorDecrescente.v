module ContadorDecrescente(CLK, Reset, S, Q);

	//Contador Decrescente com inicio em 15;

	input CLK, Reset;
	output S;
	
	output [3:0]Q;
	
	wire FF3, FF4;
	
	or(S, Q[0], Q[1], Q[2], Q[3]);


	and(FF3, ~Q[0], ~Q[1]);
		
	and(FF4, FF3, ~Q[2]);
		
	
	JK_FlipFlop_Preset_Clear (1'b1, 1'b1, CLK, ~Reset, 1'b1, Q[0], );
	
	JK_FlipFlop_Preset_Clear (~Q[0], ~Q[0], CLK, ~Reset, 1'b1, Q[1], );

	JK_FlipFlop_Preset_Clear (FF3, FF3, CLK, ~Reset, 1'b1, Q[2], );
	
	JK_FlipFlop_Preset_Clear (FF4, FF4, CLK, ~Reset, 1'b1, Q[3], );
	

endmodule
