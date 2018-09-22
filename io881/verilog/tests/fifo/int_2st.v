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

	@(posedge clk) #1;
	d_in = 8'h55;
	d_in_strobe = 1;
	
	@(posedge clk) #15;
	d_in_strobe = 0;

	@(posedge clk) #1;
	d_in = 8'hAA;
	d_in_strobe = 1;
	
	@(posedge clk) #15;
	d_in_strobe = 0;
	
	if (empty !== 0) begin
	   $display("fifo::int_2st - should not be empty after inputx2, was %b", empty);
	   fail = 1;
	end
	if (full !== 1) begin
	   $display("fifo::int_2st - should be full after inputx2, was %b", full);
	   fail = 1;
	end
	if (q != 8'h55) begin
	   $display("fifo::int_2st - should have copied input to outputx2, was %x", q);
	   fail = 1;
	end
	if (q_ready !== 1) begin
	   $display("fifo::int_2st - should be ready after inputx2, but was %b", q_ready);
	   fail = 1;
	end

	@(posedge clk) #1;
	q_out_strobe = 1;

	@(posedge clk) #15;
	q_out_strobe = 0;

	if (empty !== 0) begin
	   $display("fifo::int_2st - should not be empty after inputx2/outputx1, was %b", empty);
	   fail = 1;
	end
	if (full !== 0) begin
	   $display("fifo::int_2st - should not be full after inputx2/outputx1, was %b", full);
	   fail = 1;
	end
	if (q != 8'hAA) begin
	   $display("fifo::int_2st - should have copied input#2 to outputx2/outputx1, was %x", q);
	   fail = 1;
	end
	if (q_ready !== 1) begin
	   $display("fifo::int_2st - should be ready after inputx2/outputx1, but was %b", q_ready);
	   fail = 1;
	end

	@(posedge clk) #1;
	q_out_strobe = 1;

	@(posedge clk) #15;
	q_out_strobe = 0;

	if (empty !== 1) begin
	   $display("fifo::int_2st - should be empty after inputx2/outputx2, was %b", empty);
	   fail = 1;
	end
	if (full !== 0) begin
	   $display("fifo::int_2st - should not be full after inputx2/outputx2, was %b", full);
	   fail = 1;
	end
	if (q_ready !== 0) begin
	   $display("fifo::int_2st - should not be ready after inputx2/outputx2, but was %b", q_ready);
	   fail = 1;
	end
	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

   initial
     begin
	//$monitor ("fifo::int_2st::state - %x/%b(e%bf%b) -- [%x/%b] -- [%x/%b] -- %x/%b", d_in, d_in_strobe, empty, full, sut.stage[0].element.store, sut.stage[0].element.used, sut.stage[1].element.store, sut.stage[1].element.used, q, q_ready);
     end
   
endmodule
