-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Mon May  1 09:38:42 2023
-- Host        : DESKTOP-1K6AF7C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_lowlevel_dac_intfc_0_0/design_1_lowlevel_dac_intfc_0_0_stub.vhdl
-- Design      : design_1_lowlevel_dac_intfc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_lowlevel_dac_intfc_0_0 is
  Port ( 
    resetn : in STD_LOGIC;
    clk125 : in STD_LOGIC;
    data_word : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sdata : out STD_LOGIC;
    lrck : out STD_LOGIC;
    bclk : out STD_LOGIC;
    mclk : out STD_LOGIC;
    latched_data : out STD_LOGIC;
    valid : in STD_LOGIC
  );

end design_1_lowlevel_dac_intfc_0_0;

architecture stub of design_1_lowlevel_dac_intfc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn,clk125,data_word[31:0],sdata,lrck,bclk,mclk,latched_data,valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "lowlevel_dac_intfc,Vivado 2022.1";
begin
end;
