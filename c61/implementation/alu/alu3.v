module alu3 (input [2:0] a, input [2:0] b, input nx, input c_in, input ns, input n,
				 output [2:0] q, output [1:0] c, output c_out);
				 
  wire [2:0] as = { a[2] & ns, a[1] & ns, a[0] & ns };
  wire [2:0] bx = { b[2] & n, b[1] & n, b[0] & n };
  wire c_in_x = c_in & nx;
  
  wire [2:0] p = as | bx;
  wire [2:0] g = as & bx & { nx, nx, nx };
  
  assign c[0] = (p[0] & c_in_x) | g[0];
  assign c[1] = (p[1] & p[0] & c_in_x) | (p[1] & g[0]) | g[1];
  assign c_out = (p[2] & p[1] & p[0] & c_in_x) | (p[2] & p[1] & g[0]) | (p[2] & g[1]) | g[2];
  
  assign q[0] = (as[0] ^ bx[0]) ^ c_in_x;
  assign q[1] = (as[1] ^ bx[1]) ^ c[0];
  assign q[2] = (as[2] ^ bx[2]) ^ c[1];
  
endmodule