/*==========================================

* File Name : ISL58315_IPD_intfc.v

* Purpose : To create a VR headset

* Creation Date : 24.11.2014-21:15:40

* Last Modified :

* Created By :  Codexica

===========================================*/
module ISL58315_IPD_intfc
(
   input clk_i,       //100 Mhz clk in
   input async_rst_i,

   output [14:00] isl58x_D,
   output         isl58x_CLK,
   output         isl58x_RTZ,
   output         isl58x_LOWP,
   output         isl58x_CE,

   input  [1:0]   isl58x_DATA_MODE


);


assign isl58x_CLK  = clk_i;
assign isl58x_D    = 15'h1C3C;
assign isl58x_RTZ  = 1'b0;
assign isl58x_LOWP = 1'b0;
assign isl58x_CE   = 1'b0;


endmodule
