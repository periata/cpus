module fifo_test_element_copies_prev_if_full (clk, en, fail, done);
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
	prev_used = 1;
	d_in = 8'h55;
	q_out_strobe = 1;
	
	#8;
	if (out_strobe_chain !== 1) begin
	   $display ("fifo::element_copies_prev_if_full - out_strobe_chain should be 1 but is %b", out_strobe_chain);
	   fail=1;
	end

	@(posedge clk) #5;

	if (q != 8'h55) begin
	   $display ("fifo::element_copies_prev_if_full - q should be 55 but is %x", q);
	   fail = 1;
	end
	if (used !== 1) begin
	   $display("fifo::element_copies_prev_if_full - used should have been 1 but is %b", used);
	   fail = 1;
	end

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
