/*==========================================

* File Name : projector_test_build_top.v

* Purpose : To create a VR headset

* Creation Date : 25.11.2014-06:28:32

* Last Modified :

* Created By :  Codexica

===========================================*/
module projector_test_build_top
(

  input sys_diff_clock_clk_n,
  input sys_diff_clock_clk_p,
  input reset               

  //output isl58x_CE          ,
  //output isl58x_CLK         ,
  //output [14:0]isl58x_D     ,
  //output isl58x_LOWP        ,
  //output isl58x_RTZ         
);





system system_i
       (.isl58x_CE           (isl58x_CE),
        .isl58x_CLK          (isl58x_CLK),
        .isl58x_D            (isl58x_D),
        .isl58x_LOWP         (isl58x_LOWP),
        .isl58x_RTZ          (isl58x_RTZ),
        .reset               (reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule

