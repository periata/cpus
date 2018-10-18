module instruction_fetch (
			  // generic inputs			  
			  clk, reset,
			  // connection to task launch fifo
			  next_task_channel, next_task_thread, next_task_operand,
			  next_task_ready, next_task_ack,
			  // connection to instruction decoder
			  opcode, pull_decoded, decoded_insn, need_operand, 
			  insn_noop, insn_suspend, insn_pull, insn_jump,
			  // connection to instruction fifo
			  ififo_di, ififo_empty, ififo_full, ififo_shift,
			  // feedback from execution stage
			  jump_enable, jump_target, suspend, jump_susp_skipped, 
			  // connection to memory controller
			  mem_addr, mem_rd_en, mem_d_in, mem_ack,
			  // status information
			  current_channel, current_thread, current_pc, current_task_operand
			  );

   // we only receive 3 bits of channel ID, not 4, as the least significant bit is
   // used to sort channel requests into separate queues, and this fetcher only operates
   // on one of those queues:
   parameter CHAN_SEL_SIZE=3;
   // each channel has 3 threads, 0 (input), 1 (output), 2 (request).  thread 3 is reserved.
   parameter THREAD_SEL_SIZE=2;
   parameter PC_SIZE=12;
   parameter MEM_ADDR_SIZE=12;
   // SRAM addresses are {channel number,local address}:
   parameter SRAM_ADDR_SIZE=MEM_ADDR_SIZE+CHAN_SEL_SIZE;   
   parameter OPCODE_SIZE=8;
   parameter OPERAND_SIZE=8;
   parameter DECODED_INSN_SIZE=24;
   parameter INSN_BUF_WIDTH=DECODED_INSN_SIZE;

   parameter DI_REQUESTPC = 24'h178000;

   // clock input (all activity to take place on positive edge)
   input                         clk;
   // reset (active high, synchronous)
   input 			 reset; 			 

   // connection to task launch fifo
   // ==============================
   // number of channel to start if no task currently executing
   input [CHAN_SEL_SIZE-1:0] 	 next_task_channel;
   // thread within channel
   input [THREAD_SEL_SIZE-1:0] 	 next_task_thread;
   // operand stored in task fifo to pass to thread's "PULL" instruction
   input [OPERAND_SIZE-1:0] 	 next_task_operand; 	 
   // high if new task available
   input 			 next_task_ready;
   // set to high whenever a new task is begun
   output 			 next_task_ack;
   
   // connection to instruction decoder
   // =================================
   // opcode being decoded
   output [OPCODE_SIZE-1:0] 	 opcode;
   // high if a pull instruction has already been decoded and the next element in the task fifo
   // is not for the current thread
   output 			 pull_decoded;
   // decoded instruction returned
   input [DECODED_INSN_SIZE-1:0] decoded_insn;
   // high if decoded instruction requires an operand
   input 			 need_operand;
   // High if decoded instruction is a noop 
   // (noops are ignored if they occur as the second nibble of a packed instruction word)
   input 			 insn_noop;
   // high if the decoded instruction will cause the thread to be suspended
   input 			 insn_suspend;
   // high if the decoded instruction is a pull instruction
   input 			 insn_pull;
   // high if the decoded instruction is a jump (which will cause temporary suspension of decoding)
   input 			 insn_jump;
   

   // connection to instruction fifo
   // ==============================
   // instruction to add to buffer
   output [INSN_BUF_WIDTH-1:0] 	 ififo_di;
   // signal for buffer empty
   input 			 ififo_empty;
   // signal for buffer full
   input 			 ififo_full;
   // strobe to add an instruction
   output 			 ififo_shift;

   // feedback from execution stage
   // =============================
   // set to true if a jump instruction in the queue is to be executed (and thus
   // decoding should resume from the jump target address)
   input 			 jump_enable;
   // if a jump instruction is executed, this is the target address of it
   input [MEM_ADDR_SIZE-1:0] 	 jump_target;
   // set to true if a suspend instruction is executed (and thus a new task
   // should be pulled from the task launch fifo)
   input 			 suspend;
   // set to true if a jump or suspend instruction in the queue is being skipped (and 
   // thus decoding should resume from the next instruction)
   input 			 jump_susp_skipped;

   // connection to memory controller
   // ===============================
   // address bus
   output [SRAM_ADDR_SIZE-1:0] 	 mem_addr;
   // read enable flag
   output 			 mem_rd_en;
   // memory data input
   input [OPCODE_SIZE-1:0] 	 mem_d_in;
   // data transfer acknowledgement, set to 1 when requested data has been read
   input 			 mem_ack;

   // status information
   // ==================
   // identifies the number of the currently executing channel
   output [CHAN_SEL_SIZE-1:0] 	 current_channel;
   // identifies the number of the currently executing thread
   output [THREAD_SEL_SIZE-1:0]  current_thread;
   // current program counter (used by the execution engine to store the updated program
   // counter if the thread suspends)
   output [MEM_ADDR_SIZE-1:0] 	 current_pc;
   // task launch operand (copied into a register on execution of the PULL instruction)
   output [OPERAND_SIZE-1:0] 	 current_task_operand;
   
   
/*
 
 NOTES ON BEHAVIOUR OF THE INSTRUCTION FETCH SYSTEM
 ==================================================
 
 This module implements one of the two instruction fetchers used by the processor.
 The instruction fetcher shares access with the static RAM used for data. Because the
 RAM is slower than the ALU, we divide the channels into two with separate RAM to provide
 a faster instruction stream in the hopes of being able to keep the ALU fully occupied.
 
 Access to RAM is managed externally; the instruction fetcher merely requests a read, and waits
 for the acknowledge flag to go high, at which point it knows that there is data available.
 
 The instruction fetcher doesn't have direct access to the task program counter; this must be
 provided externally when the task starts.  The fetcher keeps track of the current address and
 notifies other components of it (thus allowing the execution pipeline to update the program
 counter when the task is suspended).
 
 Sequence of operation is therefore:
 
 0. If there are no entries in the incoming task FIFO, do nothing; if there is an entry
    pull its details into internal registers and begin fetching the first instruction.
 
 1. When an instruction word is fetched, decode the first instruction and (if there are two instructions in the word)
    store the second in a register until later.
 
 2. If the current instruction requires an operand, fetch it.
 
 3. If an operand is received, or no operand was required, trigger the instruction buffer input flag.
 
 4. If there is a stored instruction, decode it and go back to 2.  Otherwise, start fetching the next instruction.
 
 If a task is started and we don't know it's PC (because it isn't the most recent task to execute in
 this fetcher), we send a RESTOREPC instruction to the execution pipeline and suspend fetching.  The pipeline
 will interpret this as a jump to the stored PC value, which it will cause to be fetched from the register file.
 
 If the first instruction of an invocation is conditional, it is ignored (it is assumed that it was a condition
 that evaluated to true on the last execution).
 
 If a jump instruction is decoded, suspend decoding.  If a PULL instruction is decoded, if it is the first
 since the task was begun, allow it to pass.  Otherwise, if the top entry in the incoming task FIFO is also
 for the same task, pull that task from the FIFO, store its operand, and allow it to pass.  Otherwise, change
 it to a SUSPEND operation, and suspend decoding.
 
 The execution pipeline signals when it executes a jump or a suspend operation, or if it skips either.
 
 * If a jump is executed, the instruction fetcher restarts fetching from an address provided by the execution unit
 
 * If a suspend is executed, the instruction fetcher starts the next incoming task, or returns to waiting for one
   to arrive
 
 * If either a jump or suspend is skipped, the instruction fetcher resumes from the point at which it was
   suspended (i.e. immediately after decoding a jump or suspend instruction).
 
 It is not supported for the first PULL instruction in a thread to be conditional (unless the conditional instruction
  is itself the first instruction, in which case it will be ignored, as above).  On first execution of the thread
 it must always succeed, and subsequent thread suspensions only occur on a PULL which is executed so in that case
 it will always be executed.
 
 Note that this requires that a PULL instruction must always be either the first instruction in a word, or if it is 
 the second, the first must either:
 
 * be a conditional execution instruction (which will be ignored), or
 * be idempotent (as it may be executed twice).
 
 Generally, the safest bet is to always align PULL instructions as the first instruction in a word.  
 
 A thread may also be suspended by a YIELD or PUT instruction if the destination is not available.  In order to allow
 for this possibility, these instructions also suspend the decoder, and are signalled as a skipped suspend if they
 succeed.  If either instruction is executed as the first instruction of a thread invocation, the invocation operand
 is deemed used.
 
 */ 


   
   // instruction fetch current state
   // ===============================

   reg 				 active;       // true if we are currently in fetch mode
   reg 				 task_loaded;  // true if the task information cache is correctly initialized
   reg 				 fetching_pc;  // true if we're requesting a PC update in this cycle
   
   reg [CHAN_SEL_SIZE-1:0] 	 current_channel;
   reg [THREAD_SEL_SIZE-1:0] 	 current_thread;
   reg [MEM_ADDR_SIZE-1:0] 	 current_pc;
   reg [OPERAND_SIZE-1:0] 	 current_task_operand;
   reg 				 pull_decoded;

   reg [OPCODE_SIZE-1:0]	 saved_opcode;
   reg 				 saved_opcode_valid;

   reg 				 fetching_insn, fetching_operand;
   
   // registered outputs
   reg 				 next_task_ack;
   reg 				 ififo_shift;

 
   
   
   // combinatorial outputs
   // =====================

   assign opcode = fetching_insn ? mem_d_in : saved_opcode;
   assign ififo_di = fetching_pc ? DI_REQUESTPC : decoded_insn;
   assign mem_addr = { current_channel, current_pc };
   assign mem_rd_en = fetching_insn | fetching_operand;
   
   // behaviour
   // =========

   always @(posedge clk)
     begin
	// default values for control lines that are activated for single cycles
	next_task_ack <= 0;
	ififo_shift <= 0;
	fetching_pc <= !reset && !active && !task_loaded && next_task_ready;

	if (reset)
	  begin
	     // reset registers
	     $display ("reset");
	     
	     $monitor ("task_loaded: %b, fetching_pc: %b, jump_enable: %b, jump_target: %x", 
	               task_loaded, fetching_pc, jump_enable, jump_target);
	     
	     active <= 0;
	     task_loaded <= 0;
	     current_channel <= 0;
	     current_thread <= 3;
	     saved_opcode_valid <= 0;
	     fetching_insn <= 0;
	     fetching_operand <= 0;
	  end
	else // not reset
	  begin
	     if (!active)
	       begin
		  //
		  // if active is low, we are not currently fetching instructions: either
		  // we don't have a current task (task_loaded is low), or we are waiting
		  // for a jump or suspend instruction to be executed/skipped.  Fetching
		  // the initial program counter for a task is a special case of the
		  // latter (and is handled exactly the same way).
		  //
		  if (!task_loaded && next_task_ready)
		    begin
		       $display ("starting thread %x:%x", next_task_channel, next_task_thread);
		       
		       current_channel <= next_task_channel;
		       current_thread <= next_task_thread;
		       current_task_operand <= next_task_operand;
		       next_task_ack <= 1;
		       ififo_shift <= 1;
		       task_loaded <= 1;
		       pull_decoded <= 0;
		    end
		  else if (task_loaded && jump_enable)
		    begin
		       $display ("jump detected (new target %x)", jump_target);
		       
		       current_pc <= jump_target;
		       active <= 1;
		       //
		       // always begin fetching the next instruction after a jump
		       // (the queue should always be empty in this situation)
		       //
		       fetching_insn <= 1;
		       // FIXME: do we need to clear partial opcode loads/etc?
		    end
	       end // if (!active)
	     else
	       begin
		  //
		  // if active is high, we have a task and are fetching instructions.
		  //

		  if (fetching_insn && mem_ack)
		    begin
		       //
		       // we've loaded a new instruction word, so begin decoding it
		       //
		       saved_opcode <= mem_d_in;
		    end
		  
	       end 
	     
	  end
     end // always @ (posedge clk)

   always @(negedge clk)
     begin
	if (fetching_pc)
	  task_loaded <= 1;
     end
   

endmodule   
