module fifo_test_element_passes_if_next_empty (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

   parameter WIDTH=8;
   
`include "tests/fifo/element.inc"
   
   always @(posedge en)
     begin
	@(posedge clk) #5;
	d_in = 8'hAA;
	next_used = 0;
	d_in_strobe = 1;
	#8;
	if (q !== 8'hAA) begin
	   $display("fifo::element_stores_if_next_full - q should have been aa but was %x", q);
	   fail = 1;
	end
	if (in_strobe_chain !== 1) begin
	   $display("fifo::element_stores_if_next_full - in_strobe_chain should have been 1 but is %b", in_strobe_chain);
	   fail = 1;
	end
	@(posedge clk) #5;
	d_in_strobe = 0;
	if (used !== 0) begin
	   $display("fifo::element_stores_if_next_full - used should be 0 but is %b", used);
	   fail = 1;
	end

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
