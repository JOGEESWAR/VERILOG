`include "mux_2x1.v"
module top;
    reg [1:0]i;
    reg sel;
    wire y;
    integer j;
    mux dut(i,sel,y);
    initial begin
        for(j=0;j<8;j=j+1) begin
            {i,sel}=j;
            #1;
            $display("i[0]=%0b---i[1]=%0b---sel=%0b---y=%0b",i[0],i[1],sel,y);
    end
    end
endmodule