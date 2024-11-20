module ha(a,b,s,c);
		input a,b;	//input declaration
		output reg s,c;	//output sum carry declaration

		always @(a,b) begin
			s=a^b; //sum sum=a xor b
			c=a&b; //carry= a and b
		end
endmodule
