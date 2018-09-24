module ram_test_readwrite (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

   parameter DATA_=8;
   
`include "tests/ram/ram.inc"
   
   always @(posedge en)
     begin
	@(posedge clk) #5;
	a = 1234;
	d = 8'hAA;
	wr = 1;
	rd = 0;
	@(posedge clk) #5;
	a = 1235;
	d = 8'h55;
	@(posedge clk) #5;
	a = 1236;
	d = 8'hFF;
	@(posedge clk) #5;
	a = 1234;
	wr = 0;
	rd = 1;
	@(posedge clk);
	if (q !== 8'hAA)
	  begin
	     $display ("ram::readwrite value read from 1234 should have been aa, was %x", q);
	     fail = 1;
	  end
	#5;
	a = 1235;
	@(posedge clk);
	if (q !== 8'h55)
	  begin
	     $display ("ram::readwrite value read from 1235 should have been 55, was %x", q);
	     fail = 1;
	  end
	#5;
	a = 1236;
	@(posedge clk);
	if (q !== 8'hFF)
	  begin
	     $display ("ram::readwrite value read from 1236 should have been ff, was %x", q);
	     fail = 1;
	  end
	#5;
	a = 32767;
	wr = 1;
	rd = 0;
	d = 8'h42;
	@(posedge clk);
	#5;
	wr = 0;
	rd = 1;
	@(posedge clk);
	if (q !== 8'h42)
	  begin
	     $display ("ram::readwrite value read from 32767 should have been 42, was %x", q);
	     fail = 1;
	  end
	
       	
	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end

//   initial
//     $monitor ("ram::state a=%x, d=%x, q=%x, rd=%b, wr=%b", a, d, q, rd, wr);
   
endmodule
