`include "full_adder.v"
module top;
	reg a,b,cin;
	wire sum,carry;
	fa dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
	initial begin
		$display("a  |  b  |  cin  |  sum  |  carry");
		$display("------------------------------------------------");
		#1;
		add(0,0,0);
		add(0,0,1);
		add(0,1,0);
		add(0,1,1);
		add(1,0,0);
		add(1,0,1);
		add(1,1,0);
		add(1,1,1);
	end
	task add(input reg i,j,k);begin
		a=i;b=j;cin=k;
		#1;
		$display("%0b  |  %0b  |  %0b  |  %0b  |  %0b",a,b,cin,sum,carry);
		end
	endtask
endmodule
