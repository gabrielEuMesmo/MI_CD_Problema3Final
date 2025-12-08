module DFlipFlopNeg(D, CK, Q, nQ);


	// FlipFlop D com ativação em borda de decida no Clock;
	
	input D, CK;
	output reg Q; 
	output nQ;
	
	always @ (negedge CK)begin
	
	 Q <= D;
	 
	 end
	 
	 not(nQ, Q);
	 
endmodule