// integration tests for a 5-stage fifo
module fifo_test_int_big (clk, en, fail, done);
   input        clk, en;
   output reg   fail = 0;
   output reg   done = 1'bz;

   parameter WIDTH=8;
   parameter DEPTH=5;
   
`include "tests/fifo/fifo.inc"

   reg [8:0]	i, j;
   
   // producer process
   always @(posedge en)
     begin
	for (i=0; i<256; i++)
	  begin
	     @(posedge clk) #($urandom_range(1,15));

	     while ($urandom_range(1,5) == 1)
	       begin
		  @(posedge clk) #($urandom_range(1,15));
	       end
	     
	     while (full === 1'b1)
	       begin
		  @(posedge clk) #($urandom_range(1,15));
	       end

	     //$display ("fifo::int_big: producing %x", i);
	     
	     d_in = i;
	     d_in_strobe = 1;

	     @(posedge clk) #($urandom_range(1,15));
	     d_in_strobe = 0;
	  end
     end

   // consumer process
   always @(posedge en)
     begin
	for (j=0; j<256; j++)
	  begin
	     @(posedge clk) #($urandom_range(1,15));

	     //$display ("fifo::int_big: waiting for ready %x", j);
	     
	     while (q_ready === 1'b0)
	       begin
		  @(posedge clk) #($urandom_range(1,15));
	       end

	     //$display ("fifo::int_big: got ready %x", j);
	     
	     while ($urandom_range(1,4) == 1)
	       begin
		  @(posedge clk) #($urandom_range(1,15));
	       end	     

	     if (q != j)
	       begin
		  $display ("fifo::int_big: expected output %x but got %x", j, q);
		  fail = 1;	  
	       end
	     
	     q_out_strobe = 1;

	     @(posedge clk) #($urandom_range(1,15));
	     q_out_strobe = 0;
	  end // for (j=0; j<256; j++)

	@(posedge clk);
	done=1;
	@(negedge clk);
	done=1'bz;
     end // always @ (posedge en)

   // timeout process
   always @(posedge en)
     begin
	#(256*500);
	if (j < 256)
	  begin
	     $display("fifo::int_big: timeout waiting for %x", j);
	     fail = 1;

	     @(posedge clk);
	     done=1;
	     @(negedge clk);
	     done=1'bz;
	  end
     end // always @ (posedge en)

   initial
     begin
	//$monitor ("fifo::int_big::state - %x/%b(e%bf%b) -- [%b%b%b%b%b] -- %x/%b/%b", d_in, d_in_strobe, empty, full, sut.stage[0].element.used, sut.stage[1].element.used, sut.stage[2].element.used, sut.stage[3].element.used, sut.stage[4].element.used, q, q_out_strobe, q_ready);
     end
   
	     
   
endmodule
