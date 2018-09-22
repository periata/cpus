// test fixture for a full fifo  -*- verilog -*-

reg [WIDTH-1:0] d_in;
reg d_in_strobe = 0, q_out_strobe = 0;
wire [WIDTH-1:0] q;
wire q_ready, full, empty;
reg reset = 0;

fifo #(WIDTH,DEPTH) sut (.clk(clk), .d_in(d_in), .d_in_strobe(d_in_strobe),
			 .q(q), .q_ready(q_ready), .q_out_strobe (q_out_strobe),
			 .full(full), .empty(empty), .reset (reset));


