-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Jan 20 18:29:07 2023
-- Host        : coding running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-genesys2/vivado/noelv-digilent-genesys2/noelv-digilent-genesys2.srcs/sources_1/ip/clk_100MHz/clk_100MHz_stub.vhdl
-- Design      : clk_100MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_100MHz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end clk_100MHz;

architecture stub of clk_100MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1_p,clk_in1_n";
begin
end;
