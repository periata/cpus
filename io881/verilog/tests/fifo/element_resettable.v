module fifo_test_element_resettable (clk, en, fail, done);
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
	
	@(posedge clk) #5;
	reset = 1;

	@(posedge clk) #5;
	reset = 0;

	if (used !== 1'b0)
	  begin
	     $display ("fifo::element_resettable: used should have been 0 but was %b", used);
	     fail = 1;
	  end

	@(posedge clk) #5;
	reset = 1;
	d_in_strobe = 1;
	
	@(posedge clk) #5;
	reset = 0;

	if (used !== 1'b0)
	  begin
	     $display ("fifo::element_resettable: d_in_strobe should have been ignored while reset active, but used was %b", used);
	     fail = 1;
	  end
	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
