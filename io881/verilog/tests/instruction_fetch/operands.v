module ifetch_test_operands (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

`include "tests/instruction_fetch/ifetch.inc"
   
   always @(posedge en)
     begin
	
       	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

endmodule
