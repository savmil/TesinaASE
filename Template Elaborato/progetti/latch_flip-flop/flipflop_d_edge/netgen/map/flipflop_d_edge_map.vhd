--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: flipflop_d_edge_map.vhd
-- /___/   /\     Timestamp: Tue Jan 09 16:42:30 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf flipflop_d_edge.pcf -rpw 100 -tpw 0 -ar Structure -tm flipflop_d_edge -w -dir netgen/map -ofmt vhdl -sim flipflop_d_edge_map.ncd flipflop_d_edge_map.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: flipflop_d_edge_map.ncd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\flipflop_d_edge\netgen\map\flipflop_d_edge_map.vhd
-- # of Entities	: 1
-- Design Name	: flipflop_d_edge
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

entity flipflop_d_edge is
  port (
    notq : out STD_LOGIC; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end flipflop_d_edge;

architecture Structure of flipflop_d_edge is
  signal Inst_nor_gate_G6_f_or0000 : STD_LOGIC; 
  signal clock_IBUF_31 : STD_LOGIC; 
  signal d_IBUF_32 : STD_LOGIC; 
  signal G2_or0000 : STD_LOGIC; 
  signal Inst_nor_gate_G3_f_or0000 : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal d_INBUF : STD_LOGIC; 
  signal notq_OBUF_84 : STD_LOGIC; 
  signal Inst_nor_gate_G6_f_or0000_pack_3 : STD_LOGIC; 
  signal Inst_nor_gate_G3_f_or0000_pack_5 : STD_LOGIC; 
  signal G2_or0000_pack_6 : STD_LOGIC; 
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
  notq_OBUF_YUSED : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_nor_gate_G6_f_or0000_pack_3,
      O => Inst_nor_gate_G6_f_or0000
    );
  Inst_nor_gate_G3_f_or0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_nor_gate_G3_f_or0000_pack_5,
      O => Inst_nor_gate_G3_f_or0000
    );
  Inst_nor_gate_G3_f_or0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => G2_or0000_pack_6,
      O => G2_or0000
    );
  clock_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_IBUF_31
    );
  d_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => d_INBUF,
      O => d_IBUF_32
    );
  Inst_nor_gate_G6_f_or00001 : X_LUT4
    generic map(
      INIT => X"8F8F"
    )
    port map (
      ADR0 => G2_or0000,
      ADR1 => Inst_nor_gate_G6_f_or0000,
      ADR2 => Inst_nor_gate_G3_f_or0000,
      ADR3 => VCC,
      O => Inst_nor_gate_G6_f_or0000_pack_3
    );
  Inst_nor_gate_G5_f1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => Inst_nor_gate_G6_f_or0000,
      ADR1 => G2_or0000,
      ADR2 => VCC,
      ADR3 => VCC,
      O => notq_OBUF_84
    );
  G2_or00001 : X_LUT4
    generic map(
      INIT => X"DDFD"
    )
    port map (
      ADR0 => Inst_nor_gate_G3_f_or0000,
      ADR1 => clock_IBUF_31,
      ADR2 => G2_or0000,
      ADR3 => d_IBUF_32,
      O => G2_or0000_pack_6
    );
  Inst_nor_gate_G3_f_or00001 : X_LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      ADR0 => Inst_nor_gate_G3_f_or0000,
      ADR1 => d_IBUF_32,
      ADR2 => G2_or0000,
      ADR3 => clock_IBUF_31,
      O => Inst_nor_gate_G3_f_or0000_pack_5
    );
  q_OUTPUT_OFF_OMUX : X_INV
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => Inst_nor_gate_G6_f_or0000,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 694 ps
    )
    port map (
      I => notq_OBUF_84,
      O => notq_O
    );
  NlwBlock_flipflop_d_edge_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

