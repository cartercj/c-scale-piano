module owts_melody_player(CLOCK_50, beats, harmout);

input CLOCK_50;
input [7:0]beats;

output reg [15:0]harmout;

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
notegen notes(CLOCK_50, 1'b1, 1'b0, 
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
	case(beats)
		7'd0:
			harmout = 16'd0;
		7'd1:
			harmout = g2;
		7'd2:
			harmout = b2;
		7'd3:
			harmout = c3;
		7'd4:
			harmout = d3;
		7'd5:
			harmout = d3;
		7'd6:
			harmout = d3;
		7'd7:
			harmout = d3;
		7'd8:
			harmout = 16'd0;
		7'd9:
			harmout = g2;
		7'd10:
			harmout = b2;
		7'd11:
			harmout = c3;
		7'd12:
			harmout = d3;
		7'd13:
			harmout = d3;
		7'd14:
			harmout = d3;
		7'd15:
			harmout = d3;
		7'd16:
			harmout = 16'd0;
		7'd17:
			 harmout = g2;
		7'd18:
			harmout = b2;
		7'd19:
			harmout = c3;
		7'd20:
			harmout = d3;
		7'd21:
			harmout = d3;
		7'd22:
			harmout = b2;
		7'd23:
			harmout = b2;
		7'd24:
			harmout = g2;
		7'd25:
			harmout = g2;
		7'd26:
			harmout = b2;
		7'd27:
			harmout = b2;
		7'd28:
			harmout = a2;
		7'd29:
			harmout = a2;
		7'd30:
			harmout = a2;
		7'd31:
			harmout = a2;
		7'd32:
			harmout = 16'd0;
		7'd33:
			harmout = 16'd0;
		7'd34:
			harmout = b2;
		7'd35:
			harmout = a2;
		7'd36:
			harmout = g2;
		7'd37:
			harmout = g2;
		7'd38:
			harmout = g2;
		7'd39:
			harmout = g2;
		7'd40:
			harmout = b2;
		7'd41:
			harmout = b2;
		7'd42:
			harmout = d3;
		7'd43:
			harmout = d3;
		7'd44:
			harmout = d3;
		7'd45:
			harmout = c3;
		7'd46:
			harmout = c3;
		7'd47:
			harmout = c3;
		7'd48:
			harmout = 16'd0;
		7'd49:
			harmout = 16'd0;
		7'd50:
			harmout = b2;
		7'd51:
			harmout = c3;
		7'd52:
			harmout = d3;
		7'd53:
			harmout = d3;
		7'd54:
			harmout = b2;
		7'd55:
			harmout = b2;
		7'd56:
			harmout = g2;
		7'd57:
			harmout = g2;
		7'd58:
			harmout = a2;
		7'd59:
			harmout = a2;
		7'd60:
			harmout = g2;
		7'd61:
			harmout = g2;
		7'd62:
			harmout = g2;
		7'd63:
			harmout = g2;
		7'd64:
			harmout = g2;
		7'd65:
			harmout = 16'd0;
		7'd66:
			harmout = 16'd0;
		7'd67:
			harmout = 16'd0;
		default:
			harmout = 16'd0;
	endcase
end

endmodule
