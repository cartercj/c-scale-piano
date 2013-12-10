module counter_2(clk, rst, tempo, out2);

input clk, rst, tempo;

output reg [7:0]out2;
reg [25:0]clkcount2;

always @(posedge clk or negedge rst)
begin
	if(rst == 1'b0)
	begin
		out2 <= 9'd0;
		clkcount2 <= 26'd0;
	end
	else
		if(out2 > 9'd167)
		begin	
			out2 <= 9'd0;
			clkcount2 <= 26'd0;
		end
		else
		begin
			if(tempo == 1'b1)
			begin
				if(clkcount2 > 26'd15000000)
				begin
					clkcount2 <= 26'd0;
					out2 <= out2 + 1'b1;
				end
				else				
					clkcount2 <= clkcount2 + 1'b1;
			end
			else
			begin
				if(clkcount2 > 26'd10000000)
				begin
					clkcount2 <= 26'd0;
					out2 <= out2 + 1'b1;
				end
				else				
					clkcount2 <= clkcount2 + 1'b1;
			end
		end
	end
endmodule

