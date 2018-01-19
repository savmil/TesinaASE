--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: rs_latch_clocked_translate.vhd
-- /___/   /\     Timestamp: Sun Jan 07 18:38:43 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm rs_latch_clocked -w -dir netgen/translate -ofmt vhdl -sim rs_latch_clocked.ngd rs_latch_clocked_translate.vhd 
-- Device	: 3s100etq144-5
-- Input file	: rs_latch_clocked.ngd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\rs_latch_clocked\netgen\translate\rs_latch_clocked_translate.vhd
-- # of Entities	: 1
-- Design Name	: rs_latch_clocked
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

entity rs_latch_clocked is
  port (
    notq : out STD_LOGIC; 
    q : out STD_LOGIC; 
    r : in STD_LOGIC := 'X'; 
    s : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X' 
  );
end rs_latch_clocked;

architecture Structure of rs_latch_clocked is
  signal Inst_rs_latch_Inst_nor_gate2_f_or0000 : STD_LOGIC; 
  signal clock_IBUF_2 : STD_LOGIC; 
  signal notq_OBUF_4 : STD_LOGIC; 
  signal q_OBUF_6 : STD_LOGIC; 
  signal r_IBUF_8 : STD_LOGIC; 
  signal s_IBUF_10 : STD_LOGIC; 
begin
  Inst_rs_latch_Inst_nor_gate1_f1 : X_LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      ADR0 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR1 => clock_IBUF_2,
      ADR2 => r_IBUF_8,
      O => q_OBUF_6
    );
  Inst_rs_latch_Inst_nor_gate2_f_or00001 : X_LUT4
    generic map(
      INIT => X"EE4C"
    )
    port map (
      ADR0 => clock_IBUF_2,
      ADR1 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR2 => r_IBUF_8,
      ADR3 => s_IBUF_10,
      O => Inst_rs_latch_Inst_nor_gate2_f_or0000
    );
  r_IBUF : X_BUF
    port map (
      I => r,
      O => r_IBUF_8
    );
  s_IBUF : X_BUF
    port map (
      I => s,
      O => s_IBUF_10
    );
  clock_IBUF : X_BUF
    port map (
      I => clock,
      O => clock_IBUF_2
    );
  Inst_rs_latch_Inst_nor_gate2_f1_INV_0 : X_INV
    port map (
      I => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      O => notq_OBUF_4
    );
  notq_OBUF : X_OBUF
    port map (
      I => notq_OBUF_4,
      O => notq
    );
  q_OBUF : X_OBUF
    port map (
      I => q_OBUF_6,
      O => q
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

