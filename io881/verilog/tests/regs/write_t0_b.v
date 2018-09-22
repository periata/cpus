   
module reg_test_write_t0_b (clk, en, fail, done);
   input      clk;
   input      en;
   output reg fail = 0;
   output reg done = 1'bz;
   
`include "tests/regs/regs.inc"

   always @(posedge en)
     begin
	d8 = 8'hAA;
	@(negedge clk) ;
	web = 1;
	@(negedge clk) ;
	web = 0;
	if (qb !== 8'hAA) begin
	   $display("reg::write_t0_b qb should be AA but is %x", qb);
	   fail = 1;
	end

	@(negedge clk);
	d8 = 8'h55;
	web = 1;
	@(negedge clk);
	web = 0;
	if (qb !== 8'h55) begin
	   $display("reg::write_t0_b qb should be 55 but is %x", qb);
	   fail = 1;
	end

	done = 1;
	@(posedge clk);
	done = 1'bz;	
     end // always @ (posedge en)

   initial
     begin
	//$monitor("write_t0_b::en=%b,d8=%x,wea=%b,qa=%x,fail=%b,done=%b", en, d8, web, qb, fail, done);
     end
   
endmodule
