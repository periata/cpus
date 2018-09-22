// definitions for signals used during testing register file module -*- verilog -*-

// read signals (reads occur asynchronously)
reg [4:0]        rthreadid = 0;
reg [3:0] 	 rchanid   = 0;
wire [7:0] 	 qa, qb;
reg [1:0] 	 psel0     = 0, psel1   = 0;
wire [11:0] 	 qp0, qp1;
wire [11:0] 	 qpc;
wire [7:0]       qcsb, qmempage;

// write signals (sampled on posedge clk)
reg [4:0] 	 wthreadid = 0;
reg [3:0] 	 wchanid   = 0;
reg [7:0] 	 d8        = 0;
reg 		 wea       = 0, web     = 0;
reg [11:0] 	 d12       = 0;
reg [1:0] 	 pselw     = 0;
reg 		 wep       = 0;
reg [11:0] 	 dpc       = 0; 
reg 		 wepc      = 0;
reg              wecsb     = 0;
reg              wemempage = 0;

regs sut (clk, rthreadid, rchanid, qa, qb, psel0, psel1, qp0, qp1, qpc, qcsb, qmempage,
	  wthreadid, wchanid, d8, wea, web, d12, pselw, wep, dpc, wepc, 
	  wecsb, wemempage);

   
