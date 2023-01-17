// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Jan 17 14:23:57 2023
// Host        : coding running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-genesys2/vivado/noelv-digilent-genesys2/noelv-digilent-genesys2.srcs/sources_1/ip/clk_100MHz/clk_100MHz_stub.v
// Design      : clk_100MHz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_100MHz(clk_out1, resetn, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
