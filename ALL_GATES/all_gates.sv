//gate level modelling
module glevel_logicgates(input a,b,output [6:0] y);
 //   wire [7:0] y; no need to declare again explicitly
    and(y[0],a,b);  //and gate
    or(y[1],a,b);   //or gate
    not(y[2],a);    //not gate
    xor(y[3],a,b);  //xor gate
    nand(y[4],a,b); //nand gate
    nor(y[5],a,b);  //nor gate
    xnor(y[6],a,b); //xnor gate
endmodule
