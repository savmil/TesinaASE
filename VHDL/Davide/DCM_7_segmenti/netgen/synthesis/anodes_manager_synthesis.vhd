--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: anodes_manager_synthesis.vhd
-- /___/   /\     Timestamp: Tue Nov 14 00:37:42 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm anodes_manager -w -dir netgen/synthesis -ofmt vhdl -sim anodes_manager.ngc anodes_manager_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: anodes_manager.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\synthesis\anodes_manager_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: anodes_manager
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

entity anodes_manager is
  port (
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    counter : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    enable_digit : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end anodes_manager;

architecture Structure of anodes_manager is
  signal anodes_0_OBUF_4 : STD_LOGIC; 
  signal anodes_1_OBUF_5 : STD_LOGIC; 
  signal anodes_2_OBUF_6 : STD_LOGIC; 
  signal anodes_3_OBUF_7 : STD_LOGIC; 
  signal counter_0_IBUF_10 : STD_LOGIC; 
  signal counter_1_IBUF_11 : STD_LOGIC; 
  signal enable : STD_LOGIC; 
  signal enable_digit_0_IBUF_17 : STD_LOGIC; 
  signal enable_digit_1_IBUF_18 : STD_LOGIC; 
  signal enable_digit_2_IBUF_19 : STD_LOGIC; 
  signal enable_digit_3_IBUF_20 : STD_LOGIC; 
  signal inst_mux4_1_Mmux_X_3_21 : STD_LOGIC; 
  signal inst_mux4_1_Mmux_X_4_22 : STD_LOGIC; 
begin
  inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_mux4_1_Mmux_X_4_22,
      I1 => inst_mux4_1_Mmux_X_3_21,
      S => counter_1_IBUF_11,
      O => enable
    );
  inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_10,
      I1 => enable_digit_0_IBUF_17,
      I2 => enable_digit_1_IBUF_18,
      O => inst_mux4_1_Mmux_X_4_22
    );
  inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_10,
      I1 => enable_digit_2_IBUF_19,
      I2 => enable_digit_3_IBUF_20,
      O => inst_mux4_1_Mmux_X_3_21
    );
  inst_demux1_4_x_3_mux00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => counter_1_IBUF_11,
      I1 => counter_0_IBUF_10,
      I2 => enable,
      O => anodes_3_OBUF_7
    );
  inst_demux1_4_x_2_mux00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => counter_1_IBUF_11,
      I1 => counter_0_IBUF_10,
      I2 => enable,
      O => anodes_2_OBUF_6
    );
  inst_demux1_4_x_1_mux00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => counter_0_IBUF_10,
      I1 => counter_1_IBUF_11,
      I2 => enable,
      O => anodes_1_OBUF_5
    );
  inst_demux1_4_x_0_mux00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => enable,
      I1 => counter_0_IBUF_10,
      I2 => counter_1_IBUF_11,
      O => anodes_0_OBUF_4
    );
  counter_1_IBUF : IBUF
    port map (
      I => counter(1),
      O => counter_1_IBUF_11
    );
  counter_0_IBUF : IBUF
    port map (
      I => counter(0),
      O => counter_0_IBUF_10
    );
  enable_digit_3_IBUF : IBUF
    port map (
      I => enable_digit(3),
      O => enable_digit_3_IBUF_20
    );
  enable_digit_2_IBUF : IBUF
    port map (
      I => enable_digit(2),
      O => enable_digit_2_IBUF_19
    );
  enable_digit_1_IBUF : IBUF
    port map (
      I => enable_digit(1),
      O => enable_digit_1_IBUF_18
    );
  enable_digit_0_IBUF : IBUF
    port map (
      I => enable_digit(0),
      O => enable_digit_0_IBUF_17
    );
  anodes_3_OBUF : OBUF
    port map (
      I => anodes_3_OBUF_7,
      O => anodes(3)
    );
  anodes_2_OBUF : OBUF
    port map (
      I => anodes_2_OBUF_6,
      O => anodes(2)
    );
  anodes_1_OBUF : OBUF
    port map (
      I => anodes_1_OBUF_5,
      O => anodes(1)
    );
  anodes_0_OBUF : OBUF
    port map (
      I => anodes_0_OBUF_4,
      O => anodes(0)
    );

end Structure;

