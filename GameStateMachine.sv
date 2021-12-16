module GameStateMachine (input logic Clk, ClearA_LoadB, 
							input [7:0] keycode,
                output logic ready);

	enum logic [4:0] {Start, Game} curr_state, next_state; // States
	//logic Start = 1'b1;
		// Assign 'next_state' based on 'state' and 'Execute'
		always_ff @ (posedge Clk) 
		begin
				if (ClearA_LoadB) begin
					curr_state <= Start;	
				end else begin
					curr_state <= next_state;
		end 
		// Assign outputs based on ‘state’
		end
	   always_comb
		begin
		// Default to be self-looping 	
	
				next_state = curr_state; 
				
				//default signal
				ready = 1'b1;
				
				unique case (curr_state)
				Start :   if(keycode == 8'h28) begin
								next_state = Game;
								end
							 else begin
								next_state = Start;
								end
            Game :   if(ClearA_LoadB == 1'b1) begin
								next_state = Start;
								end
							 else begin
								next_state = Game;
								end
            
				endcase
				
		
		// Assign outputs based on ‘state’
		//Ld_A = 1'b0;
		
				case (curr_state)
						Start: 
							begin
									ready = 1'b1;
									 
									
							end
						Game: 
							begin
									
									ready = 1'b0;
									
							end
						
				endcase
		end
	 
endmodule
