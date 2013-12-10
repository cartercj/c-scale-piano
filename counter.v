module counter(clk, rst, tempo, out);

input clk, rst, tempo;

output reg [6:0]out;
reg [25:0]clkcount;

always @(posedge clk or negedge rst)
begin
	if(rst == 1'b0)
	begin
		out <= 7'd0;
		clkcount <= 26'd0;
	end
	else
		if(out > 7'd68)
		begin	
			out <= 7'd0;
			clkcount <= 26'd0;
		end
		else
		begin
			if(tempo == 1'b1)
			begin
				if(clkcount > 26'd25000000)
				begin
					clkcount <= 26'd0;
					out <= out+ 1'b1;
				end
				else				
					clkcount <= clkcount + 1'b1;
			end
			else
						begin
				if(clkcount > 26'd10000000)
				begin
					clkcount <= 26'd0;
					out <= out+ 1'b1;
				end
				else				
					clkcount <= clkcount + 1'b1;
			end
			
		end
	end
		


endmodule

