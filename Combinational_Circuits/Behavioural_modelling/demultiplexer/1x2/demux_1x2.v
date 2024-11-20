module demux(input wire i,sel,output reg [1:0]y);
	always@(*) begin
			case (sel)
				1'b0:y={i,1'b0};
				1'b1:y={1'b0,i};
				default:y=2'b0;
			endcase
	end
endmodule


