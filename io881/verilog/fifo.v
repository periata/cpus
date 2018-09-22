`timescale 1ns/1ps

module fifo_element (clk, d_in, d_in_strobe, q, q_ready, in_strobe_chain, q_out_strobe, out_strobe_chain,
		     prev_used, next_used, used);

   parameter WIDTH = 4;

   input              clk;
   input  [WIDTH-1:0] d_in;
   input              d_in_strobe;
   output [WIDTH-1:0] q;
   output 	      q_ready;
   output             in_strobe_chain;
   input 	      q_out_strobe;
   output 	      out_strobe_chain; 	      
   input 	      prev_used; 	      
   input              next_used; 	      
   output reg 	      used = 0;

   reg [WIDTH-1:0]    store;

   assign q = used ? store : d_in;
   assign in_strobe_chain = next_used ? 0 : d_in_strobe;
   assign out_strobe_chain = prev_used ? q_out_strobe : 0;
   
   always @(posedge clk)
     begin
	if (d_in_strobe && next_used)
	  begin
	     store <= d_in;
	     used <= 1;
	  end
	else if (q_out_strobe && !prev_used)
	  begin
	     used <= 0;
	  end
	else if (q_out_strobe && prev_used)
	  begin
	     store <= d_in;
	  end
     end

   
endmodule

   
module fifo (clk, d_in, d_in_strobe, q, q_ready, q_out_strobe, full, empty);

   parameter WIDTH = 4, DEPTH = 5;

   input                  clk;
   input [WIDTH-1:0] 	  d_in;
   input 		  d_in_strobe;
   output [WIDTH-1:0] 	  q;
   output 		  q_ready;
   input 		  q_out_strobe;
   output 		  full;
   output 		  empty;

   // e_qd connects the q of one element to the d_in of the next (with appropriate adjustments at the ends)
   wire [WIDTH-1:0] 	  e_qd [DEPTH:0];
   // e_in_strobe connects the in_strobe_chain of one element to the d_in_strobe of the next (adj as above),
   // while e_out_strobe goes the opposite way for out_strobe_chain/q_out_strobe lines.
   wire 		  e_in_strobe [DEPTH:0], e_out_strobe [DEPTH:0];
   // other wires correspond exactly to the outputs of modules
   wire 		  e_qready [DEPTH-1:0], e_used [DEPTH-1:0];

   // connect element buses to outside world where appropriate
   assign e_qd[0] = d_in;
   assign q = e_used[DEPTH-1] ? e_qd[DEPTH] : d_in;
   assign e_in_strobe [0] = empty ? d_in_strobe && ~q_out_strobe : d_in_strobe;
   assign e_out_strobe [DEPTH] = q_out_strobe;
   assign empty = ~e_used[DEPTH-1];
   assign full = e_used[0];
   assign q_ready = e_used[DEPTH-1] | d_in_strobe;

   
   // d_in_strobe for element 0 should be: full ? d_in_strobe : d_in_strobe && ~q_out_strobe
   // (check that 'full' is the correct condition ... ~empty may be more appropriate)
   
   // generate a chain of DEPTH elements:
   genvar i;
   generate
      for (i = 0; i < DEPTH; i = i + 1)
      begin : stage
       	   fifo_element #(WIDTH) element (.clk(clk), 
				       .d_in(e_qd[i]), 
				       .d_in_strobe(e_in_strobe[i]), 
				       .q(e_qd[i+1]),
				       .q_ready(e_qready[i]), 
				       .in_strobe_chain(e_in_strobe[i+1]), 
				       .q_out_strobe(e_out_strobe[i+1]), 
				       .out_strobe_chain(e_out_strobe[i]),
				       .prev_used(i == 0 ? 1'b0 : e_used [i-1]), 
				       .next_used(i == DEPTH-1 ? 1'b1 : e_used [i+1]), 
				       .used(e_used[i]));
      end
   endgenerate


   
endmodule
	      
