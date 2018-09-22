`timescale 1ns/1ps

module regs (
	     // shared signals
	     clk,
	     // reading isa registers
             rthreadid, rchanid, qa, qb, psel0, psel1, qp0, qp1,
	     // reading control registers
	     qpc, qcsb, qmempage,
	     // writing isa registers
	     wthreadid, wchanid, d8, wea, web, d12, pselw, wep,
	     // writing control registers
	     // pc can be written simultaneously with other updates so needs its own input bus
	     dpc, wepc,
	     // channel status byte and mempage are updated via d8 bus
	     wecsb, wemempage);
   
   // clk - clock signal
   input  clk;

   // read signals (reads occur asynchronously)
   input  [4:0]  rthreadid;
   input [3:0] 	 rchanid;
   output [7:0]  qa, qb;
   input  [1:0]  psel0, psel1;
   output [11:0] qp0, qp1;
   output [11:0] qpc;
   output [7:0]  qcsb;
   output [7:0]  qmempage;

   // write signals (sampled on posedge clk)
   input [4:0] 	 wthreadid;
   input [3:0] 	 wchanid;
   input [7:0] 	 d8;
   input 	 wea, web;
   input [11:0]  d12;
   input [1:0] 	 pselw;
   input 	 wep;
   input [11:0]  dpc;
   input 	 wepc;
   input [7:0] 	 dcsb;
   input 	 wecsb;
   input [7:0] 	 dmempage;
   input 	 wemempage;
   
   reg [7:0] 	 ra [31:0];
   reg [7:0] 	 rb [31:0];
   reg [11:0] 	 rp0 [31:0], rp1 [31:0], rp2 [15:0], rp3 [15:0];
   reg [11:0] 	 rpc [31:0];
   reg [7:0] 	 rcsb [15:0];
   reg [7:0] 	 rmempage [15:0];
   
   
   
   // always-available registers have a 15ns delay for address select on a 74as870
   assign #15 qa = ra [rthreadid];
   assign #15 qb = rb [rthreadid];
   assign #15 qpc = rpc [rthreadid];
   assign #15 qcsb = rcsb [rchanid];
   assign #15 qmempage = rmempage [rchanid];
   
   // address-decoded registers have a 23ns delay for decoding chip select (74S139) and chip select (74AS870)
   assign #23 qp0 = psel0 == 0 ? rp0 [rthreadid] :
		    psel0 == 1 ? rp1 [rthreadid] :
		    psel0 == 2 ? rp2 [rchanid] : rp3 [rchanid];
   assign #23 qp1 = psel1 == 0 ? rp0 [rthreadid] :
		    psel1 == 1 ? rp1 [rthreadid] :
		    psel1 == 2 ? rp2 [rchanid] : rp3 [rchanid];
   
   // pselw has a 20ns setup time due to decoding (74S139) and reg file setup (74AS870)
   wire 	 pselwd;
   assign #20	 pselwd = pselw;
   
   // thread/channel ids have a 5ns setup time, which is smaller than select setup so we don't worry
   // about it - select issues will show up long before id related issues.

   always @(posedge clk)
     begin
	//$display("regs wea=%b,d8=%x,ra=%x", wea, d8, ra);
	//$display("regs wep=%b,d12=%x,rp0=%x", wep, d12, rp0);

	if (wea)
	  ra [wthreadid] <= d8;
	if (web)
	  rb [wthreadid] <= d8;
	if (wep)
	  case (pselw)
	    0: rp0 [wthreadid] <= d12;
	    1: rp1 [wthreadid] <= d12;
	    2: rp2 [wchanid] <= d12;
	    3: rp3 [wchanid] <= d12;
	  endcase
	if (wepc)
	  rpc [wthreadid] <= dpc;
	if (wecsb)
	  rcsb [wchanid] <= d8;
	if (wemempage)
	  rmempage [wchanid] <= d8;
	
	/*
	if (wea|web|wep)
	  $display("R T%x [%x %x %x %x]; W T%x [%x %x %x %x]",
	      rthreadid, ra[rthreadid], rb [rthreadid], rp0[rthreadid], rp1[rthreadid],
	      wthreadid, ra[wthreadid], rb [wthreadid], rp0[wthreadid], rp1[wthreadid]);
	*/
	
     end

   
endmodule
