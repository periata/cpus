
module reg_test_channel_regs_independent (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"
   
   // control variables
   integer 	 i, c;
   
   task testSetPN;
      input [3:0]  c;
      input [1:0]  n;
      input [11:0] val;
      begin
	 @(posedge clk) ; #1;
	 d12 = val;
	 wchanid = c;
	 psel0 = n;
	 pselw = n;
	 
	 @(posedge clk) ; #1;
	 rchanid = c;
	 wep = 1;

	 @(posedge clk) ; #30;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::channel_regs_independent C%x:P%1d should be %x but is %x", c, n, val, qp0);
	    fail = 1;
	 end
      end
   endtask // testSetPN

   task testCheckPN;
      input [3:0]  c;
      input [1:0]  n;
      input [11:0] val;
      begin
	 @(posedge clk) ; #1;
	 rchanid = c;
	 psel0 = n;
	 psel1 = n;
	 
	 @(posedge clk) ; #30;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::channel_regs_independent C%x:P%1d (on 0) should be %x but is %x", c, n, val, qp0);
	    fail = 1;
	 end
	 if (qp1 !== val) begin
	    $display("reg::channel_regs_independent C%x:P%1d (on 1) should be %x but is %x", c, n, val, qp1);
	    fail = 1;
	 end
      end
   endtask // testCheckPN
   
   always @(posedge en)
     begin
	// check each register in each channel can be set to multiple values
	for (c = 0; c < 16; c ++)
	  for (i = 2; i < 4; i ++) begin
	     testSetPN(c,i,12'hAAA);
	     testSetPN(c,i,12'h555);
	     testSetPN(c,i,c << i);
	  end // for (i = 0; i < 4; i ++)

	// check that each register retains its value while others are changed
	for (c = 0; c < 16; c ++)
	  for (i = 2; i < 4; i ++) begin
	     testCheckPN(c, i, c << i);
	  end
	
	done = 1;
	@(posedge clk);
	done = 1'bz;	
     end // always @ (posedge en)

   
endmodule
   
