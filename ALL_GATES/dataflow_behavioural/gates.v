//dataflow modelling logic gates
module dataflow(input wire a,b,output wire [6:0] y);
    //assign keyword is used to fit the rhs into lhs
    assign y[0] = a & b; //and gate '&'
    assign y[1] = a | b; //or gate '|'
    assign y[2] = ~a;    //not gate '~'
    assign y[3] = ~(a&b); //NAND gate
    assign y[4] = ~(a|b); //NOR gate
    assign y[5] = a^b;    //X-OR GATE
    assign y[6] = ~(a^b); //X-NOR GATE
endmodule

//behavioural
 module behavioural_gates(input a,b, output reg [6:0] y);
            always @(a,b) begin
                y[0] = a & b;
                y[0] = a & b; //and gate '&'
                y[1] = a | b; //or gate '|'
                y[2] = ~a;    //not gate '~'
                y[3] = ~(a&b); //NAND gate
                y[4] = ~(a|b); //NOR gate
                y[5] = a^b;    //X-OR GATE
                y[6] = ~(a^b); //X-NOR GATE
            end
 endmodule