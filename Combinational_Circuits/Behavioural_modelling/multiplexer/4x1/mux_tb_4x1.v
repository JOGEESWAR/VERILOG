`include "mux_4x1.v"
module top;
    reg [3:0]i;
    reg [1:0]sel;
    wire y;
    integer j;
    mux dut(i,sel,y);
    initial begin
        for(j=0;j<64;j=j+1) begin
            {i,sel}=j;
            #1;
            $display("i[3]=%0b---i[2]=%0b---i[1]=%0b---i[0]=%0b---sel=%0b---y=%0b",i[3],i[2],i[1],i[0],sel,y);
    end
    end
endmodule