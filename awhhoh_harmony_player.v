module awhhoh_harmony_player(CLOCK_50, beats, harmout);

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
		8'd0:
		begin
			harmout 	= f2;
		end
		8'd1:
		begin
			harmout 	= f2;
		end
		8'd2:
		begin
			harmout 	= f2;
		end
		8'd3:
		begin
			harmout 	= f2;
		end
		8'd4:
		begin
			harmout 	= f2;
		end
		8'd5:
		begin
			harmout 	= f2;
		end
		8'd6:
		begin
			harmout 	= a2;
		end
		8'd7:
		begin
			harmout 	= a2;
		end
		8'd8:
		begin
			harmout 	= g2;
		end
		8'd9:
		begin
			harmout 	= g2;
		end
		8'd10:
		begin
			harmout 	= e2;
		end
		8'd11:
		begin
			harmout 	= e2;
		end
		8'd12:
		begin
			harmout 	= f2;
		end
		8'd13:
		begin
			harmout 	= f2;
		end
		8'd14:
		begin
			harmout 	= f2;
		end
		8'd15:
		begin
			harmout 	= f2;
		end
		8'd16:
		begin
			harmout 	= f2;
		end
		8'd17:
		begin
			harmout 	= f2;
		end
		8'd18:
		begin
			harmout 	= e2;
		end
		8'd19:
		begin
			harmout 	= e2;
		end
		8'd20:
		begin
			harmout 	= f2;
		end
		8'd21:
		begin
			harmout 	= f2;
		end
		8'd22:
		begin
			harmout 	= f2;
		end
		8'd23:
		begin
			harmout 	= f2;
		end
		8'd24:
		begin
			harmout 	= f2;
		end
		8'd25:
		begin
			harmout 	= f2;
		end
		8'd26:
		begin
			harmout 	= e2;
		end
		8'd27:
		begin
			harmout 	= e2;
		end
		8'd28:
		begin
			harmout 	= c2;
		end
		8'd29:
		begin
			harmout 	= c2;
		end
		8'd30:
		begin
			harmout 	= c2;
		end
		8'd31:
		begin
			harmout 	= c2;
		end
		8'd32:
		begin
			harmout 	= f2;
		end
		8'd33:
		begin
			harmout 	= f2;
		end
		8'd34:
		begin
			harmout 	= f2;
		end
		8'd35:
		begin
			harmout 	= f2;
		end
		8'd36:
		begin
			harmout 	= f2;
		end
		8'd37:
		begin
			harmout 	= f2;
		end
		8'd38:
		begin
			harmout 	= a2;
		end
		8'd39:
		begin
			harmout 	= a2;
		end
		8'd40:
		begin
			harmout 	= g2;
		end
		8'd41:
		begin
			harmout 	= g2;
		end
		8'd42:
		begin
			harmout 	= e2;
		end
		8'd43:
		begin
			harmout 	= e2;
		end
		8'd44:
		begin
			harmout 	= f2;
		end
		8'd45:
		begin
			harmout 	= f2;
		end
		8'd46:
		begin
			harmout 	= f2;
		end
		8'd47:
		begin
			harmout 	= f2;
		end
		8'd48:
		begin
			harmout 	= f2;
		end
		8'd49:
		begin
			harmout 	= f2;
		end
		8'd50:
		begin
			harmout 	= e2;
		end
		8'd51:
		begin
			harmout 	= e2;
		end
		8'd52:
		begin
			harmout 	= f2;
		end
		8'd53:
		begin
			harmout 	= f2;
		end
		8'd54:
		begin
			harmout 	= f2;
		end
		8'd55:
		begin
			harmout 	= f2;
		end
		8'd56:
		begin
			harmout 	= f2;
		end
		8'd57:
		begin
			harmout 	= f2;
		end
		8'd58:
		begin
			harmout 	= e2;
		end
		8'd59:
		begin
			harmout 	= e2;
		end
		8'd60:
		begin
			harmout 	= f2;
		end
		8'd61:
		begin
			harmout 	= f2;
		end
		8'd62:
		begin
			harmout 	= f2;
		end
		8'd63:
		begin
			harmout 	= f2;
		end
		8'd64:
		begin
			harmout 	= c3;
		end
		8'd65:
		begin
			harmout 	= asbf2;
		end
		8'd66:
		begin
			harmout 	= a2;
		end
		8'd67:
		begin
			harmout 	= g2;
		end
		8'd68:
		begin
			harmout 	= fsgf2;
		end
		8'd69:
		begin
			harmout 	= fsgf2;
		end
		8'd70:
		begin
			harmout 	= fsgf2;
		end
		8'd71:
		begin
			harmout 	= fsgf2;
		end
		8'd72:
		begin
			harmout 	= asbf2;
		end
		8'd73:
		begin
			harmout 	= a2;
		end
		8'd74:
		begin
			harmout 	= g2;
		end
		8'd75:
		begin
			harmout 	= f2;
		end
		8'd76:
		begin
			harmout 	= e2;
		end
		8'd77:
		begin
			harmout 	= e2;
		end
		8'd78:
		begin
			harmout 	= e2;
		end
		8'd79:
		begin
			harmout 	= e2;
		end
		8'd80:
		begin
			harmout 	= a2;
		end
		8'd81:
		begin
			harmout 	= g2;
		end
		8'd82:
		begin
			harmout 	= f2;
		end
		8'd83:
		begin
			harmout 	= e2;
		end
		8'd84:
		begin
			harmout 	= d2;
		end
		8'd85:
		begin
			harmout 	= d2;
		end
		8'd86:
		begin
			harmout 	= d2;
		end
		8'd87:
		begin
			harmout 	= d2;
		end
		8'd88:
		begin
			harmout 	= e2;
		end
		8'd89:
		begin
			harmout 	= e2;
		end
		8'd90:
		begin
			harmout 	= e2;
		end
		8'd91:
		begin
			harmout 	= c2;
		end
		8'd92:
		begin
			harmout 	= c2;
		end
		8'd93:
		begin
			harmout 	= c2;
		end
		8'd94:
		begin
			harmout 	= c2;
		end
		8'd95:
		begin
			harmout 	= c2;
		end
		8'd96:
		begin
			harmout 	= d2;
		end
		8'd97:
		begin
			harmout 	= d2;
		end
		8'd98:
		begin
			harmout 	= e2;
		end
		8'd99:
		begin
			harmout 	= e2;
		end
		8'd100:
		begin
			harmout 	= a2;
		end
		8'd101:
		begin
			harmout 	= a2;
		end
		8'd102:
		begin
			harmout 	= d2;
		end
		8'd103:
		begin
			harmout 	= d2;
		end
		8'd104:
		begin
			harmout 	= f2;
		end
		8'd105:
		begin
			harmout 	= f2;
		end
		8'd106:
		begin
			harmout 	= f2;
		end
		8'd107:
		begin
			harmout 	= f2;
		end
		8'd108:
		begin
			harmout 	= e2;
		end
		8'd109:
		begin
			harmout 	= e2;
		end
		8'd110:
		begin
			harmout 	= e2;
		end
		8'd111:
		begin
			harmout 	= e2;
		end
		8'd112:
		begin
			harmout 	= c3;
		end
		8'd113:
		begin
			harmout 	= asbf2;
		end
		8'd114:
		begin
			harmout 	= a2;
		end
		8'd115:
		begin
			harmout 	= g2;
		end
		8'd116:
		begin
			harmout 	= fsgf2;
		end
		8'd117:
		begin
			harmout 	= fsgf2;
		end
		8'd118:
		begin
			harmout 	= fsgf2;
		end
		8'd119:
		begin
			harmout 	= fsgf2;
		end
		8'd120:
		begin
			harmout 	= asbf2;
		end
		8'd121:
		begin
			harmout 	= a2;
		end
		8'd122:
		begin
			harmout 	= g2;
		end
		8'd123:
		begin
			harmout 	= f2;
		end
		8'd124:
		begin
			harmout 	= e2;
		end
		8'd125:
		begin
			harmout 	= e2;
		end
		8'd126:
		begin
			harmout 	= e2;
		end
		8'd127:
		begin
			harmout 	= e2;
		end
		8'd128:
		begin
			harmout 	= a2;
		end
		8'd129:
		begin
			harmout 	= g2;
		end
		8'd130:
		begin
			harmout 	= f2;
		end
		8'd131:
		begin
			harmout 	= e2;
		end
		8'd132:
		begin
			harmout 	= d2;
		end
		8'd133:
		begin
			harmout 	= d2;
		end
		8'd134:
		begin
			harmout 	= d2;
		end
		8'd135:
		begin
			harmout 	= d2;
		end
		8'd136:
		begin
			harmout 	= e2;
		end
		8'd137:
		begin
			harmout 	= e2;
		end
		8'd138:
		begin
			harmout 	= e2;
		end
		8'd139:
		begin
			harmout 	= c2;
		end
		8'd140:
		begin
			harmout 	= c2;
		end
		8'd141:
		begin
			harmout 	= c2;
		end
		8'd142:
		begin
			harmout 	= c2;
		end
		8'd143:
		begin
			harmout 	= c2;
		end
		8'd144:
		begin
			harmout 	= d2;
		end
		8'd145:
		begin
			harmout 	= d2;
		end
		8'd146:
		begin
			harmout 	= e2;
		end
		8'd147:
		begin
			harmout 	= e2;
		end
		8'd148:
		begin
			harmout 	= f2;
		end
		8'd149:
		begin
			harmout 	= f2;
		end
		8'd150:
		begin
			harmout 	= d2;
		end
		8'd151:
		begin
			harmout 	= d2;
		end
		8'd152:
		begin
			harmout 	= f2;
		end
		8'd153:
		begin
			harmout 	= f2;
		end
		8'd154:
		begin
			harmout 	= f2;
		end
		8'd155:
		begin
			harmout 	= f2;
		end
		8'd156:
		begin
			harmout 	= e2;
		end
		8'd157:
		begin
			harmout 	= e2;
		end
		8'd158:
		begin
			harmout 	= e2;
		end
		8'd159:
		begin
			harmout 	= e2;
		end
		8'd160:
		begin
			harmout 	= f2;
		end
		8'd161:
		begin
			harmout 	= f2;
		end
		8'd162:
		begin
			harmout 	= f2;
		end
		8'd163:
		begin
			harmout 	= f2;
		end
		8'd164:
		begin
			harmout 	= 16'd0;
		end
		8'd165:
		begin
			harmout 	= 16'd0;
		end
		8'd166:
		begin
			harmout 	= 16'd0;
		end
		8'd167:
		begin
			harmout 	= 16'd0;
		end
		default:
		begin
			harmout 	= 16'd0;
		end
	endcase
end
endmodule