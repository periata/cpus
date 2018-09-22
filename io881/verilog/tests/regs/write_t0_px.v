
module reg_test_write_t0_px (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"

   // control variables
   integer 	 i;
   
   task testSetPN;
      input [1:0]  n;
      input [11:0] val;
      begin
	 d12 = val;
	 psel0 = n;
	 pselw = n;
	 @(negedge clk) ;
	 wep = 1;
	 @(negedge clk) ;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::write_t0_px P%1d should be %x but is %x", n, val, qp0);
	    fail = 1;
	 end
      end
   endtask // testSetPN

   task testCheckPN;
      input [1:0]  n;
      input [11:0] val;
      begin
	 psel0 = n;
	 psel1 = n;
	 @(negedge clk) ;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::write_t0_px P%1d (on port 0) should be %x but is %x", n, val, qp0);
	    fail = 1;
	 end
	 if (qp1 !== val) begin
	    $display("reg::write_t0_px P%1d (on port 1) should be %x but is %x", n, val, qp1);
	    fail = 1;
	 end
      end
   endtask // testCheckPN
   
   always @(posedge en)
     begin
	// check each register can be set to multiple values
	for (i = 0; i < 4; i ++) begin
	   testSetPN(i,12'hAAA);
	   testSetPN(i,12'h555);
	   testSetPN(i,12'h111 << i);
	end // for (i = 0; i < 4; i ++)

	// check that each register retains its value while others are changed
	for (i = 0; i < 4; i ++) begin
	   testCheckPN(i, 12'h111 << i);
	end
	
	done = 1;
	@(posedge clk);
	done = 1'bz;	
     end // always @ (posedge en)

   initial
     begin
	//$monitor("write_t0_b::en=%b,d8=%x,wea=%b,qa=%x,fail=%b,done=%b", en, d8, web, qb, fail, done);
     end
   
endmodule
   
