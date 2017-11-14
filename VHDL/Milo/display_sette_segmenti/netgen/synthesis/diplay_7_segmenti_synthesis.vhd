--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: diplay_7_segmenti_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 28 14:01:55 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm diplay_7_segmenti -w -dir netgen/synthesis -ofmt vhdl -sim diplay_7_segmenti.ngc diplay_7_segmenti_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: diplay_7_segmenti.ngc
-- Output file	: /home/sav/ASE/display_sette_segmenti/netgen/synthesis/diplay_7_segmenti_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: diplay_7_segmenti
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity diplay_7_segmenti is
  port (
    segment : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    number : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end diplay_7_segmenti;

architecture Structure of diplay_7_segmenti is
  component display_sette_segmenti_b
    port (
      o : out STD_LOGIC; 
      number : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
    );
  end component;
  component display_sette_segmenti_d
    port (
      o : out STD_LOGIC; 
      number : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
    );
  end component;
  component display_sette_segmenti_c
    port (
      o : out STD_LOGIC; 
      number : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
    );
  end component;
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal number_0_IBUF_6 : STD_LOGIC; 
  signal number_1_IBUF_7 : STD_LOGIC; 
  signal number_2_IBUF_8 : STD_LOGIC; 
  signal number_3_IBUF_9 : STD_LOGIC; 
  signal segment_1_OBUF_17 : STD_LOGIC; 
  signal segment_2_OBUF_18 : STD_LOGIC; 
  signal segment_3_OBUF_19 : STD_LOGIC; 
  signal NLW_a_b_o_UNCONNECTED : STD_LOGIC; 
  signal NLW_f_a_b_o_UNCONNECTED : STD_LOGIC; 
  signal NLW_f_b_o_UNCONNECTED : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  b : display_sette_segmenti_b
    port map (
      o => segment_1_OBUF_17,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  d : display_sette_segmenti_d
    port map (
      o => segment_3_OBUF_19,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  c : display_sette_segmenti_c
    port map (
      o => segment_2_OBUF_18,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  a_b : display_sette_segmenti_b
    port map (
      o => NLW_a_b_o_UNCONNECTED,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  f_a_b : display_sette_segmenti_b
    port map (
      o => NLW_f_a_b_o_UNCONNECTED,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  f_b : display_sette_segmenti_b
    port map (
      o => NLW_f_b_o_UNCONNECTED,
      number(3) => number_3_IBUF_9,
      number(2) => number_2_IBUF_8,
      number(1) => number_1_IBUF_7,
      number(0) => number_0_IBUF_6
    );
  number_3_IBUF : IBUF
    port map (
      I => number(3),
      O => number_3_IBUF_9
    );
  number_2_IBUF : IBUF
    port map (
      I => number(2),
      O => number_2_IBUF_8
    );
  number_1_IBUF : IBUF
    port map (
      I => number(1),
      O => number_1_IBUF_7
    );
  number_0_IBUF : IBUF
    port map (
      I => number(0),
      O => number_0_IBUF_6
    );
  segment_6_OBUF : OBUF
    port map (
      I => N0,
      O => segment(6)
    );
  segment_5_OBUF : OBUF
    port map (
      I => N1,
      O => segment(5)
    );
  segment_4_OBUF : OBUF
    port map (
      I => N1,
      O => segment(4)
    );
  segment_3_OBUF : OBUF
    port map (
      I => segment_3_OBUF_19,
      O => segment(3)
    );
  segment_2_OBUF : OBUF
    port map (
      I => segment_2_OBUF_18,
      O => segment(2)
    );
  segment_1_OBUF : OBUF
    port map (
      I => segment_1_OBUF_17,
      O => segment(1)
    );
  segment_0_OBUF : OBUF
    port map (
      I => N1,
      O => segment(0)
    );

end Structure;

