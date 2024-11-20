`include "demux_1x4.v"
module top;
	reg i;
	reg [1:0] sel;
	wire [3:0] y;
	integer j;
	demux dut(i,sel,y);
	initial begin
			for(j=0;j<8;j=j+1) begin
				{i,sel}=j;
				#1;
				$display("i=%0b---sel=%0b---y[0]=%0b---y[1]=%0b---y[2]=%0b---y[3]=%0b",i,sel,y[0],y[1],y[2],y[3]);
				end
	end
endmodule
