--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: t_latch_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 25 18:50:13 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf t_latch.pcf -rpw 100 -tpw 0 -ar Structure -tm t_latch -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim t_latch.ncd t_latch_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: t_latch.ncd
-- Output file	: /media/sf_ASE/Template Elaborato/progetti/latch_flip-flop/t_latch/netgen/par/t_latch_timesim.vhd
-- # of Entities	: 1
-- Design Name	: t_latch
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity t_latch is
  port (
    notq : out STD_LOGIC; 
    q : out STD_LOGIC; 
    t : in STD_LOGIC := 'X' 
  );
end t_latch;

architecture Structure of t_latch is
  signal Inst_rs_latch_Inst_nor_gate1_f_or0000 : STD_LOGIC; 
  signal t_IBUF_18 : STD_LOGIC; 
  signal Inst_rs_latch_Inst_nor_gate2_f_or0000 : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal t_INBUF : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4 : STD_LOGIC; 
  signal Inst_rs_latch_Inst_nor_gate1_f_or0000_pack_5 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  q_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => q_O,
      O => q
    );
  t_IBUF : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 694 ps
    )
    port map (
      I => t,
      O => t_INBUF
    );
  t_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 694 ps
    )
    port map (
      I => t_INBUF,
      O => t_IBUF_18
    );
  notq_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => notq_O,
      O => notq
    );
  Inst_rs_latch_Inst_nor_gate2_f_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4,
      O => Inst_rs_latch_Inst_nor_gate2_f_or0000
    );
  Inst_rs_latch_Inst_nor_gate2_f_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate1_f_or0000_pack_5,
      O => Inst_rs_latch_Inst_nor_gate1_f_or0000
    );
  Inst_rs_latch_Inst_nor_gate1_f_or00001 : X_LUT4
    generic map(
      INIT => X"7755",
      LOC => "SLICE_X29Y43"
    )
    port map (
      ADR0 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR1 => Inst_rs_latch_Inst_nor_gate1_f_or0000,
      ADR2 => VCC,
      ADR3 => t_IBUF_18,
      O => Inst_rs_latch_Inst_nor_gate1_f_or0000_pack_5
    );
  Inst_rs_latch_Inst_nor_gate2_f_or00001 : X_LUT4
    generic map(
      INIT => X"30FF",
      LOC => "SLICE_X29Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      ADR2 => t_IBUF_18,
      ADR3 => Inst_rs_latch_Inst_nor_gate1_f_or0000,
      O => Inst_rs_latch_Inst_nor_gate2_f_or0000_pack_4
    );
  q_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate1_f_or0000,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD24",
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_rs_latch_Inst_nor_gate2_f_or0000,
      O => notq_O
    );
  NlwBlock_t_latch_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

