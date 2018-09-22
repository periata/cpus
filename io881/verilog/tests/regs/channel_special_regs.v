
module reg_test_channel_special_regs (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"
   
   // control variables
   integer 	 c;
   
   task testSetC;
      input [3:0]  c;
      input [7:0]  csb, mempage;
      begin
	 d8 = csb;
	 wchanid = c;
	 @(negedge clk) ;
	 rchanid = c;
	 wecsb = 1;
	 @(negedge clk) ;
	 wecsb = 0;
	 if (qcsb !== csb) begin
	    $display("reg::channel_special_regs C%x:CSB should be %x but is %x", c, csb, qcsb);
	    fail = 1;
	 end
	 d8 = mempage;
	 @(negedge clk) ;
	 wemempage = 1;
	 @(negedge clk) ;
	 wemempage = 0;
	 if (qmempage !== mempage) begin
	    $display("reg::channel_special_regs C%x:MEMPAGE should be %x but is %x", c, mempage, qmempage);
	    fail = 1;
	 end
      end
   endtask // testSetC

   task testCheckC;
      input [3:0]  c;
      input [7:0]  csb, mempage;
      begin
	 @(negedge clk) ;
	 rchanid = c;
	 @(negedge clk) ;
	 if (qcsb !== csb) begin
	    $display("reg::channel_special_regs C%x:CSB should be %x but is %x", c, csb, qcsb);
	    fail = 1;
	 end
	 @(negedge clk) ;
	 if (qmempage !== mempage) begin
	    $display("reg::channel_special_regs C%x:MEMPAGE should be %x but is %x", c, mempage, qmempage);
	    fail = 1;
	 end
      end
   endtask // testCheckC
   
   always @(posedge en)
     begin
	// check each register in each process can be set to multiple values
	for (c = 0; c < 16; c ++) begin
	     testSetC(c,12'hAA,12'h55);
	     testSetC(c,12'h55,12'hAA);
	     testSetC(c,c,c<<4);
	  end // for (i = 0; i < 4; i ++)

	// check that each register retains its value while others are changed
	for (c = 0; c < 16; c ++) begin
	     testCheckC(c,c,c<<4);
	  end
	
	done = 1;
	@(posedge clk);
	done = 1'bz;	
     end // always @ (posedge en)

endmodule
   
