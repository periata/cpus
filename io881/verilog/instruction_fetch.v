module instruction_fetch (
			  // generic inputs			  
			  clk,
			  // connection to task launch fifo
			  next_task, next_task_pc, next_task_ready, next_task_ack,
			  // connection to instruction decoder
			  opcode, decoded_insn, need_operand, insn_noop, insn_suspend,
			  // connection to instruction fifo
			  ififo_di, ififo_operand, ififo_empty, ififo_full, ififo_shift,
			  // feedback from execution stage
			  jump_enable, jump_target, suspend,
			  // connection to memory controller
			  mem_addr, mem_rd_en, mem_d_in, mem_ack
			  );

   parameter TASK_SEL_SIZE=4;
   parameter PC_SIZE=12;
   parameter MEM_ADDR_SIZE=12;
   parameter OPCODE_SIZE=8;
   parameter OPERAND_SIZE=8;
   parameter DECODED_INSN_SIZE=12;

   // clock input (all activity to take place on positive edge)
   input                         clk;

   // connection to task launch fifo
   // ==============================
   // number of task to start if no task currently executing
   input [TASK_SEL_SIZE-1:0] 	 next_task;
   // stored program counter for next task
   input [PC_SIZE-1:0] 		 next_task_pc;
   // high if new task available
   input 			 next_task_ready;
   // set to high whenever a new task is begun
   output 			 next_task_ack;
   
   // connection to instruction decoder
   // =================================
   // opcode being decoded
   output [OPCODE_SIZE-1:0] 	 opcode;
   // decoded instruction returned
   input [DECODED_INSN_SIZE-1:0] decoded_insn;
   // high if decoded instruction requires an operand
   input 			 need_operand;
   // high if decoded instruction is a noop 
   // (noops are ignored if they occur as the second nibble of a packed instruction word)
   input 			 insn_noop;
   // high if the decoded instruction will cause the thread to be suspended
   input 			 insn_suspend;

   // connection to instruction fifo
   // ==============================
   output [DECODED_INSN_SIZE-1:0] 
   
   
			  
