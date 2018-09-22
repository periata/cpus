// integration tests for a 2-stage fifo
module fifo_test_int_2st (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

   parameter WIDTH=8;
   parameter DEPTH=2;
   
`include "tests/fifo/fifo.inc"
   
   always @(posedge en)
     begin
	if (empty !== 1) begin
	   $display("fifo::int_2st - should start empty, but was %b", empty);
	   fail = 1;
	end
	if (full !== 0) begin
	   $display("fifo::int_2st - should not start full, but was %b", full);
	   fail = 1;
	end
	if (q_ready !== 0) begin
	   $display("fifo::int_2st - should not start ready, but was %b", q_ready);
	   fail = 1;
	end
	   
	@(posedge clk) #1;
	d_in = 8'h55;
	d_in_strobe = 1;
	
	@(posedge clk) #15;
	d_in_strobe = 0;
	if (empty !== 0) begin
	   $display("fifo::int_2st - should not be empty after input, was %b", empty);
	   fail = 1;
	end
	if (full !== 0) begin
	   $display("fifo::int_2st - should not be full after input, was %b", full);
	   fail = 1;
	end
	if (q != 8'h55) begin
	   $display("fifo::int_2st - should have copied input to output, was %x", q);
	   fail = 1;
	end
	if (q_ready !== 1) begin
	   $display("fifo::int_2st - should be ready after input, but was %b", q_ready);
	   fail = 1;
	end

	q_out_strobe = 1;

	@(posedge clk) #15;

	q_out_strobe = 0;
	
	if (empty !== 1) begin
	   $display("fifo::int_2st - should be empty after out strobe, but was %b", empty);
	   fail = 1;
	end
	if (full !== 0) begin
	   $display("fifo::int_2st - should not be full after out strobe, but was %b", full);
	   fail = 1;
	end
	if (q_ready !== 0) begin
	   $display("fifo::int_2st - should not be ready after out strobe, but was %b", q_ready);
	   fail = 1;
	end

	@(posedge clk);
	
	d_in = 8'hAA;
	q_out_strobe = 1;
	d_in_strobe = 1;

	#15;
	if (q !== 8'hAA) begin
	   $display ("fifo::int_2st - should be copying input to output when operating both ends while empty, but was %x", q);
	   fail = 1;
	end
	if (q_ready !== 1) begin
	   $display ("fifo::int_2st - should be showing ready when able to copy input to output, but was %b", q_ready);

	   fail = 1;
	end
	

	@(posedge clk);
	d_in = 8'h00;
	d_in_strobe = 0;
	q_out_strobe = 0;
	
	#15;
	if (full !== 0 || empty !== 1 || q_ready !== 0) begin
	   $display ("fifo::int_2st - should be showing empty condition after passthrough, but was %b/%b/%b", full,empty, q_ready);
	   fail = 1;
	end
	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
