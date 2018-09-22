`timescale 1ns/1ps

module regs_tests;
   reg        clk;
   reg [6:0]  enables;
   wire [6:0] fails;
   tri0       done;
   
   reg_test_write_t0_a test0 (.clk(clk), .en(enables[0]), .fail(fails[0]), .done(done));
   reg_test_write_t0_b test1 (.clk(clk), .en(enables[1]), .fail(fails[1]), .done(done));
   reg_test_write_t0_px test2 (.clk(clk), .en(enables[2]), .fail(fails[2]), .done(done));
   reg_test_process_regs_independent test3 (.clk(clk), .en(enables[3]), .fail(fails[3]), .done(done));
   reg_test_channel_regs_independent test4 (.clk(clk), .en(enables[4]), .fail(fails[4]), .done(done));
   reg_test_process_special_regs test5 (.clk(clk), .en(enables[5]), .fail(fails[5]), .done(done));
   reg_test_channel_special_regs test6 (.clk(clk), .en(enables[6]), .fail(fails[6]), .done(done));
   
   always #25  // 20MHz
   //always #30 // 16.7MHz
     clk = !clk;

   always @(clk)
     if (done) begin
	enables = enables << 1;
	if (enables == 0) begin
	   if (fails == 0)
	     $display ("\nregs -- Success\n");
	   else
	     $display ("\nregs -- Done with failures: %b\n", fails);
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
