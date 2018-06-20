module regfile (input clk,
		   input [2:0] ra_sel,
		   input [2:0] rb_sel,
		   input [2:0] rw_sel,
		   input [5:0] wd,
		   input  we,
		   output [5:0] ra,
		   output [5:0] rb);
   

   reg [5:0] 			data0;
   reg [5:0] 			data1;
   reg [5:0] 			data2;
   reg [5:0] 			data3;
   reg [5:0] 			data4;
   reg [5:0] 			data5;
   reg [5:0] 			data6;
   reg [5:0] 			data7;


   assign ra = ra_sel[2] ? (ra_sel[1] ? (ra_sel[0] ? data7 : data6)
			              : (ra_sel[0] ? data5 : data4))
                         : (ra_sel[1] ? (ra_sel[0] ? data3 : data2)
			              : (ra_sel[0] ? data1 : data0));
   assign rb = rb_sel[2] ? (rb_sel[1] ? (rb_sel[0] ? data7 : data6)
			              : (rb_sel[0] ? data5 : data4))
                         : (rb_sel[1] ? (rb_sel[0] ? data3 : data2)
			              : (rb_sel[0] ? data1 : data0));

   always @(posedge clk)
     if (we) begin
       case (rw_sel)
    	 3'd0: data0 <= wd;
	 3'd1: data1 <= wd;
	 3'd2: data2 <= wd;
	 3'd3: data3 <= wd;
	 3'd4: data4 <= wd;
	 3'd5: data5 <= wd;
	 3'd6: data6 <= wd;
	 default:
	    data7 <= wd;
       endcase
     end // if (we)
	 
endmodule

	
		   
