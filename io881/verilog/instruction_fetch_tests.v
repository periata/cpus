`timescale 1ns/1ps

module instruction_fetch_tests;
   reg        clk;
   reg [7:0]  enables;
   wire [7:0] fails;
   tri0       done;
   
   ifetch_test_startup test0 (.clk(clk), .en(enables[0]), .fail(fails[0]), .done(done));
   ifetch_test_requestpc test1 (.clk(clk), .en(enables[1]), .fail(fails[1]), .done(done));
   ifetch_test_4bits test2 (.clk(clk), .en(enables[2]), .fail(fails[2]), .done(done));
   ifetch_test_8bits test3 (.clk(clk), .en(enables[3]), .fail(fails[3]), .done(done));
   ifetch_test_skip_packed_noop test4 (.clk(clk), .en(enables[4]), .fail(fails[4]), .done(done)); 
   ifetch_test_operands test5 (.clk(clk), .en(enables[5]), .fail(fails[5]), .done(done));
   ifetch_test_pcupdate test6 (.clk(clk), .en(enables[6]), .fail(fails[6]), .done(done));
   ifetch_test_jump_suspend test7 (.clk(clk), .en(enables[7]), .fail(fails[7]), .done(done));
   
   //always #25  // 20MHz
   //always #30 // 16.7MHz
   always #40 // 12.5MHz
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
