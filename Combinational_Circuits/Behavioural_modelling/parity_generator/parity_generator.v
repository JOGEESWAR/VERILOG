module parity(input wire [3:0] a,//input data
            output reg ep,op); //parity 
            always@(*) begin
                ep= ^a;
                op=~^a;
            end
endmodule