module key_reader(CLOCK_50, PS2_CLK, PS2_DAT, key_pressed);

input CLOCK_50;

inout PS2_CLK;
inout PS2_DAT;

output reg [4:0] key_pressed;

wire cmd_sent, cmd_error, key_en; // killed signals

PS2_Controller keyboard(
	CLOCK_50,
	1'b0,
	8'd0, //killed
	1'b0, //killed	
	PS2_CLK,					
 	PS2_DAT,					
	cmd_sent, //killed
	cmd_error, //killed
	key_sig,
	key_en //killed
);

wire [7:0] key_sig;

//Define parameters for keys pressed

//NATURALS
parameter Q = 8'b00010101;
parameter W = 8'b00011101;
parameter E = 8'b00100100;
parameter R = 8'b00101101;
parameter T = 8'b00101100;
parameter Y = 8'b00110101;
parameter U = 8'b00111100;
parameter I = 8'b01000011;
parameter O = 8'b01000100;

//INCIDENTALS
parameter TWO 		= 8'b00011110;
parameter THREE 	= 8'b00100110;
parameter FOUR 	= 8'b00100101;
parameter FIVE 	= 8'b00101110;
parameter SIX 		= 8'b00110110;
parameter SEVEN 	= 8'b00111101;
parameter EIGHT 	= 8'b00111110;

//CHORDS
parameter A = 8'b00011100;
parameter S = 8'b00011011;
parameter D = 8'b00100011;
parameter F = 8'b00101011;
parameter G = 8'b00110100;
parameter H = 8'b00110011;
//parameter J = 8'b00111011;
//parameter K = 8'b01000010;

always @(*)
begin
	 case(key_sig)
	 //SCALE PROGRESSION
		Q:
			key_pressed = 5'd1;
		TWO:
			key_pressed = 5'd2;
		W:
			key_pressed = 5'd3;
		THREE:
			key_pressed = 5'd4;
		E:
			key_pressed = 5'd5;
		FOUR:
			key_pressed = 5'd6;
		R:
			key_pressed = 5'd7;
		FIVE:
			key_pressed = 5'd8;
		T:
			key_pressed = 5'd9;
		SIX:
			key_pressed = 5'd10;
		Y:
			key_pressed = 5'd11;
		SEVEN:
			key_pressed = 5'd12;
		U:
			key_pressed = 5'd13;
		EIGHT:
			key_pressed = 5'd14;
		I:
			key_pressed = 5'd15;
	//CHORDAL NOTES
		A:
			key_pressed = 5'd16;
		S:
			key_pressed = 5'd17;
		D:
			key_pressed = 5'd18;
		F:
			key_pressed = 5'd19;
		G:
			key_pressed = 5'd20;
		H:
			key_pressed = 5'd21;
		O:
			key_pressed = 5'd22;
//		K:
//			key_pressed = 5'd23;
		default:
			key_pressed = 5'd0;
	endcase
end

endmodule
	
		
		
