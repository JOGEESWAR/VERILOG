module fa(input wire a,b,cin,output reg sum,carry);
	always @(a,b,cin) begin
			sum=a ^ b ^ cin;
			carry= a&b | b&cin |cin&a;
	end
endmodule
