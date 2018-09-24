`timescale 1ns/1ps

module ram_tests;
   reg        clk;
   reg [0:0]  enables;
   wire [0:0] fails;
   tri0       done;
   
   ram_test_readwrite test0 (.clk(clk), .en(enables[0]), .fail(fails[0]), .done(done));

   always #25  // 20MHz
   //always #30 // 16.7MHz
     clk = !clk;

   always @(clk)
     if (done) begin
	enables = enables << 1;
	if (enables == 0) begin
	   if (fails == 0)
	     $display ("\ram -- Success\n");
	   else
	     $display ("\nram -- Done with failures: %b\n", fails);
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
