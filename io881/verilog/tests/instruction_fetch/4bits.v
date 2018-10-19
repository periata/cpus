module ifetch_test_4bits (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

`include "tests/instruction_fetch/ifetch.inc"
   
   always @(posedge en)
     begin
	@(posedge clk) #1;
	reset = 1;
	@(posedge clk) #1;
	reset = 0;
	@(posedge clk) #1;
	next_task_channel = 3;
	next_task_thread = 0;
	next_task_ready = 1;
	@(posedge clk) #1;
	next_task_ready = 0;
	jump_target = 12'h000;
	jump_enable = 1;
	@(posedge clk) #1;
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

	// opcode should feed out as soon as memory input is available:
	#1;

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

	// decode should be examined at next clock edge:
	
	decoded_insn = 24'hAAAAAA;
	need_operand = 0;
	insn_noop = 0;
	insn_suspend = 0;
	insn_pull = 0;
	insn_jump = 0;
	
	@(posedge clk) #1;

	mem_ack = 0;

	// check for enqueuing instruction 1 from first word
	if (ififo_di !== 24'hAAAAAA)
	  begin
	     $display ("ifetch::4bits - ififo_di should be AAAAAA but is %x", ififo_di);
	     fail = 1;
	  end
	if (ififo_shift !== 1)
	  begin
	     $display ("ifetch::4bits - ififo_shift should be asserted but is %b", ififo_shift);
	     fail = 1;
	  end
	// check decoding of instruction 2 has begun
	if (opcode !== 8'hA0)
	  begin
	     $display ("ifetch::4bits - opcode for second instruction should be A0, but was %x", opcode);
	     fail = 1;
	  end
	
	#1;

	decoded_insn = 24'h555555;

	#1;
	// check for enqueueing instruction 2 from first word
	if (ififo_di !== 24'hAAAAAA)
	  begin
	     $display ("ifetch::4bits - ififo_di should remain AAAAAA until clock edge but is %x", ififo_di);
	     fail = 1;
	  end

	@(posedge clk) #1;
	
	if (ififo_di !== 24'h555555)
	  begin
	     $display ("ifetch::4bits - ififo_di should change to 555555 for second instruction but is %x", ififo_di);
	     fail = 1;
	  end
	if (ififo_shift !== 1)
	  begin
	     $display ("ifetch::4bits - ififo_shift should be asserted for second instruction but is %b", ififo_shift);
	     fail = 1;
	  end

	// check for fetching next instruction word
	if (mem_addr !== 15'h3001)
	  begin
	     $display("ifetch::4bits - should have requested memory address 3001 but was %x", mem_addr);
	     fail = 1;
	  end
	if (mem_rd_en !== 1)
	  begin
	     $display ("ifetch::4bits - should have asserted mem_rd_en but was %b", mem_rd_en);
	     fail = 1;
	  end
	
	@(posedge clk) #1;
	
	     
	// memory acknowledgement not sent in this cycle, so no decoding can happen yet
	if (ififo_shift !== 0)
	  begin
	     $display ("ifetch::4bits - should not be asserting ififo_shift before mem_ack, but was %b", ififo_shift);
	     fail = 1;
	  end

	@(posedge clk) #1;

	mem_ack = 1;
	mem_d_in = 8'hFF;

	#1;

	if (opcode !== 8'hFF)
	  begin
	     $display ("ifetch::4bits - opcode should be FF, but was %x", opcode);
	     fail = 1;
	  end
	if (pull_decoded !== 0)
	  begin
	     $display ("ifetch::4bits - pull decoded should be 0, but was %b", pull_decoded);
	     fail = 1;
	  end

	decoded_insn = 24'h123456;
	need_operand = 0;
	insn_noop = 0;
	insn_suspend = 0;
	insn_pull = 1;
	insn_jump = 0;

	@(posedge clk) #1;

	// check for enqueuing instruction 1 from second word
	if (ififo_di !== 24'h123456)
	  begin
	     $display ("ifetch::4bits - ififo_di should be 123456 but is %x", ififo_di);
	     fail = 1;
	  end
	if (ififo_shift !== 1)
	  begin
	     $display ("ifetch::4bits - ififo_shift should be asserted but is %b", ififo_shift);
	     fail = 1;
	  end
	// check pull instruction recognized
	if (pull_decoded !== 1)
	  begin
	     $display ("ifetch::4bits - pull decoded should be asserted, but was %b", pull_decoded);
	     fail = 1;
	  end
	
       	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
