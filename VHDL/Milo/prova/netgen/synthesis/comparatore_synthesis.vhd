--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: comparatore_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 11 13:50:29 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm comparatore -w -dir netgen/synthesis -ofmt vhdl -sim comparatore.ngc comparatore_synthesis.vhd 
-- Device	: xc3s50-5-pq208
-- Input file	: comparatore.ngc
-- Output file	: /home/sav/ASE/prova/netgen/synthesis/comparatore_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: comparatore
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity comparatore is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC 
  );
end comparatore;

architecture Structure of comparatore is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal c_OBUF_5 : STD_LOGIC; 
begin
  c1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      O => c_OBUF_5
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_1
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  c_OBUF : OBUF
    port map (
      I => c_OBUF_5,
      O => c
    );

end Structure;

