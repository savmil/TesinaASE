--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: contatore_modulo_4_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov  8 22:10:23 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm contatore_modulo_4 -w -dir netgen/synthesis -ofmt vhdl -sim contatore_modulo_4.ngc contatore_modulo_4_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: contatore_modulo_4.ngc
-- Output file	: /home/sav/ASE/contatore_modulo_4/netgen/synthesis/contatore_modulo_4_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: contatore_modulo_4
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

entity contatore_modulo_4 is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    q : inout STD_LOGIC_VECTOR ( 1 downto 0 ); 
    notq : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end contatore_modulo_4;

architecture Structure of contatore_modulo_4 is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal enable_IBUF_3 : STD_LOGIC; 
  signal flip_flop_1_temp_4 : STD_LOGIC; 
  signal flip_flop_1_temp_and0001 : STD_LOGIC; 
  signal flip_flop_2_temp_6 : STD_LOGIC; 
  signal flip_flop_2_temp_and0001 : STD_LOGIC; 
  signal notq_0_OBUF_10 : STD_LOGIC; 
  signal notq_1_OBUF_11 : STD_LOGIC; 
  signal s1 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  s1_0 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      D => flip_flop_1_temp_4,
      Q => s1(0)
    );
  s1_1 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      D => flip_flop_2_temp_6,
      Q => s1(1)
    );
  flip_flop_2_temp : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => enable_IBUF_3,
      D => flip_flop_2_temp_and0001,
      Q => flip_flop_2_temp_6
    );
  flip_flop_1_temp : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => enable_IBUF_3,
      D => flip_flop_1_temp_and0001,
      Q => flip_flop_1_temp_4
    );
  r_c_a_RippleCarryAdder_1_last_adder_adder_half_adder2_Mxor_S_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => s1(1),
      I1 => s1(0),
      O => flip_flop_2_temp_and0001
    );
  enable_IBUF : IBUF
    port map (
      I => enable,
      O => enable_IBUF_3
    );
  q_1_OBUF : OBUF
    port map (
      I => flip_flop_2_temp_6,
      O => q(1)
    );
  q_0_OBUF : OBUF
    port map (
      I => flip_flop_1_temp_4,
      O => q(0)
    );
  notq_1_OBUF : OBUF
    port map (
      I => notq_1_OBUF_11,
      O => notq(1)
    );
  notq_0_OBUF : OBUF
    port map (
      I => notq_0_OBUF_10,
      O => notq(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  flip_flop_2_notq1_INV_0 : INV
    port map (
      I => flip_flop_2_temp_6,
      O => notq_1_OBUF_11
    );
  flip_flop_1_notq1_INV_0 : INV
    port map (
      I => flip_flop_1_temp_4,
      O => notq_0_OBUF_10
    );
  flip_flop_1_temp_and00011_INV_0 : INV
    port map (
      I => s1(0),
      O => flip_flop_1_temp_and0001
    );

end Structure;

