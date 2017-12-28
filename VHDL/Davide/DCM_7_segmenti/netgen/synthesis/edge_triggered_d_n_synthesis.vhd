--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: edge_triggered_d_n_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 13 00:23:21 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm edge_triggered_d_n -w -dir netgen/synthesis -ofmt vhdl -sim edge_triggered_d_n.ngc edge_triggered_d_n_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: edge_triggered_d_n.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\synthesis\edge_triggered_d_n_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: edge_triggered_d_n
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity edge_triggered_d_n is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    d : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end edge_triggered_d_n;

architecture Structure of edge_triggered_d_n is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal d_0_IBUF_10 : STD_LOGIC; 
  signal d_1_IBUF_11 : STD_LOGIC; 
  signal d_2_IBUF_12 : STD_LOGIC; 
  signal d_3_IBUF_13 : STD_LOGIC; 
  signal d_4_IBUF_14 : STD_LOGIC; 
  signal d_5_IBUF_15 : STD_LOGIC; 
  signal d_6_IBUF_16 : STD_LOGIC; 
  signal d_7_IBUF_17 : STD_LOGIC; 
  signal en_IBUF_19 : STD_LOGIC; 
  signal q_0_28 : STD_LOGIC; 
  signal q_1_29 : STD_LOGIC; 
  signal q_2_30 : STD_LOGIC; 
  signal q_3_31 : STD_LOGIC; 
  signal q_4_32 : STD_LOGIC; 
  signal q_5_33 : STD_LOGIC; 
  signal q_6_34 : STD_LOGIC; 
  signal q_7_35 : STD_LOGIC; 
  signal reset_n_IBUF_37 : STD_LOGIC; 
  signal reset_n_inv : STD_LOGIC; 
begin
  q_0 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_0_IBUF_10,
      Q => q_0_28
    );
  q_1 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_1_IBUF_11,
      Q => q_1_29
    );
  q_2 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_2_IBUF_12,
      Q => q_2_30
    );
  q_3 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_3_IBUF_13,
      Q => q_3_31
    );
  q_4 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_4_IBUF_14,
      Q => q_4_32
    );
  q_5 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_5_IBUF_15,
      Q => q_5_33
    );
  q_6 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_6_IBUF_16,
      Q => q_6_34
    );
  q_7 : FDCE
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_19,
      CLR => reset_n_inv,
      D => d_7_IBUF_17,
      Q => q_7_35
    );
  reset_n_IBUF : IBUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_37
    );
  en_IBUF : IBUF
    port map (
      I => en,
      O => en_IBUF_19
    );
  d_7_IBUF : IBUF
    port map (
      I => d(7),
      O => d_7_IBUF_17
    );
  d_6_IBUF : IBUF
    port map (
      I => d(6),
      O => d_6_IBUF_16
    );
  d_5_IBUF : IBUF
    port map (
      I => d(5),
      O => d_5_IBUF_15
    );
  d_4_IBUF : IBUF
    port map (
      I => d(4),
      O => d_4_IBUF_14
    );
  d_3_IBUF : IBUF
    port map (
      I => d(3),
      O => d_3_IBUF_13
    );
  d_2_IBUF : IBUF
    port map (
      I => d(2),
      O => d_2_IBUF_12
    );
  d_1_IBUF : IBUF
    port map (
      I => d(1),
      O => d_1_IBUF_11
    );
  d_0_IBUF : IBUF
    port map (
      I => d(0),
      O => d_0_IBUF_10
    );
  q_7_OBUF : OBUF
    port map (
      I => q_7_35,
      O => q(7)
    );
  q_6_OBUF : OBUF
    port map (
      I => q_6_34,
      O => q(6)
    );
  q_5_OBUF : OBUF
    port map (
      I => q_5_33,
      O => q(5)
    );
  q_4_OBUF : OBUF
    port map (
      I => q_4_32,
      O => q(4)
    );
  q_3_OBUF : OBUF
    port map (
      I => q_3_31,
      O => q(3)
    );
  q_2_OBUF : OBUF
    port map (
      I => q_2_30,
      O => q(2)
    );
  q_1_OBUF : OBUF
    port map (
      I => q_1_29,
      O => q(1)
    );
  q_0_OBUF : OBUF
    port map (
      I => q_0_28,
      O => q(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  reset_n_inv1_INV_0 : INV
    port map (
      I => reset_n_IBUF_37,
      O => reset_n_inv
    );

end Structure;

