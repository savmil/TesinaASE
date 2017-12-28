--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counter_mod_2n_translate.vhd
-- /___/   /\     Timestamp: Mon Nov 13 00:28:22 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm counter_mod_2n -w -dir netgen/translate -ofmt vhdl -sim counter_mod_2n.ngd counter_mod_2n_translate.vhd 
-- Device	: 3s100evq100-5
-- Input file	: counter_mod_2n.ngd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\translate\counter_mod_2n_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity counter_mod_2n is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    counter_hit : out STD_LOGIC; 
    en : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end counter_mod_2n;

architecture Structure of counter_mod_2n is
  signal clk_BUFGP : STD_LOGIC; 
  signal counter_hit_OBUF_10 : STD_LOGIC; 
  signal en_IBUF_12 : STD_LOGIC; 
  signal reset_n_IBUF_16 : STD_LOGIC; 
  signal reset_n_inv : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal count_add0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => en_IBUF_12,
      RST => reset_n_inv,
      I => count_add0000(0),
      O => count(0),
      SET => GND
    );
  count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => en_IBUF_12,
      RST => reset_n_inv,
      I => count_add0000(1),
      O => count(1),
      SET => GND
    );
  counter_hit_cmp_eq00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => count(0),
      ADR1 => count(1),
      O => counter_hit_OBUF_10
    );
  Madd_count_add0000_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => count(1),
      ADR1 => count(0),
      O => count_add0000(1)
    );
  reset_n_IBUF : X_BUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_16
    );
  en_IBUF : X_BUF
    port map (
      I => en,
      O => en_IBUF_12
    );
  reset_n_inv1_INV_0 : X_INV
    port map (
      I => reset_n_IBUF_16,
      O => reset_n_inv
    );
  Madd_count_add0000_xor_0_11_INV_0 : X_INV
    port map (
      I => count(0),
      O => count_add0000(0)
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  counter_hit_OBUF : X_OBUF
    port map (
      I => counter_hit_OBUF_10,
      O => counter_hit
    );
  q_0_OBUF : X_OBUF
    port map (
      I => count(0),
      O => q(0)
    );
  q_1_OBUF : X_OBUF
    port map (
      I => count(1),
      O => q(1)
    );
  NlwBlock_counter_mod_2n_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

