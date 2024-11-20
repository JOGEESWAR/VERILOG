`include "half_subtractor.v"
module top;
    reg a,b;
    wire diff,bw;
    integer i;
    hs dut(.*);
    initial begin
        $display("a  |  b  |  diff  |  bw");
        $display("---------------------------");
        for(i=0;i<4;i=i+1) begin
            sub(i);
        end
    end
    task sub(i); begin
        {a,b}=i;
        #1;
        $display("%0b  |  %0b  |  %0b  |  %0b  ",a,b,diff,bw);
    end
    endtask
endmodule