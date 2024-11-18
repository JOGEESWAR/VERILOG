//testbench code
`include "gates.v"
module top;
    reg i,j;
    wire [6:0] y;
 //   dataflow dut(.a(i),.b(j),.y(y));
     behavioural_gates dut1(.a(i),.b(j),.y(y));
    initial begin
        #1;
        $display("a b | and or not nand nor x-or x-nor");
        $display("------------------------------------");
        test(0,0);
        #1;
        test(0,1);
        #1;
        test(1,0);
        #1;
        test(1,1);
    end
    task test(input reg a,b);
    begin
        i=a;j=b;
        #1;
        $display("%0b %0b | %0b   %0b   %0b   %0b   %0b   %0b   %0b",a,b,y[0],y[1],y[2],y[3],y[4],y[5],y[6]);
    end
    endtask
endmodule