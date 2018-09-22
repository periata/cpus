
module reg_test_process_special_regs (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"
   
   // control variables
   integer 	 p;
   
   task testSetP;
      input [4:0]  p;
      input [11:0] pc;
      begin
	 dpc = pc;
	 wthreadid = p;
	 @(negedge clk) ;
	 rthreadid = p;
	 wepc = 1;
	 @(negedge clk) ;
	 wepc = 0;
	 if (qpc !== pc) begin
	    $display("reg::process_special_regs T%x:PC should be %x but is %x", p, pc, qpc);
	    fail = 1;
	 end
      end
   endtask // testSetP

   task testCheckP;
      input [4:0]  p;
      input [11:0] pc;
      begin
	 rthreadid = p;
	 @(negedge clk) ;
	 if (qpc !== pc) begin
	    $display("reg::process_special_regs T%x:PC should be %x but is %x", p, pc, qpc);
	    fail = 1;
	 end
      end
   endtask // testCheckP
   
   always @(posedge en)
     begin
	// check each register in each process can be set to multiple values
	for (p = 0; p < 32; p ++) begin
	     testSetP(p,12'hAAA);
	     testSetP(p,12'h555);
	     testSetP(p,p);
	  end // for (i = 0; i < 4; i ++)

	// check that each register retains its value while others are changed
	for (p = 0; p < 32; p ++) begin
	     testCheckP(p, p);
	  end
	
	done = 1;
	@(posedge clk);
	done = 1'bz;	
     end // always @ (posedge en)

endmodule
   
