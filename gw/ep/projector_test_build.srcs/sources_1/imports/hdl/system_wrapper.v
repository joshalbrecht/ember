//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
//Date        : Thu Nov 27 13:03:06 2014
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
    spi_flash_io0_io,
    spi_flash_io1_io,
    spi_flash_ss_io,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  output isl58x_CE;
  output isl58x_CLK;
  output [14:0]isl58x_D;
  output isl58x_LOWP;
  output isl58x_RTZ;
  input reset;
  inout spi_flash_io0_io;
  inout spi_flash_io1_io;
  inout [0:0]spi_flash_ss_io;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire isl58x_CE;
  wire isl58x_CLK;
  wire [14:0]isl58x_D;
  wire isl58x_LOWP;
  wire isl58x_RTZ;
  wire reset;
  wire spi_flash_io0_i;
  wire spi_flash_io0_io;
  wire spi_flash_io0_o;
  wire spi_flash_io0_t;
  wire spi_flash_io1_i;
  wire spi_flash_io1_io;
  wire spi_flash_io1_o;
  wire spi_flash_io1_t;
  wire [0:0]spi_flash_ss_i_0;
  wire [0:0]spi_flash_ss_io_0;
  wire [0:0]spi_flash_ss_o_0;
  wire spi_flash_ss_t;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

IOBUF spi_flash_io0_iobuf
       (.I(spi_flash_io0_o),
        .IO(spi_flash_io0_io),
        .O(spi_flash_io0_i),
        .T(spi_flash_io0_t));
IOBUF spi_flash_io1_iobuf
       (.I(spi_flash_io1_o),
        .IO(spi_flash_io1_io),
        .O(spi_flash_io1_i),
        .T(spi_flash_io1_t));
IOBUF spi_flash_ss_iobuf_0
       (.I(spi_flash_ss_o_0),
        .IO(spi_flash_ss_io[0]),
        .O(spi_flash_ss_i_0),
        .T(spi_flash_ss_t));
system system_i
       (.isl58x_CE(isl58x_CE),
        .isl58x_CLK(isl58x_CLK),
        .isl58x_D(isl58x_D),
        .isl58x_LOWP(isl58x_LOWP),
        .isl58x_RTZ(isl58x_RTZ),
        .reset(reset),
        .spi_flash_io0_i(spi_flash_io0_i),
        .spi_flash_io0_o(spi_flash_io0_o),
        .spi_flash_io0_t(spi_flash_io0_t),
        .spi_flash_io1_i(spi_flash_io1_i),
        .spi_flash_io1_o(spi_flash_io1_o),
        .spi_flash_io1_t(spi_flash_io1_t),
        .spi_flash_ss_i(spi_flash_ss_i_0),
        .spi_flash_ss_o(spi_flash_ss_o_0),
        .spi_flash_ss_t(spi_flash_ss_t),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
