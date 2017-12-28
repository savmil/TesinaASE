--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counter_mod_2n_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 13 13:48:11 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm counter_mod_2n -w -dir netgen/synthesis -ofmt vhdl -sim counter_mod_2n.ngc counter_mod_2n_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: counter_mod_2n.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\synthesis\counter_mod_2n_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: counter_mod_2n
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

entity counter_mod_2n is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end counter_mod_2n;

architecture Structure of counter_mod_2n is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal en_IBUF_7 : STD_LOGIC; 
  signal reset_n_IBUF_11 : STD_LOGIC; 
  signal reset_n_inv : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal count_add0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_7,
      CLR => reset_n_inv,
      D => count_add0000(0),
      Q => count(0)
    );
  count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => en_IBUF_7,
      CLR => reset_n_inv,
      D => count_add0000(1),
      Q => count(1)
    );
  Madd_count_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => count(1),
      I1 => count(0),
      O => count_add0000(1)
    );
  reset_n_IBUF : IBUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_11
    );
  en_IBUF : IBUF
    port map (
      I => en,
      O => en_IBUF_7
    );
  q_1_OBUF : OBUF
    port map (
      I => count(1),
      O => q(1)
    );
  q_0_OBUF : OBUF
    port map (
      I => count(0),
      O => q(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  reset_n_inv1_INV_0 : INV
    port map (
      I => reset_n_IBUF_11,
      O => reset_n_inv
    );
  Madd_count_add0000_xor_0_11_INV_0 : INV
    port map (
      I => count(0),
      O => count_add0000(0)
    );

end Structure;

