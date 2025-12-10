module CQ(Pronto, Aprovado, Reprovado, CLK, Conta, Descarte, Posicao);

	input Pronto, Aprovado, Reprovado, CLK;
	output Conta, Descarte, Posicao;
	//MEF de mealy responsavel pelo controle de qualidade.
	wire Q0;

	DFlipFlop(Q0f, CLK, Q0, );
	
	and(Q0part1, ~Q0, Pronto);
	
	and(Q0part2, Q0, ~Pronto, ~Aprovado, ~Reprovado);
	
	or(Q0f, Q0part1, Q0part2);
	
	or(Posicao, Q0, Pronto);
	
	and(Descarte, Q0, Reprovado);
	
	and(Conta, Q0, Aprovado);

endmodule
