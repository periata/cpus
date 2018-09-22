
module reg_test_process_regs_independent (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"
   
   // control variables
   integer 	 i, p;
   
   task testSetPN;
      input [4:0]  p;
      input [1:0]  n;
      input [11:0] val;
      begin
	 d12 = val;
	 wthreadid = p;
	 psel0 = n;
	 pselw = n;
	 @(negedge clk) ;
	 rthreadid = p;
	 wep = 1;
	 @(negedge clk) ;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::process_regs_independent T%x:P%1d should be %x but is %x", p, n, val, qp0);
	    fail = 1;
	 end
      end
   endtask // testSetPN

   task testCheckPN;
      input [4:0]  p;
      input [1:0]  n;
      input [11:0] val;
      begin
	 rthreadid = p;
	 psel0 = n;
	 psel1 = n;
	 @(negedge clk) ;
	 wep = 0;
	 if (qp0 !== val) begin
	    $display("reg::process_regs_independent T%x:P%1d (on 0) should be %x but is %x", p, n, val, qp0);
	    fail = 1;
	 end
	 if (qp1 !== val) begin
	    $display("reg::process_regs_independent T%x:P%1d (on 1) should be %x but is %x", p, n, val, qp1);
	    fail = 1;
	 end
      end
   endtask // testCheckPN
   
   always @(posedge en)
     begin
	// check each register in each process can be set to multiple values
	for (p = 0; p < 32; p ++)
	  for (i = 0; i < 2; i ++) begin
	     testSetPN(p,i,12'hAAA);
	     testSetPN(p,i,12'h555);
	     testSetPN(p,i,p << i);
	  end // for (i = 0; i < 4; i ++)

	// check that each register retains its value while others are changed
	for (p = 0; p < 32; p ++)
	  for (i = 0; i < 2; i ++) begin
	     testCheckPN(p, i, p << i);
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
   
