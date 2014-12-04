/*==========================================

* File Name : ISL58315_driver_tb.v

* Purpose : To create a VR headset

* Creation Date : 03.12.2014-19:47:39

* Last Modified :

* Created By :  Codexica

===========================================*/
module ISL58315_driver_tb;

 parameter CLK100_PERIOD = 10;

 reg clk100 = 0;
 reg async_rst = 0;

 initial 
    forever 
       #(CLK100_PERIOD/2) clk100 = !clk100;
 
 
 initial begin
     #10
     async_rst = 1;
     #500
     async_rst = 0;
 end



  //UUT
  ISL58315_driver_v1_0 uut (
	// Users to add ports here
           .clk100_i          (clk100),
           .logic_async_rst_i (async_rst),

           .isl58x_D          (),
           .isl58x_CLK        (),
           .isl58x_RTZ        (),
           .isl58x_LOWP       (),
           .isl58x_CE         (),
	// User ports ends
	// Do not modify the ports beyond this line


	// Ports of Axi Slave Bus Interface S00_AXI
	   .s00_axi_aclk     (clk100),
	   .s00_axi_aresetn  (async_rst),
	   .s00_axi_awaddr   (),
	   .s00_axi_awprot   (),
	   .s00_axi_awvalid  (),
	   .s00_axi_awready  (),
	   .s00_axi_wdata    (),
	   .s00_axi_wstrb    (),
	   .s00_axi_wvalid   (),
	   .s00_axi_wready   (),
	   .s00_axi_bresp    (),
	   .s00_axi_bvalid   (),
	   .s00_axi_bready   (),
	   .s00_axi_araddr   (),
	   .s00_axi_arprot   (),
	   .s00_axi_arvalid  (),
	   .s00_axi_arready  (),
	   .s00_axi_rdata    (),
	   .s00_axi_rresp    (),
	   .s00_axi_rvalid   (),
	   .s00_axi_rready   ()
	);


endmodule
