#*==========================================

# File Name : projector_test_build_top.xdc

# Purpose : To create a VR headset

# Creation Date : 25.11.2014-06:41:30

# Last Modified :

# Created By :  Codexica

#==========================================*/


set_property PACKAGE_PIN AD11 [get_ports sys_diff_clock_clk_n]
set_property IOSTANDARD LVDS [get_ports sys_diff_clock_clk_n]
set_property PACKAGE_PIN AD12 [get_ports sys_diff_clock_clk_p]
set_property IOSTANDARD LVDS [get_ports sys_diff_clock_clk_p]



set_property PACKAGE_PIN AB7 [get_ports reset]
set_property IOSTANDARD LVCMOS15 [get_ports reset]
