module mux1(input wire [3:0] i,input wire [1:0]sel,output reg y);
        always@(*) begin
            y=sel[0] ?(sel[1]? i[3]:i[1]):(sel[1]?i[2]:i[0]);//using relational operator
        end
endmodule