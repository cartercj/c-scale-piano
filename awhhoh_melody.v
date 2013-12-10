module awhhoh_melody(beats, out, out2, out3, out4);

input [7:0]beats;

output reg [3:0]out, out2, out3, out4;

always @ (*)
begin
	case(beats)
		8'd0:
		begin
			out 	= 4'd10;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		8'd1:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		8'd2:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd0;
		end
		8'd3:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd4:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd5:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd6:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd7:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd8:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd9:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd10:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd11:
		begin
			out 	= 4'd7;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd12:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd13:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd1;
		end
		8'd14:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd15:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd16:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd17:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd18:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd19:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd20:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd21:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd22:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd23:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd24:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd25:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd26:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd27:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd28:
		begin
			out 	= 4'd15;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd29:
		begin
			out 	= 4'd1;
			out2 	= 4'd15;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd30:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd15;
			out4 	= 4'd9;
		end
		8'd31:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd15;
		end
		8'd32:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd33:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd34:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd35:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd36:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd37:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd10;
			out4 	= 4'd11;
		end
		8'd38:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd39:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd40:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd41:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd42:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd43:
		begin
			out 	= 4'd7;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd44:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd45:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd1;
		end
		8'd46:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd47:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd48:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd49:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd50:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd51:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd52:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd53:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd54:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd55:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd56:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd57:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd58:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd59:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd60:
		begin
			out 	= 4'd15;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd61:
		begin
			out 	= 4'd1;
			out2 	= 4'd15;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd62:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd15;
			out4 	= 4'd9;
		end
		8'd63:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd15;
		end
		8'd64:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd65:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd66:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd67:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd68:
		begin
			out 	= 4'd14;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd69:
		begin
			out 	= 4'd13;
			out2 	= 4'd14;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd70:
		begin
			out 	= 4'd7;
			out2 	= 4'd13;
			out3 	= 4'd14;
			out4 	= 4'd1;
		end
		8'd71:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd13;
			out4 	= 4'd14;
		end
		8'd72:
		begin
			out 	= 4'd7;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd13;
		end
		8'd73:
		begin
			out 	= 4'd1;
			out2 	= 4'd7;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd74:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd7;
			out4 	= 4'd10;
		end
		8'd75:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd7;
		end
		8'd76:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd77:
		begin
			out 	= 4'd7;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd78:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd79:
		begin
			out 	= 4'd9;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd13;
		end
		8'd80:
		begin
			out 	= 4'd10;
			out2 	= 4'd9;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd81:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd9;
			out4 	= 4'd10;
		end
		8'd82:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd9;
		end
		8'd83:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd84:
		begin
			out 	= 4'd7;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd85:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd86:
		begin
			out 	= 4'd9;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd1;
		end
		8'd87:
		begin
			out 	= 4'd15;
			out2 	= 4'd9;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd88:
		begin
			out 	= 4'd9;
			out2 	= 4'd15;
			out3 	= 4'd9;
			out4 	= 4'd10;
		end
		8'd89:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd15;
			out4 	= 4'd9;
		end
		8'd90:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd15;
		end
		8'd91:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd92:
		begin
			out 	= 4'd13;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd93:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd94:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd13;
		end
		8'd95:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd96:
		begin
			out 	= 4'd15;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd97:
		begin
			out 	= 4'd1;
			out2 	= 4'd15;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd98:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd15;
			out4 	= 4'd1;
		end
		8'd99:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd15;
		end
		8'd100:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd101:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd102:
		begin
			out 	= 4'd7;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd103:
		begin
			out 	= 4'd1;
			out2 	= 4'd7;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd104:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd7;
			out4 	= 4'd1;
		end
		8'd105:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd7;
		end
		8'd106:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd107:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd108:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd109:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd110:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd111:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd112:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd113:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd114:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd115:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd116:
		begin
			out 	= 4'd14;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd117:
		begin
			out 	= 4'd13;
			out2 	= 4'd14;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd118:
		begin
			out 	= 4'd7;
			out2 	= 4'd13;
			out3 	= 4'd14;
			out4 	= 4'd1;
		end
		8'd119:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd13;
			out4 	= 4'd14;
		end
		8'd120:
		begin
			out 	= 4'd7;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd13;
		end
		8'd121:
		begin
			out 	= 4'd1;
			out2 	= 4'd7;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd122:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd7;
			out4 	= 4'd10;
		end
		8'd123:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd7;
		end
		8'd124:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd125:
		begin
			out 	= 4'd7;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd126:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd127:
		begin
			out 	= 4'd9;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd13;
		end
		8'd128:
		begin
			out 	= 4'd10;
			out2 	= 4'd9;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd129:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd9;
			out4 	= 4'd10;
		end
		8'd130:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd9;
		end
		8'd131:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd132:
		begin
			out 	= 4'd7;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd133:
		begin
			out 	= 4'd10;
			out2 	= 4'd7;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd134:
		begin
			out 	= 4'd9;
			out2 	= 4'd10;
			out3 	= 4'd7;
			out4 	= 4'd1;
		end
		8'd135:
		begin
			out 	= 4'd15;
			out2 	= 4'd9;
			out3 	= 4'd10;
			out4 	= 4'd7;
		end
		8'd136:
		begin
			out 	= 4'd9;
			out2 	= 4'd15;
			out3 	= 4'd9;
			out4 	= 4'd10;
		end
		8'd137:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd15;
			out4 	= 4'd9;
		end
		8'd138:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd15;
		end
		8'd139:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd140:
		begin
			out 	= 4'd13;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd141:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd142:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd13;
		end
		8'd143:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd144:
		begin
			out 	= 4'd15;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd145:
		begin
			out 	= 4'd1;
			out2 	= 4'd15;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd146:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd15;
			out4 	= 4'd1;
		end
		8'd147:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd15;
		end
		8'd148:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd149:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd150:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd151:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd152:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		8'd153:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		8'd154:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		8'd155:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		8'd156:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd157:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd158:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		8'd159:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		8'd160:
		begin
			out 	= 4'd15;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd161:
		begin
			out 	= 4'd1;
			out2 	= 4'd15;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd162:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd15;
			out4 	= 4'd1;
		end
		8'd163:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd15;
		end
		8'd164:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd165:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		8'd166:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd1;
		end
		8'd167:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		default:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
	endcase
end
endmodule
