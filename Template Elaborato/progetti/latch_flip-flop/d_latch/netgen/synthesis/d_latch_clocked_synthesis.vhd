--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: d_latch_clocked_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jan 08 12:46:59 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm d_latch_clocked -w -dir netgen/synthesis -ofmt vhdl -sim d_latch_clocked.ngc d_latch_clocked_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: d_latch_clocked.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\latch_flip-flop\d_latch\netgen\synthesis\d_latch_clocked_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity d_latch_clocked is
  port (
    notq : out STD_LOGIC; 
    d : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end d_latch_clocked;

architecture Structure of d_latch_clocked is
  signal clock_IBUF_1 : STD_LOGIC; 
  signal d_IBUF_3 : STD_LOGIC; 
  signal notq_OBUF_5 : STD_LOGIC; 
  signal q_OBUF_7 : STD_LOGIC; 
begin
  Inst_rs_latch_clocked_Inst_rs_latch_Inst_nor_gate1_f1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => clock_IBUF_1,
      I1 => q_OBUF_7,
      I2 => d_IBUF_3,
      O => q_OBUF_7
    );
  d_IBUF : IBUF
    port map (
      I => d,
      O => d_IBUF_3
    );
  clock_IBUF : IBUF
    port map (
      I => clock,
      O => clock_IBUF_1
    );
  notq_OBUF : OBUF
    port map (
      I => notq_OBUF_5,
      O => notq
    );
  q_OBUF : OBUF
    port map (
      I => q_OBUF_7,
      O => q
    );
  Inst_rs_latch_clocked_Inst_rs_latch_Inst_nor_gate2_f1_INV_0 : INV
    port map (
      I => q_OBUF_7,
      O => notq_OBUF_5
    );

end Structure;

