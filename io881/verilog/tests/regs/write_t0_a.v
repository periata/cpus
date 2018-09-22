module reg_test_write_t0_a (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   

`include "tests/regs/regs.inc"
   
   always @(posedge en)
     begin
	d8 = 8'hAA;
	@(negedge clk) ;
	wea = 1;
	@(negedge clk) ;
	wea = 0;
	if (qa !== 8'hAA) begin
	   $display("reg::write_t0_a qa should be AA but is %x", qa);
	   fail = 1;
	end

	@(negedge clk);
	d8 = 8'h55;
	wea = 1;
	@(negedge clk);
	wea = 0;
	if (qa !== 8'h55) begin
	   $display("reg::write_t0_a qa should be 55 but is %x", qa);
	   fail = 1;
	end

	done = 1;
	@(posedge clk);
	done = 1'bz;
     end // always @ (posedge en)

   initial
     begin
	//$monitor("write_t0_a::en=%b,d8=%x,wea=%b,qa=%x,fail=%b,done=%b", en, d8, wea, qa, fail, done);
     end
   
	
endmodule
