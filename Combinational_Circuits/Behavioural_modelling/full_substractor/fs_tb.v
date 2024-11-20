`include "full_subtractor.v"
module top;
    reg a,b,bin;
    wire diff,bw;
    integer i;
    fs dut(.a(a),.b(b),.bin(bin),.diff(diff),.bw(bw));
    initial begin
        $display("a  |  b  |  bin  |  diff  |  bw");
        $display("--------------------------------------");
        for(i=0;i<8;i=i+1) begin
            {a,b,bin}=i;
            #1;
            $display("%0b  |  %0b  |  %0b  |   %0b   |   %0b  ",a,b,bin,diff,bw);
        end
    end
endmodule