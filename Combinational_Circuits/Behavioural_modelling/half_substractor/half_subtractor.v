module hs(input wire a,b,output reg diff,bw);
        always @(a,b) begin
            diff=a^b;
            bw=~a & b;
        end
endmodule