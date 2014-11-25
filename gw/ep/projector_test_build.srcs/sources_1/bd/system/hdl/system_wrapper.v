//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
//Date        : Mon Nov 24 22:26:14 2014
//Host        : embyr running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (isl58x_CE,
    isl58x_CLK,
    isl58x_D,
    isl58x_LOWP,
    isl58x_RTZ,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  output isl58x_CE;
  output isl58x_CLK;
  output [14:0]isl58x_D;
  output isl58x_LOWP;
  output isl58x_RTZ;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire isl58x_CE;
  wire isl58x_CLK;
  wire [14:0]isl58x_D;
  wire isl58x_LOWP;
  wire isl58x_RTZ;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

system system_i
       (.isl58x_CE(isl58x_CE),
        .isl58x_CLK(isl58x_CLK),
        .isl58x_D(isl58x_D),
        .isl58x_LOWP(isl58x_LOWP),
        .isl58x_RTZ(isl58x_RTZ),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
