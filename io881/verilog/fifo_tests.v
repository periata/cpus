`timescale 1ns/1ps

module fifo_tests;
   reg        clk;
   reg [4:0]  enables;
   wire [4:0] fails;
   tri0       done;
   
   fifo_test_element_stores_if_next_full test0 (.clk(clk), .en(enables[0]), .fail(fails[0]), .done(done));
   fifo_test_element_passes_if_next_empty test1 (.clk(clk), .en(enables[1]), .fail(fails[1]), .done(done));
   fifo_test_element_resets_if_prev_empty test2 (.clk(clk), .en(enables[2]), .fail(fails[2]), .done(done));
   fifo_test_element_copies_prev_if_full test3 (.clk(clk), .en(enables[3]), .fail(fails[3]), .done(done));
   fifo_test_int_degenerate test4 (.clk(clk), .en(enables[4]), .fail(fails[4]), .done(done));

   always #25  // 20MHz
   //always #30 // 16.7MHz
     clk = !clk;

   always @(clk)
     if (done) begin
	enables = enables << 1;
	if (enables == 0) begin
	   if (fails == 0)
	     $display ("\nfifo -- Success\n");
	   else
	     $display ("\nfifo -- Done with failures: %b\n", fails);
	   $finish();
	end
     end

   initial
     begin
	//$monitor ("enables: %b, done: %b", enables, done);
	
	clk = 0;
	
	@(posedge clk);
	
	enables = 1;
     end
   
endmodule
