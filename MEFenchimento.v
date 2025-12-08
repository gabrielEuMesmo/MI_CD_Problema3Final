module MEFenchimento(CK, TemR, Start, TemG, Cheia, Motor, Pronto, Enchendo, Alarme);

	input TemR, Start, TemG, Cheia, CK;
	output Motor, Pronto, Enchendo, Alarme;
	wire partEst1, partEst2, EstadoF;
	
	DFlipFlop(Enchendo, CK, Estado, nQ);
	
	and(partEst1, ~Estado, Start, TemR, TemG);
	and(partEst2, Estado, Start, TemR, ~Cheia);
	or(Enchendo, partEst1, partEst2);
	
	not(Alarme, TemR);
	
	and(Pronto, Estado, Start, TemR, Cheia);
	
	and(partMotor1, ~Estado, Start, TemR, ~TemG);
	and(partMotor2, Estado, Start, TemR, Cheia);
	or(Motor, partMotor1, partMotor2);
	
endmodule