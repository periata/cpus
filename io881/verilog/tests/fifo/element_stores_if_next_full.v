module fifo_test_element_stores_if_next_full (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

   parameter WIDTH=8;
   
`include "tests/fifo/element.inc"
   
   always @(posedge en)
     begin
	@(posedge clk) #5;
	d_in = 8'hAA;
	next_used = 1;
	d_in_strobe = 1;
	if (in_strobe_chain !== 0) begin
	   $display("fifo::element_stores_if_next_full - in_strobe_chain should be 0 but is %b", in_strobe_chain);
	   fail = 1;
	end
	@(posedge clk) #5;
	d_in_strobe = 0;

	if (q !== 8'hAA) begin
	   $display("fifo::element_stores_if_next_full - q should have been aa but was %x", q);
	   fail = 1;
	end
	if (used !== 1) begin
	   $display("fifo::element_stores_if_next_full - used should have been 1 but is %b", used);
	   fail = 1;
	end

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
