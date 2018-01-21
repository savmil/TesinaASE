--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: flipflop_d_edge_synthesis.vhd
-- /___/   /\     Timestamp: Tue Jan 09 16:31:14 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm flipflop_d_edge -w -dir netgen/synthesis -ofmt vhdl -sim flipflop_d_edge.ngc flipflop_d_edge_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: flipflop_d_edge.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\flipflop_d_edge\netgen\synthesis\flipflop_d_edge_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity flipflop_d_edge is
  port (
    notq : out STD_LOGIC; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end flipflop_d_edge;

architecture Structure of flipflop_d_edge is
  signal G2_or0000 : STD_LOGIC; 
  signal Inst_nor_gate_G3_f_or0000 : STD_LOGIC; 
  signal Inst_nor_gate_G6_f_or0000 : STD_LOGIC; 
  signal clock_IBUF_4 : STD_LOGIC; 
  signal d_IBUF_6 : STD_LOGIC; 
  signal notq_OBUF_8 : STD_LOGIC; 
  signal q_OBUF_10 : STD_LOGIC; 
begin
  Inst_nor_gate_G5_f1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_nor_gate_G6_f_or0000,
      I1 => G2_or0000,
      O => notq_OBUF_8
    );
  Inst_nor_gate_G6_f_or00001 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => G2_or0000,
      I1 => Inst_nor_gate_G6_f_or0000,
      I2 => Inst_nor_gate_G3_f_or0000,
      O => Inst_nor_gate_G6_f_or0000
    );
  Inst_nor_gate_G3_f_or00001 : LUT4
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => Inst_nor_gate_G3_f_or0000,
      I1 => d_IBUF_6,
      I2 => G2_or0000,
      I3 => clock_IBUF_4,
      O => Inst_nor_gate_G3_f_or0000
    );
  G2_or00001 : LUT4
    generic map(
      INIT => X"DDFD"
    )
    port map (
      I0 => Inst_nor_gate_G3_f_or0000,
      I1 => clock_IBUF_4,
      I2 => G2_or0000,
      I3 => d_IBUF_6,
      O => G2_or0000
    );
  d_IBUF : IBUF
    port map (
      I => d,
      O => d_IBUF_6
    );
  clock_IBUF : IBUF
    port map (
      I => clock,
      O => clock_IBUF_4
    );
  notq_OBUF : OBUF
    port map (
      I => notq_OBUF_8,
      O => notq
    );
  q_OBUF : OBUF
    port map (
      I => q_OBUF_10,
      O => q
    );
  Inst_nor_gate_G6_f1_INV_0 : INV
    port map (
      I => Inst_nor_gate_G6_f_or0000,
      O => q_OBUF_10
    );

end Structure;
