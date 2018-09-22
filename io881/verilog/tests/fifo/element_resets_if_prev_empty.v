module fifo_test_element_resets_if_prev_empty (clk, en, fail, done);
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

	@(posedge clk) #5;
	d_in_strobe = 0;
	prev_used = 0;
	q_out_strobe = 1;
	if (out_strobe_chain !== 0) begin
	   $display ("fifo::element_resests_if_prev_empty - out_strobe_chain should have been 0 but is %b", out_strobe_chain);
	   fail = 1;
	end

	@(posedge clk) #5;
	
	if (used !== 0) begin
	   $display("fifo::element_resets_if_prev_empty - used should have been 0 but is %b", used);
	   fail = 1;
	end

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
