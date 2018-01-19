--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: rs_latch_clocked_timesim.vhd
-- /___/   /\     Timestamp: Sun Jan 07 18:39:46 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf rs_latch_clocked.pcf -rpw 100 -tpw 0 -ar Structure -tm rs_latch_clocked -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim rs_latch_clocked.ncd rs_latch_clocked_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: rs_latch_clocked.ncd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\rs_latch_clocked\netgen\par\rs_latch_clocked_timesim.vhd
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
  signal r_IBUF_25 : STD_LOGIC; 
  signal s_IBUF_26 : STD_LOGIC; 
  signal Inst_rs_latch_Inst_nor_gate2_f_or0000 : STD_LOGIC; 
  signal clock_IBUF_28 : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal r_INBUF : STD_LOGIC; 
  signal s_INBUF : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal q_OBUF_84 : STD_LOGIC; 
  signal Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  q_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => q_O,
      O => q
    );
  r_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 694 ps
    )
    port map (
      I => r,
      O => r_INBUF
    );
  s_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => s,
      O => s_INBUF
    );
  notq_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => notq_O,
      O => notq
    );
  clock_IBUF : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 694 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  q_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y4",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4,
      O => Inst_rs_latch_Inst_nor_gate2_f_or0000
    );
  r_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 694 ps
    )
    port map (
      I => r_INBUF,
      O => r_IBUF_25
    );
  s_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => s_INBUF,
      O => s_IBUF_26
    );
  clock_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 694 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_IBUF_28
    );
  Inst_rs_latch_Inst_nor_gate2_f_or00001 : X_LUT4
    generic map(
      INIT => X"CEAA",
      LOC => "SLICE_X31Y4"
    )
    port map (
      ADR0 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR1 => s_IBUF_26,
      ADR2 => r_IBUF_25,
      ADR3 => clock_IBUF_28,
      O => Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4
    );
  Inst_rs_latch_Inst_nor_gate1_f1 : X_LUT4
    generic map(
      INIT => X"50F0",
      LOC => "SLICE_X31Y4"
    )
    port map (
      ADR0 => r_IBUF_25,
      ADR1 => VCC,
      ADR2 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR3 => clock_IBUF_28,
      O => q_OBUF_84
    );
  q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 694 ps
    )
    port map (
      I => q_OBUF_84,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD53",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      O => notq_O
    );
  NlwBlock_rs_latch_clocked_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

