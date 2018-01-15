--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: jk_latch_timesim.vhd
-- /___/   /\     Timestamp: Sun Jan 14 18:55:32 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf jk_latch.pcf -rpw 100 -tpw 0 -ar Structure -tm jk_latch -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim jk_latch.ncd jk_latch_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: jk_latch.ncd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\jk_latch_clocked\netgen\par\jk_latch_timesim.vhd
-- # of Entities	: 1
-- Design Name	: jk_latch
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

entity jk_latch is
  port (
    clear : in STD_LOGIC := 'X'; 
    notq : out STD_LOGIC; 
    j : in STD_LOGIC := 'X'; 
    k : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    preset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X' 
  );
end jk_latch;

architecture Structure of jk_latch is
  signal j_IBUF_39 : STD_LOGIC; 
  signal k_IBUF_40 : STD_LOGIC; 
  signal rs_Inst_nor_gate1_f_or0000 : STD_LOGIC; 
  signal preset_IBUF_42 : STD_LOGIC; 
  signal clear_IBUF_43 : STD_LOGIC; 
  signal rs_Inst_nor_gate2_f_or0000 : STD_LOGIC; 
  signal clock_IBUF_45 : STD_LOGIC; 
  signal j_INBUF : STD_LOGIC; 
  signal k_INBUF : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal preset_INBUF : STD_LOGIC; 
  signal clear_INBUF : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal rs_Inst_nor_gate2_f_or0000_F5MUX_115 : STD_LOGIC; 
  signal rs_Inst_nor_gate2_f_or00001_113 : STD_LOGIC; 
  signal rs_Inst_nor_gate2_f_or0000_BXINV_106 : STD_LOGIC; 
  signal rs_Inst_nor_gate2_f_or00002_104 : STD_LOGIC; 
  signal rs_Inst_nor_gate1_f_or0000_F5MUX_140 : STD_LOGIC; 
  signal rs_Inst_nor_gate1_f_or00001_138 : STD_LOGIC; 
  signal rs_Inst_nor_gate1_f_or0000_BXINV_133 : STD_LOGIC; 
  signal rs_Inst_nor_gate1_f_or0000_G : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  j_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 694 ps
    )
    port map (
      I => j,
      O => j_INBUF
    );
  k_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => k,
      O => k_INBUF
    );
  q_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => q_O,
      O => q
    );
  preset_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 694 ps
    )
    port map (
      I => preset,
      O => preset_INBUF
    );
  clear_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => clear,
      O => clear_INBUF
    );
  notq_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
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
  rs_Inst_nor_gate2_f_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y4",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate2_f_or0000_F5MUX_115,
      O => rs_Inst_nor_gate2_f_or0000
    );
  rs_Inst_nor_gate2_f_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y4"
    )
    port map (
      IA => rs_Inst_nor_gate2_f_or00002_104,
      IB => rs_Inst_nor_gate2_f_or00001_113,
      SEL => rs_Inst_nor_gate2_f_or0000_BXINV_106,
      O => rs_Inst_nor_gate2_f_or0000_F5MUX_115
    );
  rs_Inst_nor_gate2_f_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y4",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate2_f_or0000,
      O => rs_Inst_nor_gate2_f_or0000_BXINV_106
    );
  rs_Inst_nor_gate1_f_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y6",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate1_f_or0000_F5MUX_140,
      O => rs_Inst_nor_gate1_f_or0000
    );
  rs_Inst_nor_gate1_f_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y6"
    )
    port map (
      IA => rs_Inst_nor_gate1_f_or0000_G,
      IB => rs_Inst_nor_gate1_f_or00001_138,
      SEL => rs_Inst_nor_gate1_f_or0000_BXINV_133,
      O => rs_Inst_nor_gate1_f_or0000_F5MUX_140
    );
  rs_Inst_nor_gate1_f_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y6",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate2_f_or0000,
      O => rs_Inst_nor_gate1_f_or0000_BXINV_133
    );
  j_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 694 ps
    )
    port map (
      I => j_INBUF,
      O => j_IBUF_39
    );
  k_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 694 ps
    )
    port map (
      I => k_INBUF,
      O => k_IBUF_40
    );
  preset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 694 ps
    )
    port map (
      I => preset_INBUF,
      O => preset_IBUF_42
    );
  clear_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 694 ps
    )
    port map (
      I => clear_INBUF,
      O => clear_IBUF_43
    );
  clock_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 694 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_IBUF_45
    );
  rs_Inst_nor_gate2_f_or00002 : X_LUT4
    generic map(
      INIT => X"FDDD",
      LOC => "SLICE_X31Y4"
    )
    port map (
      ADR0 => rs_Inst_nor_gate1_f_or0000,
      ADR1 => preset_IBUF_42,
      ADR2 => j_IBUF_39,
      ADR3 => clock_IBUF_45,
      O => rs_Inst_nor_gate2_f_or00002_104
    );
  rs_Inst_nor_gate2_f_or00001 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X31Y4"
    )
    port map (
      ADR0 => rs_Inst_nor_gate1_f_or0000,
      ADR1 => preset_IBUF_42,
      ADR2 => VCC,
      ADR3 => VCC,
      O => rs_Inst_nor_gate2_f_or00001_113
    );
  rs_Inst_nor_gate1_f_or00001 : X_LUT4
    generic map(
      INIT => X"DCCC",
      LOC => "SLICE_X31Y6"
    )
    port map (
      ADR0 => rs_Inst_nor_gate1_f_or0000,
      ADR1 => clear_IBUF_43,
      ADR2 => clock_IBUF_45,
      ADR3 => k_IBUF_40,
      O => rs_Inst_nor_gate1_f_or00001_138
    );
  q_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD52",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate1_f_or0000,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD51",
      PATHPULSE => 694 ps
    )
    port map (
      I => rs_Inst_nor_gate2_f_or0000,
      O => notq_O
    );
  rs_Inst_nor_gate1_f_or0000_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X31Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => rs_Inst_nor_gate1_f_or0000_G
    );
  NlwBlock_jk_latch_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

