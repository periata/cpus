reg reset = 0;
reg [2:0] next_task_channel = 0;
reg [1:0] next_task_thread = 0;
reg [7:0] next_task_operand = 0;
reg next_task_ready = 0;
wire next_task_ack;
wire [7:0] opcode;
wire pull_decoded;
reg [23:0] decoded_insn = 0;
reg need_operand = 0, insn_noop = 0, insn_suspend = 0, insn_pull = 0, insn_jump = 0;
wire [23:0] ififo_di;
reg ififo_empty = 1, ififo_full = 0;
wire ififo_shift;
reg jump_enable = 0;
reg [11:0] jump_target = 0;
reg suspend = 0, jump_susp_skipped = 0;
wire [14:0] mem_addr;
wire mem_rd_en;
reg [7:0] mem_d_in = 0;
reg mem_ack = 0;
wire [2:0] current_channel;
wire [1:0] current_thread;
wire [11:0] current_pc;
wire [7:0] current_task_operand;

instruction_fetch sut (
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
