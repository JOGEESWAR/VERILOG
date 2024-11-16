//test_bench for all gates
`include "all_gates.v"
module top;
    reg i,j;       //reg to store input values
    wire [6:0] y;   // wire to represent output values
    glevel_logicgates G(.a(i),.b(j),.y(y)); //named instantion of module glevel_logicgates
    //glevel_logicgates G(i,j,y); //Positional instantiation
        initial begin
        //test cases
        $display("test case 1","\n","--------------------");
        i=1'b0; j=1'b0;
        #1;
        $display("display@ a=0 b=0","\n","and(a,b)=%0b",y[0],"\n","or(a,b)=%0b",y[1],"\n","not(a,b)=%0b",y[2],"\n","xor(a,b)=%0b",y[3],"\n","nand(a,b)=%0b",y[4],"\n","nor(a,b)=%0b",y[5],"\n","xnor(a,b)=%0b",y[6]);
        #1;
        $display("test case 2","\n","--------------------");
        i=1'b0; j=1'b1;
        $display("display@ a=0 b=0","\n","and(a,b)=%0b",y[0],"\n","or(a,b)=%0b",y[1],"\n","not(a,b)=%0b",y[2],"\n","xor(a,b)=%0b",y[3],"\n","nand(a,b)=%0b",y[4],"\n","nor(a,b)=%0b",y[5],"\n","xnor(a,b)=%0b",y[6]);
        #1;
        $display("test case 3","\n","--------------------");
        i=1'b1; j=1'b0;
        $display("display@ a=0 b=0","\n","and(a,b)=%0b",y[0],"\n","or(a,b)=%0b",y[1],"\n","not(a,b)=%0b",y[2],"\n","xor(a,b)=%0b",y[3],"\n","nand(a,b)=%0b",y[4],"\n","nor(a,b)=%0b",y[5],"\n","xnor(a,b)=%0b",y[6]);
        #1;
        $display("test case 4","\n","--------------------");
        i=1'b1; j=1'b1;
        $display("display@ a=0 b=0","\n","and(a,b)=%0b",y[0],"\n","or(a,b)=%0b",y[1],"\n","not(a,b)=%0b",y[2],"\n","xor(a,b)=%0b",y[3],"\n","nand(a,b)=%0b",y[4],"\n","nor(a,b)=%0b",y[5],"\n","xnor(a,b)=%0b",y[6]);
        $finish;
        end
    initial
    $monitor("from monitor[1]....a=%0b,b=%0b y=%0b",i,j,y);
endmodule
