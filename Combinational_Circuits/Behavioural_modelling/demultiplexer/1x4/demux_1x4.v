module demux(input wire i,input wire [1:0]sel,output reg [3:0]y);
	always@(*) begin
			case (sel)
				2'b11:y={i,3'b000};
				2'b10:y={1'b0,i,2'b00};
				2'b01:y={2'b00,i,1'b0};
				2'b00:y={3'b000,i};
			//	default:y=2'b0;
			endcase
	end
endmodule


