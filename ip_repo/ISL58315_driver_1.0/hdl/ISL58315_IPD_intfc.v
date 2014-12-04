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

   input  [4:0]   R_IN,
   input  [4:0]   G_IN,
   input  [4:0]   B_IN,
   input          RGB_VAL,

   input  [1:0]   isl58x_DATA_MODE


);

/********************
* Wires and Registers
* *******************/
reg  [14:00]  D_q;
reg           CLK_q;
reg           RTZ_q;
reg           LOWP_q;
reg           CE_q;

/********************
* Assign statments
* *******************/
assign isl58x_D = D_q; 

/*********************
* Logic 
* ********************/

  always @(posedge clk_i or negedge clk_i) begin
    if (RGB_VAL) begin
      D_q <= {R_IN,G_IN,B_IN};
    end
  end

endmodule
