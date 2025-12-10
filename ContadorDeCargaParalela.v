module ContadorDeCargaParalela( P, Q, PLoad, CLK);

	// Contador de Carga paralela para o contador de rolhas.

	input PLoad, CLK;
	input [6:0] P;
	output [6:0]Q;
	
	wire [6:0]preset;
	wire [6:0]clear;
	
	nand(preset[0], ~PLoad, P[0]);
	nand(preset[1], ~PLoad, P[1]);
	nand(preset[2], ~PLoad, P[2]);
	nand(preset[3], ~PLoad, P[3]);
	nand(preset[4], ~PLoad, P[4]);
	nand(preset[5], ~PLoad, P[5]);
	nand(preset[6], ~PLoad, P[6]);
	
	nand(clear[0], ~PLoad, ~P[0]);
	nand(clear[1], ~PLoad, ~P[1]);
	nand(clear[2], ~PLoad, ~P[2]);
	nand(clear[3], ~PLoad, ~P[3]);
	nand(clear[4], ~PLoad, ~P[4]);
	nand(clear[5], ~PLoad, ~P[5]);
	nand(clear[6], ~PLoad, ~P[6]);
	
		
	and(FF3, ~Q[0], ~Q[1]);
		
	and(FF4, FF3, ~Q[2]);
		
	and(FF5, FF4, ~Q[3]);
		
	and(FF6, FF5, ~Q[4]);
		
	and(FF7, FF6, ~Q[5]);
	
	JK_FlipFlop_Preset_Clear (1'b1, 1'b1, CLK, preset[0], clear[0], Q[0], );
	
	JK_FlipFlop_Preset_Clear (~Q[0], ~Q[0], CLK, preset[1], clear[1], Q[1], );

	JK_FlipFlop_Preset_Clear (FF3, FF3, CLK, preset[2], clear[2], Q[2], );
	
	JK_FlipFlop_Preset_Clear (FF4, FF4, CLK, preset[3], clear[3], Q[3], );
	
	JK_FlipFlop_Preset_Clear (FF5, FF5, CLK, preset[4], clear[4], Q[4], );
	
	JK_FlipFlop_Preset_Clear (FF6, FF6, CLK, preset[5], clear[5], Q[5], );
	
	JK_FlipFlop_Preset_Clear (FF7, FF7, CLK, preset[6], clear[6], Q[6], );

endmodule

