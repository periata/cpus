reg [14:0] a;
reg [7:0] d;
wire [7:0] q;
reg rd, wr;

ram sut (.clk(clk), .a(a), .d(d), .q(q), .rd(rd), .wr(wr));
