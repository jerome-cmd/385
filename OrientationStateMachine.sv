module OrientationStateMachine (input logic Clk, ClearA_LoadB, 
							input [7:0] keycode,
                output logic [1:0] orientation);

	enum logic [4:0] {Left, Right, Down, Up} curr_state, next_state; // States
	//logic Start = 1'b1;
		// Assign 'next_state' based on 'state' and 'Execute'
		always_ff @ (posedge Clk) 
		begin
				if (ClearA_LoadB) begin
					curr_state <= Left;	
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
				orientation = 2'b00;
				
				unique case (curr_state)
				Left :   if(keycode == 8'h04) begin
								next_state = Left;
								end
							else if(keycode == 8'h07) begin
								next_state = Right;
							end
							else if(keycode == 8'h16) begin
								next_state = Down;
							end
							else if(keycode == 8'h1A) begin
								next_state = Up;
							end
            Right :  if(keycode == 8'h04) begin
								next_state = Left;
								end
							else if(keycode == 8'h07) begin
								next_state = Right;
							end
							else if(keycode == 8'h16) begin
								next_state = Down;
							end
							else if(keycode == 8'h1A) begin
								next_state = Up;
							end
            Down :   if(keycode == 8'h04) begin
								next_state = Left;
								end
							else if(keycode == 8'h07) begin
								next_state = Right;
							end
							else if(keycode == 8'h16) begin
								next_state = Down;
							end
							else if(keycode == 8'h1A) begin
								next_state = Up;
							end
            Up :   if(keycode == 8'h04) begin
								next_state = Left;
								end
							else if(keycode == 8'h07) begin
								next_state = Right;
							end
							else if(keycode == 8'h16) begin
								next_state = Down;
							end
							else if(keycode == 8'h1A) begin
								next_state = Up;
							end
				endcase
				
		
		// Assign outputs based on ‘state’
		//Ld_A = 1'b0;
		
				case (curr_state)
						Left: 
							begin
									orientation = 2'b00;
									 
									
							end
						Right: 
							begin
									
									orientation = 2'b01;
									
							end
						Down:
							begin
									orientation = 2'b10;
									
							end
						Up:
							begin
									orientation = 2'b11;
									
							end
						
				endcase
		end
	 
endmodule
