`include "parity_generator.v"
module top;
    reg [3:0] datain;
    wire ep,op;
    integer i;
    parity dut(datain,ep,op);
    initial begin
        for(i=0;i<16;i=i+1) begin
            datain=i;
            #1;
            $display("datain=%0b,even_parity=%0b,odd_parity=%0b",datain,ep,op);
        end
    end
endmodule