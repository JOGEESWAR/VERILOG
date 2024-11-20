module mux(input wire [1:0] i,input wire sel,output reg y);
        always@(*) begin
            y=sel ? i[1]:i[0];//using relational operator
            /*if(sel)
                y=i[1];
              else
              y=i[1];*/
        end
endmodule