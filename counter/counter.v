module counter
  (input  clk,
   input  rst,
   output [3:0] value);
  reg [3:0] cnt;
  wire [3:0] n6_o;
  reg [3:0] n11_q;
  assign value = cnt;
  /* counter.vhdl:14:10  */
  always @*
    cnt = n11_q; // (isignal)
  initial
    cnt = 4'b0000;
  /* counter.vhdl:22:18  */
  assign n6_o = cnt + 4'b0001;
  /* counter.vhdl:21:5  */
  always @(posedge clk or posedge rst)
    if (rst)
      n11_q <= 4'b0000;
    else
      n11_q <= n6_o;
endmodule

