module plus1 (input [5:0] d, output [5:0] q);
	
	assign q[0] = !d[0];
	assign q[1] = d[1] ^ d[0];
	assign q[2] = d[2] ^ (d[0]&d[1]);
	assign q[3] = d[3] ^ (d[0]&d[1]&d[2]);
	assign q[4] = d[4] ^ (d[0]&d[1]&d[2]&d[3]);
	assign q[5] = d[5] ^ (d[0]&d[1]&d[2]&d[3]&d[4]);
	
endmodule