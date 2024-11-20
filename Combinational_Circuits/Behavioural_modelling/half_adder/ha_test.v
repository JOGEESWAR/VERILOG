`include "half_adder.v"
module top;
	reg a,b;
	wire s,c;
	ha dut(a,b,s,c);
	initial begin
			$display("a	 |	b	|	sum	 |	carry");
			$display("------------------------------------------------------");
			#1;
			add(0,0);
			add(0,1);
			add(1,0);
			add(1,1);
	end
		task add(input reg i,j);
		begin
			a=i;b=j;
			#1;
			$display("%0b	 |	%0b	|	%0b	 |	%0b",a,b,s,c);
			end
		endtask
endmodule

