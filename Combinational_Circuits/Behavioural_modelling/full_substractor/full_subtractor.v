module fs(input wire a,b,bin,output reg diff,bw);
        always@(a,b,bin) begin
            diff=a^b^bin;
            bw=a&~b | b&bin | bin&~a;
        end
endmodule