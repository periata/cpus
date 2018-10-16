module ifetch_test_4bits (clk, en, fail, done);
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
	next_task_channel = 3;
	next_task_thread = 0;
	next_task_ready = 1;
	@(posedge clk);
	next_taks_ready = 0;
	jump_target = 12'h000;
	jump_enable = 1;
	@(posedge clk);
	jump_enable = 0;

	if (mem_addr !== 15'h3000)
	  begin
	     $display("ifetch::4bits - should have requested memory address 3000 but was %x", mem_addr);
	     fail = 1;
	  end
	if (mem_rd_en !== 1)
	  begin
	     $display ("ifetch::4bits - should have asserted mem_rd_en but was %b", mem_rd_en);
	     fail = 1;
	  end

	mem_d_in = 8'h5A;
	mem_ack = 1;

	@(posedge clk);

	mem_ack = 0;

	if (opcode !== 8'h5A)
	  begin
	     $display ("ifetch::4bits - opcode should be 5A, but was %x", opcode);
	     fail = 1;
	  end
	if (pull_decoded !== 0)
	  begin
	     $display ("ifetch::4bits - pull decoded should be 0, but was %b", pull_decoded);
	     fail = 1;
	  end
	
	decoded_insn = 24'hAAAAAA;
	need_operand = 0;
	insn_noop = 0;
	insn_suspend = 0;
	insn_pull = 0;
	insn_jump = 0;

	@(posedge clk);
	
	
	     
	
       	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
