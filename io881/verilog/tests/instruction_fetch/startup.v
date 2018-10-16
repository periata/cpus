module ifetch_test_startup (clk, en, fail, done);
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
	@(posedge clk);

	if (current_channel !== 0)
	  begin
	     $display ("ifetch::startup after reset channel should be 0, was %d", current_channel);
	     fail = 1;
	  end
	if (current_thread !== 3)
	  begin
	     $display ("ifetch::startup after reset thread should be 3, was %d", current_thread);
	     fail = 1;
	  end

	@(posedge clk);
	@(posedge clk) #10;

	if (current_channel !== 0)
	  begin
	     $display ("ifetch::startup after reset channel should stay 0, was %d", current_channel);
	     fail = 1;
	  end
	if (current_thread !== 3)
	  begin
	     $display ("ifetch::startup after reset thread should stay 3, was %d", current_thread);
	     fail = 1;
	  end

	next_task_channel = 7;
	next_task_thread = 0;
	next_task_ready = 1;
	
	@(posedge clk) #10; 
	if (next_task_ack !== 1)
	  begin
	     $display ("ifetch::startup should have acknowledged task start, but was %b", next_task_ack);
	     fail = 1;
	  end
	if (current_channel !== 7)
	  begin
	     $display ("ifetch::startup after ready channel should be 7, was %d", current_channel);
	     fail = 1;
	  end
	if (current_thread !== 0)
	  begin
	     $display ("ifetch::startup after ready thread should be 0, was %d", current_thread);
	     fail = 1;
	  end

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
