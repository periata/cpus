module ram (clk, a, d, q, rd, wr);
   parameter ADDR_BITS = 15;
   parameter DATA_BITS = 8;
   parameter ACCESS_TIME = 40;

   input                  clk;
   input [ADDR_BITS-1:0]  a;
   input [DATA_BITS-1:0]  d;
   output [DATA_BITS-1:0] q;
   input 		  rd, wr;

   reg [DATA_BITS-1:0] 	  mem [0:(1 << ADDR_BITS)-1];
   
   assign q = rd ? mem[a] : {(DATA_BITS){1'bx}};

   always @(posedge clk)
     begin
	//$display ("a:%x d:%x q:%x rd:%b wr:%b", a, d, q, rd, wr);
	
	if (wr)
	  begin
	     //   $display ("writing %x <= %x", a, d);
	     mem[a] <= d;
	  end
     end
   
   
endmodule // ram

