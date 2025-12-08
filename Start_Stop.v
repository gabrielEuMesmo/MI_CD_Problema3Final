module Start_Stop(But, TemG, CLK, Start, AlarmeGarrafa, reset);

	input But, TemG, CLK, reset;
	output Start, AlarmeGarrafa;
	
	wire J0, J1part1, J1part2, J1;
	
	wire [1:0] Q;
	
	and(J0, ~Q[1], TemG, But);
	
	and(J1part1, Q[0],~TemG);
	
	and(J1part2, But,~TemG);
	
	or(J1, Q[1], J1part1, J1part2);
	
	and(AlarmeGarrafa, Q[0], ~Q[1]);
	
	and(Start, ~Q[0], Q[1]);
	
	JK_FlipFlop_Preset_Clear(J0, ~TemG, CLK, 1'b1,  ~reset, Q[0], );
	
	JK_FlipFlop_Preset_Clear(J1, But, CLK, 1'b1,  ~reset, Q[1], );
	
endmodule