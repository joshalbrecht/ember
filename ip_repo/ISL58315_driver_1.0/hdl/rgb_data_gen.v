/*==========================================

* File Name : rgb_data_gen.v

* Purpose : To create a VR headset

* Creation Date : 30.11.2014-08:20:29

* Last Modified :

* Created By :  Codexica

===========================================*/
module rgb_data_gen
(
     input  clk_i,
     input  async_rst_i,
     input  ce_i,

     output [4:0]  R_OUT,
     output [4:0]  G_OUT,
     output [4:0]  B_OUT,

     output data_val_o
);


/****************************
* Creating RGB output for 
* 1024 x 1024 Gray and black
* Grid
* ***************************/
localparam  RGB_GRAY  = 128;
localparam  RGB_BLACK = 0;

reg [10:0] pxl_cntr_x = 0;
reg [10:0] pxl_cntr_y = 0;

reg [4:0] r_val_q;
reg [4:0] g_val_q;
reg [4:0] b_val_q;


assign R_OUT = r_val_q;
assign G_OUT = g_val_q;
assign B_OUT = b_val_q;

assign data_val_o = ce_i;

  //pixel mapping logic for 1024 x 1024 Right to left
  //scan
  always @(posedge clk_i or posedge async_rst_i) begin
    if (async_rst_i) begin
      pxl_cntr_y = 0;
      pxl_cntr_x = 0;
    end
    else begin
      if (ce_i) begin
	pxl_cntr_x <= pxl_cntr_x + 1;
        if (&pxl_cntr_x) begin
		pxl_cntr_y <= pxl_cntr_y + 1;
	end
      end//if ce_i
    end//else
  end//always

  always @(posedge clk_i) begin
     if (ce_i) begin
       if (pxl_cntr_y[6]) begin
         r_val_q <= (pxl_cntr_x[6]) ? RGB_GRAY : RGB_BLACK;
         g_val_q <= (pxl_cntr_x[6]) ? RGB_GRAY : RGB_BLACK;
         b_val_q <= (pxl_cntr_x[6]) ? RGB_GRAY : RGB_BLACK;
       end
       else begin
         r_val_q <= (pxl_cntr_x[6]) ? RGB_BLACK : RGB_GRAY;
         g_val_q <= (pxl_cntr_x[6]) ? RGB_BLACK : RGB_GRAY;
         b_val_q <= (pxl_cntr_x[6]) ? RGB_BLACK : RGB_GRAY;
       end
     end
  end 

endmodule  
