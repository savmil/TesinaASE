--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: display_on_board_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 15 18:09:01 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm display_on_board -w -dir netgen/synthesis -ofmt vhdl -sim display_on_board.ngc display_on_board_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: display_on_board.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\synthesis\display_on_board_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: display_on_board
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

entity display_on_board is
  port (
    load_msb_value : in STD_LOGIC := 'X'; 
    load_lsb_value : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    load_dots_enable : in STD_LOGIC := 'X'; 
    value : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    enable : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    dots : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    in_byte : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end display_on_board;

architecture Structure of display_on_board is
  signal clock_BUFGP_1 : STD_LOGIC; 
  signal dots_0_OBUF_6 : STD_LOGIC; 
  signal dots_1_OBUF_7 : STD_LOGIC; 
  signal dots_2_OBUF_8 : STD_LOGIC; 
  signal dots_3_OBUF_9 : STD_LOGIC; 
  signal enable_0_OBUF_18 : STD_LOGIC; 
  signal enable_1_OBUF_19 : STD_LOGIC; 
  signal enable_2_OBUF_20 : STD_LOGIC; 
  signal enable_3_OBUF_21 : STD_LOGIC; 
  signal in_byte_0_IBUF_34 : STD_LOGIC; 
  signal in_byte_1_IBUF_35 : STD_LOGIC; 
  signal in_byte_2_IBUF_36 : STD_LOGIC; 
  signal in_byte_3_IBUF_37 : STD_LOGIC; 
  signal in_byte_4_IBUF_38 : STD_LOGIC; 
  signal in_byte_5_IBUF_39 : STD_LOGIC; 
  signal in_byte_6_IBUF_40 : STD_LOGIC; 
  signal in_byte_7_IBUF_41 : STD_LOGIC; 
  signal inst_edge_triggered_dots_reset_n_inv : STD_LOGIC; 
  signal load_dots_enable_IBUF_68 : STD_LOGIC; 
  signal load_lsb_value_IBUF_70 : STD_LOGIC; 
  signal load_msb_value_IBUF_72 : STD_LOGIC; 
  signal value_reg_0_not0001 : STD_LOGIC; 
  signal value_reg_9_not0001 : STD_LOGIC; 
  signal dots_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal enable_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_edge_triggered_dots_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_edge_triggered_enable_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_edge_triggered_value_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal value_reg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  value_reg_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_3_IBUF_37,
      Q => value_reg(11)
    );
  value_reg_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_1_IBUF_35,
      Q => value_reg(9)
    );
  value_reg_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_2_IBUF_36,
      Q => value_reg(10)
    );
  value_reg_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_6_IBUF_40,
      Q => value_reg(14)
    );
  value_reg_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_4_IBUF_38,
      Q => value_reg(12)
    );
  value_reg_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_5_IBUF_39,
      Q => value_reg(13)
    );
  value_reg_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_7_IBUF_41,
      Q => value_reg(15)
    );
  enable_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_4_IBUF_38,
      Q => enable_reg(0)
    );
  enable_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_5_IBUF_39,
      Q => enable_reg(1)
    );
  enable_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_6_IBUF_40,
      Q => enable_reg(2)
    );
  enable_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_7_IBUF_41,
      Q => enable_reg(3)
    );
  value_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_1_IBUF_35,
      Q => value_reg(1)
    );
  dots_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_0_IBUF_34,
      Q => dots_reg(0)
    );
  dots_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_1_IBUF_35,
      Q => dots_reg(1)
    );
  dots_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_2_IBUF_36,
      Q => dots_reg(2)
    );
  dots_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => load_dots_enable_IBUF_68,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_3_IBUF_37,
      Q => dots_reg(3)
    );
  value_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_0_IBUF_34,
      Q => value_reg(0)
    );
  value_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_2_IBUF_36,
      Q => value_reg(2)
    );
  value_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_3_IBUF_37,
      Q => value_reg(3)
    );
  value_reg_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_6_IBUF_40,
      Q => value_reg(6)
    );
  value_reg_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_4_IBUF_38,
      Q => value_reg(4)
    );
  value_reg_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_5_IBUF_39,
      Q => value_reg(5)
    );
  value_reg_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_0_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_7_IBUF_41,
      Q => value_reg(7)
    );
  value_reg_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_1,
      CE => value_reg_9_not0001,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => in_byte_0_IBUF_34,
      Q => value_reg(8)
    );
  inst_edge_triggered_enable_q_3 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => enable_reg(3),
      Q => inst_edge_triggered_enable_q(3)
    );
  inst_edge_triggered_enable_q_2 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => enable_reg(2),
      Q => inst_edge_triggered_enable_q(2)
    );
  inst_edge_triggered_enable_q_1 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => enable_reg(1),
      Q => inst_edge_triggered_enable_q(1)
    );
  inst_edge_triggered_enable_q_0 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => enable_reg(0),
      Q => inst_edge_triggered_enable_q(0)
    );
  inst_edge_triggered_dots_q_3 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => dots_reg(3),
      Q => inst_edge_triggered_dots_q(3)
    );
  inst_edge_triggered_dots_q_2 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => dots_reg(2),
      Q => inst_edge_triggered_dots_q(2)
    );
  inst_edge_triggered_dots_q_1 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => dots_reg(1),
      Q => inst_edge_triggered_dots_q(1)
    );
  inst_edge_triggered_dots_q_0 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => dots_reg(0),
      Q => inst_edge_triggered_dots_q(0)
    );
  inst_edge_triggered_value_q_15 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(15),
      Q => inst_edge_triggered_value_q(15)
    );
  inst_edge_triggered_value_q_14 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(14),
      Q => inst_edge_triggered_value_q(14)
    );
  inst_edge_triggered_value_q_13 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(13),
      Q => inst_edge_triggered_value_q(13)
    );
  inst_edge_triggered_value_q_12 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(12),
      Q => inst_edge_triggered_value_q(12)
    );
  inst_edge_triggered_value_q_11 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(11),
      Q => inst_edge_triggered_value_q(11)
    );
  inst_edge_triggered_value_q_10 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(10),
      Q => inst_edge_triggered_value_q(10)
    );
  inst_edge_triggered_value_q_9 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(9),
      Q => inst_edge_triggered_value_q(9)
    );
  inst_edge_triggered_value_q_8 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(8),
      Q => inst_edge_triggered_value_q(8)
    );
  inst_edge_triggered_value_q_7 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(7),
      Q => inst_edge_triggered_value_q(7)
    );
  inst_edge_triggered_value_q_6 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(6),
      Q => inst_edge_triggered_value_q(6)
    );
  inst_edge_triggered_value_q_5 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(5),
      Q => inst_edge_triggered_value_q(5)
    );
  inst_edge_triggered_value_q_4 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(4),
      Q => inst_edge_triggered_value_q(4)
    );
  inst_edge_triggered_value_q_3 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(3),
      Q => inst_edge_triggered_value_q(3)
    );
  inst_edge_triggered_value_q_2 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(2),
      Q => inst_edge_triggered_value_q(2)
    );
  inst_edge_triggered_value_q_1 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(1),
      Q => inst_edge_triggered_value_q(1)
    );
  inst_edge_triggered_value_q_0 : FDC
    port map (
      C => clock_BUFGP_1,
      CLR => inst_edge_triggered_dots_reset_n_inv,
      D => value_reg(0),
      Q => inst_edge_triggered_value_q(0)
    );
  value_reg_9_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => load_dots_enable_IBUF_68,
      I1 => load_msb_value_IBUF_72,
      O => value_reg_9_not0001
    );
  value_reg_0_not00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => load_lsb_value_IBUF_70,
      I1 => load_msb_value_IBUF_72,
      I2 => load_dots_enable_IBUF_68,
      O => value_reg_0_not0001
    );
  load_msb_value_IBUF : IBUF
    port map (
      I => load_msb_value,
      O => load_msb_value_IBUF_72
    );
  load_lsb_value_IBUF : IBUF
    port map (
      I => load_lsb_value,
      O => load_lsb_value_IBUF_70
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => inst_edge_triggered_dots_reset_n_inv
    );
  load_dots_enable_IBUF : IBUF
    port map (
      I => load_dots_enable,
      O => load_dots_enable_IBUF_68
    );
  in_byte_7_IBUF : IBUF
    port map (
      I => in_byte(7),
      O => in_byte_7_IBUF_41
    );
  in_byte_6_IBUF : IBUF
    port map (
      I => in_byte(6),
      O => in_byte_6_IBUF_40
    );
  in_byte_5_IBUF : IBUF
    port map (
      I => in_byte(5),
      O => in_byte_5_IBUF_39
    );
  in_byte_4_IBUF : IBUF
    port map (
      I => in_byte(4),
      O => in_byte_4_IBUF_38
    );
  in_byte_3_IBUF : IBUF
    port map (
      I => in_byte(3),
      O => in_byte_3_IBUF_37
    );
  in_byte_2_IBUF : IBUF
    port map (
      I => in_byte(2),
      O => in_byte_2_IBUF_36
    );
  in_byte_1_IBUF : IBUF
    port map (
      I => in_byte(1),
      O => in_byte_1_IBUF_35
    );
  in_byte_0_IBUF : IBUF
    port map (
      I => in_byte(0),
      O => in_byte_0_IBUF_34
    );
  value_15_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(15),
      O => value(15)
    );
  value_14_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(14),
      O => value(14)
    );
  value_13_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(13),
      O => value(13)
    );
  value_12_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(12),
      O => value(12)
    );
  value_11_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(11),
      O => value(11)
    );
  value_10_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(10),
      O => value(10)
    );
  value_9_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(9),
      O => value(9)
    );
  value_8_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(8),
      O => value(8)
    );
  value_7_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(7),
      O => value(7)
    );
  value_6_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(6),
      O => value(6)
    );
  value_5_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(5),
      O => value(5)
    );
  value_4_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(4),
      O => value(4)
    );
  value_3_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(3),
      O => value(3)
    );
  value_2_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(2),
      O => value(2)
    );
  value_1_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(1),
      O => value(1)
    );
  value_0_OBUF : OBUF
    port map (
      I => inst_edge_triggered_value_q(0),
      O => value(0)
    );
  enable_3_OBUF : OBUF
    port map (
      I => enable_3_OBUF_21,
      O => enable(3)
    );
  enable_2_OBUF : OBUF
    port map (
      I => enable_2_OBUF_20,
      O => enable(2)
    );
  enable_1_OBUF : OBUF
    port map (
      I => enable_1_OBUF_19,
      O => enable(1)
    );
  enable_0_OBUF : OBUF
    port map (
      I => enable_0_OBUF_18,
      O => enable(0)
    );
  dots_3_OBUF : OBUF
    port map (
      I => dots_3_OBUF_9,
      O => dots(3)
    );
  dots_2_OBUF : OBUF
    port map (
      I => dots_2_OBUF_8,
      O => dots(2)
    );
  dots_1_OBUF : OBUF
    port map (
      I => dots_1_OBUF_7,
      O => dots(1)
    );
  dots_0_OBUF : OBUF
    port map (
      I => dots_0_OBUF_6,
      O => dots(0)
    );
  clock_BUFGP : BUFGP
    port map (
      I => clock,
      O => clock_BUFGP_1
    );
  enable_3_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_enable_q(3),
      O => enable_3_OBUF_21
    );
  enable_2_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_enable_q(2),
      O => enable_2_OBUF_20
    );
  enable_1_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_enable_q(1),
      O => enable_1_OBUF_19
    );
  enable_0_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_enable_q(0),
      O => enable_0_OBUF_18
    );
  dots_3_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_dots_q(3),
      O => dots_3_OBUF_9
    );
  dots_2_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_dots_q(2),
      O => dots_2_OBUF_8
    );
  dots_1_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_dots_q(1),
      O => dots_1_OBUF_7
    );
  dots_0_1_INV_0 : INV
    port map (
      I => inst_edge_triggered_dots_q(0),
      O => dots_0_OBUF_6
    );

end Structure;

