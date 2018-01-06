--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: rs_latch_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jan 05 21:27:21 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm rs_latch -w -dir netgen/synthesis -ofmt vhdl -sim rs_latch.ngc rs_latch_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: rs_latch.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\rs_latch\netgen\synthesis\rs_latch_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: rs_latch
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

entity rs_latch is
  port (
    notq : out STD_LOGIC; 
    q : out STD_LOGIC; 
    r : in STD_LOGIC := 'X'; 
    s : in STD_LOGIC := 'X' 
  );
end rs_latch;

architecture Structure of rs_latch is
  signal Inst_nor_gate2_f_or0000 : STD_LOGIC; 
  signal notq_OBUF_2 : STD_LOGIC; 
  signal q_OBUF_4 : STD_LOGIC; 
  signal r_IBUF_6 : STD_LOGIC; 
  signal s_IBUF_8 : STD_LOGIC; 
begin
  Inst_nor_gate1_f1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => r_IBUF_6,
      I1 => Inst_nor_gate2_f_or0000,
      O => q_OBUF_4
    );
  Inst_nor_gate2_f_or00001 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => s_IBUF_8,
      I1 => r_IBUF_6,
      I2 => Inst_nor_gate2_f_or0000,
      O => Inst_nor_gate2_f_or0000
    );
  r_IBUF : IBUF
    port map (
      I => r,
      O => r_IBUF_6
    );
  s_IBUF : IBUF
    port map (
      I => s,
      O => s_IBUF_8
    );
  notq_OBUF : OBUF
    port map (
      I => notq_OBUF_2,
      O => notq
    );
  q_OBUF : OBUF
    port map (
      I => q_OBUF_4,
      O => q
    );
  Inst_nor_gate2_f1_INV_0 : INV
    port map (
      I => Inst_nor_gate2_f_or0000,
      O => notq_OBUF_2
    );

end Structure;

