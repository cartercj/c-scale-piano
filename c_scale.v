module c_scale(CLOCK_50, PS2_CLK, PS2_DAT, hi_lo, note_out_L, note_out_R);

input CLOCK_50;

input hi_lo;

inout PS2_CLK, PS2_DAT;

output reg [15:0] note_out_L;
output reg [15:0] note_out_R;

wire [4:0] key_pressed;

////SCALE PROGRESSION NOTES
	parameter C 	= 5'd1;
	parameter Df	= 5'd2;
	parameter D		= 5'd3;
	parameter Ef	= 5'd4;
	parameter E		= 5'd5;
	//SKIP NON-EXISTENT INCIDENTAL
	parameter F		= 5'd7;
	parameter Gf	= 5'd8;
	parameter G		= 5'd9;
	parameter Af	= 5'd10;
	parameter A		= 5'd11;
	parameter Bf	= 5'd12;
	parameter B		= 5'd13;
	//SKIP NON-EXISTENT INCIDENTAL
	parameter C2	= 5'd15;
	parameter D2	= 5'd22;
////CHORDAL NOTES
	parameter MAJ_SEC 	= 5'd16;
	parameter MIN_THIRD  = 5'd17;
	parameter FOURTH		= 5'd18;
	parameter PERF_FIFTH = 5'd19;
	parameter MIN_SIXTH  = 5'd20;
	parameter OCTAVE		= 5'd21;

key_reader pressed(CLOCK_50, PS2_CLK, PS2_DAT, key_pressed);

wire [15:0]c1;
wire [15:0]csdf1;
wire [15:0]d1;
wire [15:0]dsef1;
wire [15:0]e1;
wire [15:0]f1;
wire [15:0]fsgf1;
wire [15:0]g1;
wire [15:0]gsaf1;
wire [15:0]a1;
wire [15:0]asbf1;
wire [15:0]b1;

wire [15:0]c2;
wire [15:0]csdf2;
wire [15:0]d2;
wire [15:0]dsef2;
wire [15:0]e2;
wire [15:0]f2;
wire [15:0]fsgf2;
wire [15:0]g2;
wire [15:0]gsaf2;
wire [15:0]a2;
wire [15:0]asbf2;
wire [15:0]b2;

wire [15:0]c3;
wire [15:0]csdf3;
wire [15:0]d3;
wire [15:0]dsef3;
wire [15:0]e3;
wire [15:0]f3;
wire [15:0]fsgf3;
wire [15:0]g3;
wire [15:0]gsaf3;
wire [15:0]a3;
wire [15:0]asbf3;
wire [15:0]b3;

//Notegen is open-source code from Aaron Pittenger and Rachel Grady which generates a tone for specific notes (http://www.users.muohio.edu/jamiespa/teaching/ECE_287/FALL_2010/Aaron_and_Rachel-December_18_2010/8cf04a9734132302f96da8e113e80ce5.html).
notegen notes(CLOCK_50, 1'b1, hi_lo, 
c1, 
csdf1,
d1,
dsef1,
e1,
f1,
fsgf1,
g1,
gsaf1,
a1,
asbf1,
b1,

c2,
csdf2,
d2,
dsef2,
e2,
f2,
fsgf2,
g2,
gsaf2,
a2,
asbf2,
b2,

c3,
csdf3,
d3,
dsef3,
e3,
f3,
fsgf3,
g3,
gsaf3,
a3,
asbf3,
b3);

always @ (*)
begin
	case(key_pressed)
		C:
		begin
			note_out_L = c2;
			note_out_R = c2;
		end
		Df:
		begin
			note_out_L = csdf2;
			note_out_R = csdf2;
		end
		D:
		begin
			note_out_L = d2;
			note_out_R = d2;
		end
		Ef:
		begin
			note_out_L = dsef2;
			note_out_R = dsef2;
		end
		E:
		begin
			note_out_L = e2;
			note_out_R = e2;
		end
		F:
		begin
			note_out_L = f2;
			note_out_R = f2;
		end
		Gf:
		begin
			note_out_L = fsgf2;
			note_out_R = fsgf2;
		end
		G:
		begin
			note_out_L = g2;
			note_out_R = g2;
		end
		Af:
		begin
			note_out_L = gsaf2;
			note_out_R = gsaf2;
		end
		A:
		begin
			note_out_L = a2;
			note_out_R = a2;
		end
		Bf:
		begin
			note_out_L = asbf2;
			note_out_R = asbf2;
		end
		B:
		begin
			note_out_L = b2;
			note_out_R = b2;
		end
		C2:
		begin
			note_out_L = c3;
			note_out_R = c3;
		end
		D2:
		begin
			note_out_L = d3;
			note_out_R = d3;
		end
		MAJ_SEC:
		begin
			note_out_L = c2;
			note_out_R = d2;
		end
		MIN_THIRD:
		begin
			note_out_L = c2;
			note_out_R = dsef2;
		end
		FOURTH:
		begin
			note_out_L = c2;
			note_out_R = f2;
		end
		PERF_FIFTH:
		begin
			note_out_L = c2;
			note_out_R = g2;
		end
		MIN_SIXTH:
		begin
			note_out_L = c2;
			note_out_R = gsaf2;
		end
		OCTAVE:
		begin
			note_out_L = c2;
			note_out_R = c3;
		end
		default:
		begin
			note_out_L = 16'd0;
			note_out_R = 16'd0;
		end
	endcase
end

endmodule

		