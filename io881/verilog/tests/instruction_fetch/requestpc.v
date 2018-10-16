module ifetch_test_requestpc (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

`include "tests/instruction_fetch/ifetch.inc"
   
   always @(posedge en)
     begin
	@(posedge clk);
	reset = 1;
	@(posedge clk);
	reset = 0;
	@(posedge clk) #10;
	
	next_task_channel = 3;
	next_task_thread = 0;
	next_task_ready = 1;

	@(posedge clk) #10;

	if (ififo_shift !== 1)
	  begin
	     $display ("ifetch::requestpc should have signalled shift to instruction fifo, was %b", ififo_shift);
	     fail = 1;
	  end
	if (ififo_di !== { 5'h02, 3'h7, 16'h8000 })
	  begin
	     $display ("ifetch::requestpc shifted instruction should be %b but was %b", 
		       { 5'h02, 3'h7, 16'h8000 }, 
		       ififo_di);
	     fail = 1;
	  end

	@(posedge clk) #10;
	jump_enable = 1;
	jump_target = 12'h555;
	@(posedge clk) #10;
	jump_enable = 0;
	if (current_pc !== 12'h555)
	  begin
	     $display ("ifetch::requestpc should be set to 555 but is %x", current_pc);
	     fail = 1;
	  end
	if (ififo_shift !== 0)
	  begin
	     $display ("ifetch::requestpc should have stopped asserting ififo_shift, was %b", ififo_shift);
	     fail = 1;
	  end
	
	     
	
       	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
