// test fixture for performing tests on fifo elements   -*- verilog -*-
reg [WIDTH-1:0]    d_in;
reg                d_in_strobe = 0;
wire [WIDTH-1:0]   q;
wire 	           q_ready;
reg                q_out_strobe = 0;
wire               in_strobe_chain, out_strobe_chain;
reg                next_used = 0, prev_used = 0;
wire               used;
reg                reset = 0;

fifo_element #(WIDTH) sut (.clk(clk), .d_in(d_in), .d_in_strobe(d_in_strobe),
			   .q(q), .q_ready(q_ready), .in_strobe_chain(in_strobe_chain),
			   .q_out_strobe(q_out_strobe), .out_strobe_chain(out_strobe_chain),
			   .next_used(next_used), .prev_used(prev_used), .used(used), .reset(reset));
