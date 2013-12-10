module owts_melody(beats, out, out2, out3, out4);

input [7:0]beats;

output reg [3:0]out, out2, out3, out4;

always @ (*)
begin
	case(beats)
		7'd0:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		7'd1:
		begin
			out 	= 4'd9;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		7'd2:
		begin
			out 	= 4'd11;
			out2 	= 4'd9;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		7'd3:
		begin
			out 	= 4'd12;
			out2 	= 4'd11;
			out3 	= 4'd9;
			out4 	= 4'd0;
		end
		7'd4:
		begin
			out 	= 4'd13;
			out2 	= 4'd12;
			out3 	= 4'd11;
			out4 	= 4'd9;
		end
		7'd5:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd12;
			out4 	= 4'd11;
		end
		7'd6:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd12;
		end
		7'd7:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		7'd8:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd9:
		begin
			out = 4'd9;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd10:
		begin
			out 	= 4'd11;
			out2 	= 4'd9;
			out3 	= 4'd0;
			out4 	= 4'd1;
		end
		7'd11:
		begin
			out 	= 4'd12;
			out2 	= 4'd11;
			out3 	= 4'd9;
			out4 	= 4'd0;
		end
		7'd12:
		begin
			out 	= 4'd13;
			out2 	= 4'd12;
			out3 	= 4'd11;
			out4 	= 4'd9;
		end
		7'd13:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd12;
			out4 	= 4'd11;
		end
		7'd14:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd12;
		end
		7'd15:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		7'd16:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd17:
		begin
			out 	= 4'd9;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd18:
		begin
			out 	= 4'd11;
			out2 	= 4'd9;
			out3 	= 4'd0;
			out4 	= 4'd1;
		end
		7'd19:
		begin
			out 	= 4'd12;
			out2 	= 4'd11;
			out3 	= 4'd9;
			out4 	= 4'd0;
		end
		7'd20:
		begin
			out 	= 4'd13;
			out2 	= 4'd12;
			out3 	= 4'd11;
			out4 	= 4'd9;
		end
		7'd21:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd12;
			out4 	= 4'd11;
		end
		7'd22:
		begin
			out 	= 4'd11;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd12;
		end
		7'd23:
		begin
			out 	= 4'd1;
			out2 	= 4'd11;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		7'd24:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd11;
			out4 	= 4'd1;
		end
		7'd25:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd11;
		end
		7'd26:
		begin
			out 	= 4'd11;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		7'd27:
		begin
			out 	= 4'd1;
			out2 	= 4'd11;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		7'd28:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd11;
			out4 	= 4'd1;
		end
		7'd29:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd11;
		end
		7'd30:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd11;
		end
		7'd31:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		7'd32:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd33:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd34:
		begin
			out 	= 4'd11;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd1;
		end
		7'd35:
		begin
			out 	= 4'd10;
			out2 	= 4'd11;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		7'd36:
		begin
			out 	= 4'd9;
			out2 	= 4'd10;
			out3 	= 4'd11;
			out4 	= 4'd0;
		end
		7'd37:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd10;
			out4 	= 4'd11;
		end
		7'd38:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd10;
		end
		7'd39:
		begin
			out 	= 4'd9;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		7'd40:
		begin
			out 	= 4'd11;
			out2 	= 4'd9;
			out3 	= 4'd9;
			out4 	= 4'd9;
		end
		7'd41:
		begin
			out 	= 4'd1;
			out2 	= 4'd11;
			out3 	= 4'd9;
			out4 	= 4'd9;
		end
		7'd42:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd11;
			out4 	= 4'd9;
		end
		7'd43:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd11;
		end
		7'd44:
		begin
			out 	= 4'd13;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd1;
		end
		7'd45:
		begin
			out 	= 4'd12;
			out2 	= 4'd13;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		7'd46:
		begin
			out 	= 4'd1;
			out2 	= 4'd12;
			out3 	= 4'd13;
			out4 	= 4'd13;
		end
		7'd47:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd12;
			out4 	= 4'd13;
		end
		7'd48:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd12;
		end
		7'd49:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd50:
		begin
			out 	= 4'd11;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd1;
		end
		7'd51:
		begin
			out 	= 4'd12;
			out2 	= 4'd11;
			out3 	= 4'd0;
			out4 	= 4'd0;
		end
		7'd52:
		begin
			out 	= 4'd13;
			out2 	= 4'd12;
			out3 	= 4'd11;
			out4 	= 4'd0;
		end
		7'd53:
		begin
			out 	= 4'd1;
			out2 	= 4'd13;
			out3 	= 4'd12;
			out4 	= 4'd11;
		end
		7'd54:
		begin
			out 	= 4'd11;
			out2 	= 4'd1;
			out3 	= 4'd13;
			out4 	= 4'd12;
		end
		7'd55:
		begin
			out 	= 4'd1;
			out2 	= 4'd11;
			out3 	= 4'd1;
			out4 	= 4'd13;
		end
		7'd56:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd11;
			out4 	= 4'd1;
		end
		7'd57:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd11;
		end
		7'd58:
		begin
			out 	= 4'd10;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		7'd59:
		begin
			out 	= 4'd1;
			out2 	= 4'd10;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		7'd60:
		begin
			out 	= 4'd9;
			out2 	= 4'd1;
			out3 	= 4'd10;
			out4 	= 4'd1;
		end
		7'd61:
		begin
			out 	= 4'd1;
			out2 	= 4'd9;
			out3 	= 4'd1;
			out4 	= 4'd10;
		end
		7'd62:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd9;
			out4 	= 4'd1;
		end
		7'd63:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd9;
		end
		7'd64:
		begin
			out 	= 4'd1;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd65:
		begin
			out 	= 4'd0;
			out2 	= 4'd1;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd66:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd1;
			out4 	= 4'd1;
		end
		7'd67:
		begin
			out 	= 4'd0;
			out2 	= 4'd0;
			out3 	= 4'd0;
			out4 	= 4'd1;
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
		






