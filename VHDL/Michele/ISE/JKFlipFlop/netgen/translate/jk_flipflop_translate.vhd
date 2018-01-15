--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: jk_flipflop_translate.vhd
-- /___/   /\     Timestamp: Sat Jan 13 21:24:05 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm jk_flipflop -w -dir netgen/translate -ofmt vhdl -sim jk_flipflop.ngd jk_flipflop_translate.vhd 
-- Device	: 3s100etq144-5
-- Input file	: jk_flipflop.ngd
-- Output file	: C:\Users\Michele\Documents\uni\VHDL\ISE\JKFlipFlop\netgen\translate\jk_flipflop_translate.vhd
-- # of Entities	: 1
-- Design Name	: jk_flipflop
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
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

entity jk_flipflop is
  port (
    reset : in STD_LOGIC := 'X'; 
    notq : out STD_LOGIC; 
    j : in STD_LOGIC := 'X'; 
    k : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end jk_flipflop;

architecture Structure of jk_flipflop is
  signal clock_BUFGP : STD_LOGIC; 
  signal j_IBUF_6 : STD_LOGIC; 
  signal k_IBUF_8 : STD_LOGIC; 
  signal notq_OBUF_10 : STD_LOGIC; 
  signal reset_IBUF_13 : STD_LOGIC; 
  signal stato_14 : STD_LOGIC; 
  signal stato_mux0000 : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  stato : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => reset_IBUF_13,
      I => stato_mux0000,
      O => stato_14,
      CE => VCC,
      SET => GND
    );
  Mmux_stato_mux000011 : X_LUT3
    generic map(
      INIT => X"5C"
    )
    port map (
      ADR0 => k_IBUF_8,
      ADR1 => j_IBUF_6,
      ADR2 => stato_14,
      O => stato_mux0000
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF_13
    );
  j_IBUF : X_BUF
    port map (
      I => j,
      O => j_IBUF_6
    );
  k_IBUF : X_BUF
    port map (
      I => k,
      O => k_IBUF_8
    );
  notq1_INV_0 : X_INV
    port map (
      I => stato_14,
      O => notq_OBUF_10
    );
  clock_BUFGP_BUFG : X_CKBUF
    port map (
      I => clock_BUFGP_IBUFG_2,
      O => clock_BUFGP
    );
  clock_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clock,
      O => clock_BUFGP_IBUFG_2
    );
  notq_OBUF : X_OBUF
    port map (
      I => notq_OBUF_10,
      O => notq
    );
  q_OBUF : X_OBUF
    port map (
      I => stato_14,
      O => q
    );
  NlwBlock_jk_flipflop_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_jk_flipflop_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

