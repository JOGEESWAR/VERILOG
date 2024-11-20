`include "demux_1x2.v"
module top;
	reg i,sel;
	wire [1:0] y;
	integer j;
	demux dut(i,sel,y);
	initial begin
			for(j=0;j<4;j=j+1) begin
				{i,sel}=j;
				#1;
				$display("i=%0b---sel=%0b---y[0]=%0b---y[1]=%0b",i,sel,y[0],y[1]);
				end
	end
endmodule
