--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: d_latch_clocked_map.vhd
-- /___/   /\     Timestamp: Mon Jan 08 12:47:25 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf d_latch_clocked.pcf -rpw 100 -tpw 0 -ar Structure -tm d_latch_clocked -w -dir netgen/map -ofmt vhdl -sim d_latch_clocked_map.ncd d_latch_clocked_map.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: d_latch_clocked_map.ncd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\d_latch\netgen\map\d_latch_clocked_map.vhd
-- # of Entities	: 1
-- Design Name	: d_latch_clocked
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

entity d_latch_clocked is
  port (
    notq : out STD_LOGIC; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end d_latch_clocked;

architecture Structure of d_latch_clocked is
  signal q_OBUF_16 : STD_LOGIC; 
  signal clock_IBUF_17 : STD_LOGIC; 
  signal d_IBUF_18 : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal d_INBUF : STD_LOGIC; 
  signal q_OBUF_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  q_OBUF : X_OBUF
    port map (
      I => q_O,
      O => q
    );
  notq_OBUF : X_OBUF
    port map (
      I => notq_O,
      O => notq
    );
  clock_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  d_IBUF : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => d,
      O => d_INBUF
    );
  q_OBUF_XUSED : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => q_OBUF_pack_1,
      O => q_OBUF_16
    );
  clock_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_IBUF_17
    );
  d_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => d_INBUF,
      O => d_IBUF_18
    );
  Inst_rs_latch_clocked_Inst_rs_latch_Inst_nor_gate1_f1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => clock_IBUF_17,
      ADR1 => q_OBUF_16,
      ADR2 => d_IBUF_18,
      ADR3 => VCC,
      O => q_OBUF_pack_1
    );
  q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => q_OBUF_16,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_INV
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => q_OBUF_16,
      O => notq_O
    );
  NlwBlock_d_latch_clocked_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

