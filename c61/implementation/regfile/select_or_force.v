module select_or_force (input [2:0] d, input s, output [2:0] out);

parameter force_to_val = 3'd0;
parameter force_when_s = 1'd0;

assign out = (s == force_when_s) ? force_to_val : d;

endmodule