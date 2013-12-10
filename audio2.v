//This code has been adapted from John Loomis's code for outputting audio to the DE2 board (http://www.johnloomis.org/digitallab/audio/audio2/audio2.html).
//Frequencies for notes on the c-scale were gathered from information on Wikipeida regarding piano notes and frequencies (http://en.wikipedia.org/wiki/Piano_key_frequencies).
//References to Aaron Pittenger and Rachel Grady's project "DE2 Analog Audio Output with Square Wave Generation" have been made for initial adaptations of John Loomis's code (DE2 Analog Audio Output with Square Wave Generation).

//Christian Carter and Sam Mirizzi have made modifications to this code. Code appearing after the break is written by Sam and Christian.

module audio2(
  // Clock Input (50 MHz)
  input CLOCK_50, // 50 MHz
  input CLOCK_27, // 27 MHz
  //  Push Buttons
  input  [3:0]  KEY,
  //  DPDT Switches 
  input  [17:0]  SW,
  //  LEDs
  output  [8:0]  LEDG,  //  LED Green[8:0]
  output  [17:0]  LEDR, //  LED Red[17:0]
  // I2C
  inout  I2C_SDAT, // I2C Data
  output I2C_SCLK, // I2C Clock
  // Audio CODEC
  output/*inout*/ AUD_ADCLRCK, // Audio CODEC ADC LR Clock
  input	 AUD_ADCDAT,  // Audio CODEC ADC Data
  output /*inout*/  AUD_DACLRCK, // Audio CODEC DAC LR Clock
  output AUD_DACDAT,  // Audio CODEC DAC Data
  inout	 AUD_BCLK,    // Audio CODEC Bit-Stream Clock
  output AUD_XCK,     // Audio CODEC Chip Clock
  //  GPIO Connections
  inout  [35:0]  GPIO_0, GPIO_1,
  
  input PS2_DAT, PS2_CLK,
  
  //HEX DISPLAY OUTPUT
  output reg [6:0]hex1,
  output reg [6:0]hex2,
  output reg [6:0]hex3,
  output reg [6:0]hex4
);

wire RST;
assign RST = KEY[0];

// reset delay gives some time for peripherals to initialize
wire DLY_RST;
Reset_Delay r0(	.iCLK(CLOCK_50),.oRESET(DLY_RST) );


assign	TD_RESET = 1'b1;  // Enable 27 MHz

VGA_Audio_PLL 	p1 (	
	.areset(~DLY_RST),
	.inclk0(CLOCK_27),
	.c0(VGA_CTRL_CLK),
	.c1(AUD_CTRL_CLK),
	.c2(VGA_CLK)
);

I2C_AV_Config u3(	
//	Host Side
  .iCLK(CLOCK_50),
  .iRST_N(KEY[0]),
//	I2C Side
  .I2C_SCLK(I2C_SCLK),
  .I2C_SDAT(I2C_SDAT)	
);

assign	AUD_ADCLRCK	=	AUD_DACLRCK;
assign	AUD_XCK		=	AUD_CTRL_CLK;

audio_clock u4(	
//	Audio Side
   .oAUD_BCK(AUD_BCLK),
   .oAUD_LRCK(AUD_DACLRCK),
//	Control Signals
  .iCLK_18_4(AUD_CTRL_CLK),
   .iRST_N(DLY_RST)	
);

audio_converter u5(
	// Audio side
	.AUD_BCK(AUD_BCLK),       // Audio bit clock
	.AUD_LRCK(AUD_DACLRCK), // left-right clock
	.AUD_ADCDAT(AUD_ADCDAT),
	.AUD_DATA(AUD_DACDAT),
	// Controller side
	.iRST_N(DLY_RST),  // reset
	.AUD_outL(audio_outL),
	.AUD_outR(audio_outR),
	.AUD_inL(audio_inL),
	.AUD_inR(audio_inR)
);
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////

////INTERFACE "Oh When The Saints Go Marching In"
wire [15:0]owts_mel_notes;
wire [15:0]owts_harm_notes;
owts_melody_player owts_mel_play(CLOCK_50, beats, owts_mel_notes);
owts_harmony_player owts_harm_play(CLOCK_50, beats, owts_harm_notes);

////INTERFACE "Angels Who Have Heard On High"
wire [15:0]awhhoh_mel_notes;
wire [15:0]awhhoh_harm_notes;
awhhoh_melody_player awhhoh_mel_play(CLOCK_50, beats2, awhhoh_mel_notes);
awhhoh_harmony_player awhhoh_harm_play(CLOCK_50, beats2, awhhoh_harm_notes);

////INTERFACE "God Rest Ye Merry Gentlemen"
wire [15:0]grymg_mel_notes;
wire [15:0]grymg_harm_notes;
grymg_melody_player grymg_mel_play(CLOCK_50, beats2, grymg_mel_notes);
grymg_harmony_player grymg_harm_play(CLOCK_50, beats2, grymg_harm_notes);


//NOTE GUIDE HEX SHIFT STATE MACHINE
wire [6:0]owts1;
wire [6:0]owts2;
wire [6:0]owts3;
wire [6:0]owts4;
wire [6:0]awhhoh1;
wire [6:0]awhhoh2;
wire [6:0]awhhoh3;
wire [6:0]awhhoh4;
wire [6:0]grymg1;
wire [6:0]grymg2;
wire [6:0]grymg3;
wire [6:0]grymg4;
wire [6:0]notes_new1_wire_owts;
wire [6:0]notes_new2_wire_owts;
wire [6:0]notes_new3_wire_owts;
wire [6:0]notes_new4_wire_owts;
wire [6:0]notes_new1_wire_awhhoh;
wire [6:0]notes_new2_wire_awhhoh;
wire [6:0]notes_new3_wire_awhhoh;
wire [6:0]notes_new4_wire_awhhoh;
wire [6:0]notes_new1_wire_grymg;
wire [6:0]notes_new2_wire_grymg;
wire [6:0]notes_new3_wire_grymg;
wire [6:0]notes_new4_wire_grymg;
reg [6:0]notes_new1;
reg [6:0]notes_new2;
reg [6:0]notes_new3;
reg [6:0]notes_new4;
wire [6:0]beats;
wire [7:0]beats2;
counter count(CLOCK_50, RST, SW[0], beats);
counter_2 count2(CLOCK_50, RST, SW[0], beats2);
owts_melody owts_mel(beats, owts1, owts2, owts3, owts4);
awhhoh_melody awhhoh_mel(beats2, awhhoh1, awhhoh2, awhhoh3, awhhoh4);
grymg_melody grymg_mel(beats2, grymg1, grymg2, grymg3, grymg4);

seven_segment_decoder hex_disp(owts1, notes_new1_wire_owts); 
seven_segment_decoder hex_disp2(owts2, notes_new2_wire_owts); 
seven_segment_decoder hex_disp3(owts3, notes_new3_wire_owts); 
seven_segment_decoder hex_disp4(owts4, notes_new4_wire_owts); 

seven_segment_decoder hex_disp5(awhhoh1, notes_new1_wire_awhhoh); 
seven_segment_decoder hex_disp6(awhhoh2, notes_new2_wire_awhhoh); 
seven_segment_decoder hex_disp7(awhhoh3, notes_new3_wire_awhhoh); 
seven_segment_decoder hex_disp8(awhhoh4, notes_new4_wire_awhhoh); 

seven_segment_decoder hex_disp9(grymg1, notes_new1_wire_grymg); 
seven_segment_decoder hex_disp10(grymg2, notes_new2_wire_grymg); 
seven_segment_decoder hex_disp11(grymg3, notes_new3_wire_grymg); 
seven_segment_decoder hex_disp12(grymg4, notes_new4_wire_grymg); 

reg [2:0]S;
reg [2:0]NS;

parameter MET_1 				= 3'd0;
parameter MET_2 				= 3'd1;
parameter MET_3 				= 3'd2;
parameter MET_LOOP_OWTS 	= 3'd3;
parameter MET_LOOP_AWHHOH  = 3'd4;
parameter MET_LOOP_GRYMG   = 3'd5;

always @(*)
begin
	case(S)
		MET_1:
		begin
			if(beats < 7'd1)
			begin
				NS = MET_1;
			end
			else
				NS = MET_2;
		end
		MET_2:
		begin
			if(beats < 7'd2)
			begin
				NS = MET_2;
			end
			else
			begin
				NS = MET_3;
			end
		end
		MET_3:
		begin
			if(beats < 7'd3)
			begin
				NS = MET_3;
			end
			else if (SW[17] == 1'b1 && SW[13] == 1'b0 && SW[9] == 1'b0)
			begin
				NS = MET_LOOP_OWTS;
			end
			else if (SW[17] == 1'b0 && SW[13] == 1'b1 && SW[9] == 1'b0)
			begin
				NS = MET_LOOP_AWHHOH;
			end
			else if (SW[17] == 1'b0 && SW[13] == 1'b0 && SW[9] == 1'b1)
			begin
				NS = MET_LOOP_GRYMG;
			end
			else
				NS = MET_1;
		end
		MET_LOOP_OWTS:
		begin
			if(beats < 7'd68)
			begin
				NS = MET_LOOP_OWTS;
			end
			else
			begin
				NS = MET_1;
			end
		end
		MET_LOOP_AWHHOH:
		begin
			if(beats2 < 8'd168)
			begin
				NS = MET_LOOP_AWHHOH;
			end
			else
			begin
				NS = MET_1;
			end
		end
		MET_LOOP_GRYMG:
		begin
			if(beats2 < 8'd168)
			begin
				NS = MET_LOOP_GRYMG;
			end
			else
			begin
				NS = MET_1;
			end
		end
		default:
			NS = MET_1;
	endcase
end

always @(posedge CLOCK_50 or negedge RST)
begin
	if(RST == 1'b0)
		S <= MET_1;
	else
		S <= NS;
end

always @(posedge CLOCK_50 or negedge RST)
begin
	case(S)
		MET_1:
		begin
			if(SW[17] == 1'b1 && SW[13] == 1'b0 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_owts;
				notes_new2 <= 7'b1111111;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end
			else if (SW[17] == 1'b0 && SW[13] == 1'b1 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_awhhoh;
				notes_new2 <= 7'b1111111;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end
			else
			begin
				notes_new1 <= notes_new1_wire_grymg;
				notes_new2 <= 7'b1111111;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end	
		end
		MET_2:
		begin
			if(SW[17] == 1'b1 && SW[13] == 1'b0 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_owts;
				notes_new2 <= notes_new2_wire_owts;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end
			else if (SW[17] == 1'b0 && SW[13] == 1'b1 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_awhhoh;
				notes_new2 <= notes_new2_wire_awhhoh;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end
			else
			begin
				notes_new1 <= notes_new1_wire_grymg;
				notes_new2 <= notes_new2_wire_grymg;
				notes_new3 <= 7'b1111111;
				notes_new4 <= 7'b1111111;
			end
		end
		MET_3:
		begin
			if(SW[17] == 1'b1 && SW[13] == 1'b0 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_owts;
				notes_new2 <= notes_new2_wire_owts;
				notes_new3 <= notes_new3_wire_owts;
				notes_new4 <= 7'b1111111;
			end
			else if (SW[17] == 1'b0 && SW[13] == 1'b1 && SW[9] == 1'b0)
			begin
				notes_new1 <= notes_new1_wire_awhhoh;
				notes_new2 <= notes_new2_wire_awhhoh;
				notes_new3 <= notes_new3_wire_awhhoh;
				notes_new4 <= 7'b1111111;
			end
			else
			begin
				notes_new1 <= notes_new1_wire_grymg;
				notes_new2 <= notes_new2_wire_grymg;
				notes_new3 <= notes_new3_wire_grymg;
				notes_new4 <= 7'b1111111;
			end
		end
		MET_LOOP_OWTS:
		begin
			notes_new1 <= notes_new1_wire_owts;
			notes_new2 <= notes_new2_wire_owts;
			notes_new3 <= notes_new3_wire_owts;
			notes_new4 <= notes_new4_wire_owts;
		end
		MET_LOOP_AWHHOH:
		begin
			notes_new1 <= notes_new1_wire_awhhoh;
			notes_new2 <= notes_new2_wire_awhhoh;
			notes_new3 <= notes_new3_wire_awhhoh;
			notes_new4 <= notes_new4_wire_awhhoh;
		end
		MET_LOOP_GRYMG:
		begin
			notes_new1 <= notes_new1_wire_grymg;
			notes_new2 <= notes_new2_wire_grymg;
			notes_new3 <= notes_new3_wire_grymg;
			notes_new4 <= notes_new4_wire_grymg;
		end
		default:
		begin
			notes_new1 <= 7'b1111111;
			notes_new2 <= 7'b1111111;
			notes_new3 <= 7'b1111111;
			notes_new4 <= 7'b1111111;
		end
	endcase
end


always @(*)
begin
	if(SW[17] == 1'b1 || SW[13] == 1'b1 || SW[9] == 1'b1)
	begin
		hex1 = notes_new1;
		hex2 = notes_new2;
		hex3 = notes_new3;
		hex4 = notes_new4;
	end
	else
	begin
		hex1 = 7'b1111111;
		hex2 = 7'b1111111;
		hex3 = 7'b1111111;
		hex4 = 7'b1111111;
	end
end

always @ (*)
begin
	if(SW[16] == 1'b1 && SW[15] == 1'b0 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b0 && SW[7] == 1'b0)
	begin
		audio_outL = owts_mel_notes;
		audio_outR = note_played_R;
	end
	else if(SW[16] == 1'b1 && SW[15] == 1'b1 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b0 && SW[7] == 1'b0)
	begin
		audio_outL = owts_mel_notes;
		audio_outR = owts_harm_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b1 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b0 && SW[7] == 1'b0)
	begin
		audio_outL = note_played_L;
		audio_outR = owts_harm_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b1 && SW[11] == 1'b0 && SW[8] == 1'b0 && SW[7] == 1'b0 && KEY[0] == 1'b1)
	begin
		audio_outL = awhhoh_mel_notes;
		audio_outR = note_played_R;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b1 && SW[11] == 1'b1 && SW[8] == 1'b0 && SW[7] == 1'b0 && KEY[0] == 1'b1)
	begin
		audio_outL = awhhoh_mel_notes;
		audio_outR = awhhoh_harm_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b0 && SW[11] == 1'b1 && SW[8] == 1'b0 && SW[7] == 1'b0 && KEY[0] == 1'b1)
	begin
		audio_outL = note_played_L;
		audio_outR = awhhoh_harm_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b1 && SW[7] == 1'b0 && KEY[0] == 1'b1)
	begin
		audio_outL = note_played_L;
		audio_outR = grymg_mel_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b1 && SW[7] == 1'b1 && KEY[0] == 1'b1)
	begin
		audio_outL = grymg_mel_notes;
		audio_outR = grymg_harm_notes;
	end
	else if(SW[16] == 1'b0 && SW[15] == 1'b0 && SW[12] == 1'b0 && SW[11] == 1'b0 && SW[8] == 1'b0 && SW[7] == 1'b1 && KEY[0] == 1'b1)
	begin
		audio_outL = note_played_L;
		audio_outR = grymg_harm_notes;
	end
	else
	begin
		audio_outL = note_played_L;
		audio_outR = note_played_R;
	end
end


wire [15:0] note_played_L;
wire [15:0] note_played_R;

c_scale c_piano(CLOCK_50, PS2_CLK, PS2_DAT, SW[1], note_played_L, note_played_R);

wire [15:0] audio_inL, audio_inR;
reg [15:0] audio_outL, audio_outR;
wire [15:0] signal;

endmodule
