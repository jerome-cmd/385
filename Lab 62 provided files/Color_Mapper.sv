`define NUM_REGS 640
`define NUM_REGS_1 480
module  color_mapper ( input        [9:0] BallX, BallX_2, BallY, BallY_2, DrawX, DrawY, Ball_size, Ball_Size_2, 
								//input [1:0] Direction,
								input [79:0][59:0] LOCAL_REG,
								input blank, 
                       output logic [7:0]  Red, Green, Blue );
    
    logic ball_on;
	 logic ball2_on;	 
 /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 12 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
	 //logic [59:0] [79:0] LOCAL_REG ;
    int DistX, DistY, Size; // ball 1
	 assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
	 
    assign Size = Ball_size;
	 
	 int DistX1, DistY1, Size1; // ball 2
	 assign DistX1 = DrawX - BallX_2;
    assign DistY1 = DrawY - BallY_2;
    assign Size1 = Ball_Size_2;
	

	
	  
    always_comb
    begin:Ball_on_proc
        if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
            ball_on = 1'b1;
				
        else 
            ball_on = 1'b0;
     end 
	  
	  always_comb
    begin:Ball_on_proc2
        if ( ( DistX1*DistX1 + DistY1*DistY1) <= (Size1 * Size1) ) 
            ball2_on = 1'b1;
        else 
            ball2_on = 1'b0;
     end 
       
    always_comb
    begin:RGB_Display
	 if(blank == 1'b1) begin
        if ((ball_on == 1'b1) || ball2_on == 1'b1)  begin 
            Red = 8'hF3;
            Green = 8'h0E;
            Blue = 8'h0E;
        end
		  
		  else if((DrawY % (480/60) == 0 || DrawX % (640/80) == 0))begin
				Red = 8'h51;
				Green = 8'h7c;
				Blue = 8'haf;
		  end
		  
        else if(LOCAL_REG[DrawX/80][DrawY/60] == 1'b1) begin 
		  //for(int i = 0; i < 80; i = i+1)begin
			//for(int j = 0; j < 60; j = j + 1) begin=
				Red = 8'h00;
            Green = 8'hFF;
            Blue = 8'h00;
		  end 
		  else begin
				Red = 8'h00;
            Green = 8'h00;
            Blue = 8'h00;
			end
	end
		  //end
		//end
		//end
			
	else begin
		Red = 8'h00;
      Green = 8'h00;
      Blue = 8'h00;
	end	
   end	 
endmodule

