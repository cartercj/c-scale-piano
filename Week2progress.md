# Task #

After successfully mapping the key signals from the **PS2\_Controller** module to different output signals on the DE2 board, the next task is manipulating the internal Data In module state machine to only generate the signal for as long as (or roughly as long as) the key is pressed.



# Results #

After reading over the code for the entirety of the **PS2\_Controller** module, we determined that the **Data\_In** module would be the best place to manipulate in order to limit the duration of the signal sent from the keyboard to the DE2 board.  Previously the last sent signal was stored indefinitely until a new signal was sent.  This created a problem as a piano does not play a note indefinitely.  After many different attempts at manipulating the state machine, we discovered the best place to do so was in the output generating always block.  To limit the duration, we created a simple clock driven counter which reset the output if the state machine was in the IDLE state for more than 27000000 cycles. This number was chosen as it relates to the initial delay of the keyboard generated signal before repeating. As such, the output signal will be consistent if the key is held, and will contain a slight amount of delay at the end of a not press, consistent with how a piano sound when a key is struck.

Below is the edit which was made to the **Data\_In** module.


```
//****NOTE***** Edited by Christian Carter and Sam Mirizza to account		
//					 for release function	
always @(posedge clk)
begin
	if (reset == 1'b1)
		received_data		<= 8'h00;
	else if (s_ps2_receiver == PS2_STATE_4_STOP_IN)
	begin
		received_data	<= data_shift_reg;
		counter <= 26'd0;
	end	
	else if ((s_ps2_receiver == PS2_STATE_0_IDLE) &&
				(counter < 26'd27000000))
			counter	<= counter + 1'd1;
	else if ((counter == 26'd27000000))
	begin
			counter <= 26'd0;										
			received_data <= 8'h00;								
	end
end

reg [25:0] counter;
//////////////////////////////////////////////////////////////////////
```