module StateMachine (input logic Clk, ClearA_LoadB, collision,
                output logic [7:0] keycode2);

	enum logic [5:0] {A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, AA, BB, CC, DD, EE, FF, GG, HH, II, JJ, KK, LL, MM, NN, OO, PP, QQ, RR, SS, TT, AAA, BA, CA, DA, EA, FA, GA, HA, IA, JA, KA, LA, MA, NA, OA, PA, QA, RA, SA, TA} curr_state, next_state; // States
	//logic Start = 1'b1;
		// Assign 'next_state' based on 'state' and 'Execute'
		always_ff @ (posedge Clk) 
		begin
				if (ClearA_LoadB) begin
					curr_state <= A;	
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
				keycode2 = 8'h50;	
				
				unique case (curr_state)
				A :    next_state = B;
            B :    next_state = C;
            C :    next_state = D;
            D :    next_state = E;
            E :    next_state = F;
				F :    next_state = G;
				G :    next_state = H;
				H :    next_state = I;
				I :    next_state = J;
				J : 	 next_state = K;
				K : 	 next_state = L;
				L : 	 next_state = M;
				M : 	 next_state = N;
				N : 	 next_state = O;
				O : 	 next_state = P;
				P : 	 next_state = Q;
				Q : 	 next_state = R;
				R : 	 next_state = S;
            S :    next_state = T;
				T:     next_state = AA;
				AA: 	next_state = BB;
				BB:	next_state = CC;
				CC:		next_state = DD;
				DD:		next_state = EE;
				EE:		next_state = FF;
				FF:		next_state = GG;
				GG:		next_state = HH;
				HH:		next_state = II;
				II:		next_state = JJ;
				JJ:		next_state = KK;
				KK:		next_state = LL;
				LL:		next_state = MM;
				MM:		next_state = NN;
				NN:		next_state = OO;
				OO:		next_state = PP;
				PP:		next_state = QQ;
				QQ:		next_state = RR;
				RR:		next_state = SS;
				SS:		next_state = TT;
				TT:		next_state = AAA;
				AAA:		next_state = BA;
				BA:		next_state = CA;
				CA:		next_state = DA;
				DA:		next_state = EA;
				EA:		next_state = FA;
				FA:		next_state = GA;
				GA:		next_state = HA;
				HA:		next_state = IA;
				IA:		next_state = JA;
				JA:		next_state = KA;
				KA:		next_state = LA;
				LA:		next_state = MA;
				MA:		next_state = NA;
				NA:		next_state = OA;
				OA:		next_state = PA;
				PA:		next_state = QA;
				QA:		next_state = RA;
				RA:		next_state = SA;
				SA:		next_state = TA;
				TA: 		next_state = A;
				endcase
				
		
		// Assign outputs based on ‘state’
		//Ld_A = 1'b0;
		
				case (curr_state)
						A: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									 
									
							end
						B: 
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
						C:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
									
							end
						D:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
							
						E: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end
						F:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

									
							end
						G:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

								
							end
						H: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						I:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
						J:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						K:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end	
	
						L:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
						M:
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end	
						N:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						O:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

								
							end
							
						P:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						Q:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
							
						R:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						S:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
							
						T:
						begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
							
							
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	AA: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									 
									
							end
						BB: 
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
						CC:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
									
							end
						DD:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
							
						EE: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end
						FF:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

									
							end
						GG:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

								
							end
						HH: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						II:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
						JJ:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						KK:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end	
	
						LL:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
						MM:
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end	
						NN:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						OO:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end

								
							end
							
						PP:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h4f;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						QQ:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h51;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
							
						RR:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h51;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						SS:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h51;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
							
						TT:
						begin
									if(collision == 1'b0) begin
									keycode2 = 8'h51;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
AAA: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									 
									
							end
						BA: 
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
						CA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
									
							end
						DA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end
							
						EA: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end
						FA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

									
							end
						GA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

								
							end
						HA: 
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						IA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
						JA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						KA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
							end	
	
						LA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
						MA:
							begin
									
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									
								
							end	
						NA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						OA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end

								
							end
							
						PA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						QA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
							
						RA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end
									

							end
						SA:
							begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end

									
							end
							
						TA:
						begin
									if(collision == 1'b0) begin
									keycode2 = 8'h52;
									end
									
									else begin
									keycode2 = 8'h00;
									end

							end
							
							default:
							keycode2 = 8'h50;
							
						
				endcase
		end
	 
endmodule
