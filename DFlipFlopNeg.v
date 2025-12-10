module DFlipFlop(D, CK, Q, nQ);


	// FlipFlop D com ativação em borda de decida subida no Clock;
	
	input D, CK;
	output reg Q; 
	output nQ;
	
	always @ (posedge CK)begin
	
	 Q <= D;
	 
	 end
	 
	 not(nQ, Q);
	 

endmodule
