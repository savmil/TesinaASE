--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: display_top_level_synthesis.vhd
-- /___/   /\     Timestamp: Thu Dec 28 15:39:28 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm display_top_level -w -dir netgen/synthesis -ofmt vhdl -sim display_top_level.ngc display_top_level_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: display_top_level.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\DCM_7_segmenti\netgen\synthesis\display_top_level_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: display_top_level
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

entity display_top_level is
  port (
    load_msb_value : in STD_LOGIC := 'X'; 
    load_lsb_value : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    load_dots_enable : in STD_LOGIC := 'X'; 
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cathodes : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    in_byte : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end display_top_level;

architecture Structure of display_top_level is
  signal Inst_dcm_CLK0_BUF : STD_LOGIC; 
  signal Inst_dcm_CLKFB_IN : STD_LOGIC; 
  signal Inst_dcm_CLKFX_BUF : STD_LOGIC; 
  signal Inst_dcm_CLKIN_IBUFG : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal anodes_0_OBUF_10 : STD_LOGIC; 
  signal anodes_1_OBUF_11 : STD_LOGIC; 
  signal anodes_2_OBUF_12 : STD_LOGIC; 
  signal anodes_3_OBUF_13 : STD_LOGIC; 
  signal cathodes_0_OBUF_22 : STD_LOGIC; 
  signal cathodes_1_OBUF_23 : STD_LOGIC; 
  signal cathodes_2_OBUF_24 : STD_LOGIC; 
  signal cathodes_3_OBUF_25 : STD_LOGIC; 
  signal cathodes_4_OBUF_26 : STD_LOGIC; 
  signal cathodes_5_OBUF_27 : STD_LOGIC; 
  signal cathodes_6_OBUF_28 : STD_LOGIC; 
  signal cathodes_7_OBUF_29 : STD_LOGIC; 
  signal clkfx : STD_LOGIC; 
  signal in_byte_0_IBUF_40 : STD_LOGIC; 
  signal in_byte_1_IBUF_41 : STD_LOGIC; 
  signal in_byte_2_IBUF_42 : STD_LOGIC; 
  signal in_byte_3_IBUF_43 : STD_LOGIC; 
  signal in_byte_4_IBUF_44 : STD_LOGIC; 
  signal in_byte_5_IBUF_45 : STD_LOGIC; 
  signal in_byte_6_IBUF_46 : STD_LOGIC; 
  signal in_byte_7_IBUF_47 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_enable : STD_LOGIC; 
  signal inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_49 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_50 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_inst_dots_Mmux_X_3_59 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_inst_dots_Mmux_X_4_60 : STD_LOGIC; 
  signal inst_display_inst_counter_reset_n_inv : STD_LOGIC; 
  signal inst_on_board_value_reg_0_not0001 : STD_LOGIC; 
  signal inst_on_board_value_reg_9_not0001 : STD_LOGIC; 
  signal load_dots_enable_IBUF_121 : STD_LOGIC; 
  signal load_lsb_value_IBUF_123 : STD_LOGIC; 
  signal load_msb_value_IBUF_125 : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_display_inst_counter_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_display_inst_counter_count_add0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_on_board_dots_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_on_board_enable_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_on_board_inst_edge_triggered_dots_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_on_board_inst_edge_triggered_enable_q : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_on_board_inst_edge_triggered_value_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal inst_on_board_value_reg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  inst_display_inst_counter_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => N1,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_display_inst_counter_count_add0000(0),
      Q => inst_display_inst_counter_count(0)
    );
  inst_display_inst_counter_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => N1,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_display_inst_counter_count_add0000(1),
      Q => inst_display_inst_counter_count(1)
    );
  inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_50,
      I1 => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_49,
      S => inst_display_inst_counter_count(1),
      O => inst_display_inst_anode_manager_enable
    );
  inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56,
      I1 => inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55,
      S => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble(2)
    );
  inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(2),
      I2 => inst_on_board_inst_edge_triggered_value_q(6),
      O => inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56
    );
  inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(10),
      I2 => inst_on_board_inst_edge_triggered_value_q(14),
      O => inst_display_inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55
    );
  inst_display_inst_cathode_manager_inst_dots_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_cathode_manager_inst_dots_Mmux_X_4_60,
      I1 => inst_display_inst_cathode_manager_inst_dots_Mmux_X_3_59,
      S => inst_display_inst_counter_count(1),
      O => cathodes_7_OBUF_29
    );
  inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58,
      I1 => inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57,
      S => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble(3)
    );
  inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(3),
      I2 => inst_on_board_inst_edge_triggered_value_q(7),
      O => inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58
    );
  inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(11),
      I2 => inst_on_board_inst_edge_triggered_value_q(15),
      O => inst_display_inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57
    );
  inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54,
      I1 => inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53,
      S => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble(1)
    );
  inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(1),
      I2 => inst_on_board_inst_edge_triggered_value_q(5),
      O => inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54
    );
  inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(9),
      I2 => inst_on_board_inst_edge_triggered_value_q(13),
      O => inst_display_inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53
    );
  inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52,
      I1 => inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51,
      S => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble(0)
    );
  inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(0),
      I2 => inst_on_board_inst_edge_triggered_value_q(4),
      O => inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52
    );
  inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_value_q(8),
      I2 => inst_on_board_inst_edge_triggered_value_q(12),
      O => inst_display_inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51
    );
  Inst_dcm_DCM_SP_INST : DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 20,
      CLKFX_MULTIPLY => 2,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 20.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      PHASE_SHIFT => 0,
      STARTUP_WAIT => TRUE,
      FACTORY_JF => X"C080"
    )
    port map (
      CLKIN => Inst_dcm_CLKIN_IBUFG,
      CLKFB => Inst_dcm_CLKFB_IN,
      RST => inst_display_inst_counter_reset_n_inv,
      DSSEN => N0,
      PSINCDEC => N0,
      PSEN => N0,
      PSCLK => N0,
      CLK0 => Inst_dcm_CLK0_BUF,
      CLK90 => NLW_Inst_dcm_DCM_SP_INST_CLK90_UNCONNECTED,
      CLK180 => NLW_Inst_dcm_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_dcm_DCM_SP_INST_CLK270_UNCONNECTED,
      CLK2X => NLW_Inst_dcm_DCM_SP_INST_CLK2X_UNCONNECTED,
      CLK2X180 => NLW_Inst_dcm_DCM_SP_INST_CLK2X180_UNCONNECTED,
      CLKDV => NLW_Inst_dcm_DCM_SP_INST_CLKDV_UNCONNECTED,
      CLKFX => Inst_dcm_CLKFX_BUF,
      CLKFX180 => NLW_Inst_dcm_DCM_SP_INST_CLKFX180_UNCONNECTED,
      LOCKED => NLW_Inst_dcm_DCM_SP_INST_LOCKED_UNCONNECTED,
      PSDONE => NLW_Inst_dcm_DCM_SP_INST_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_Inst_dcm_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_dcm_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_dcm_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_dcm_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_dcm_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_dcm_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_dcm_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_dcm_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  Inst_dcm_CLK0_BUFG_INST : BUFG
    port map (
      I => Inst_dcm_CLK0_BUF,
      O => Inst_dcm_CLKFB_IN
    );
  Inst_dcm_CLKIN_IBUFG_INST : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clock,
      O => Inst_dcm_CLKIN_IBUFG
    );
  Inst_dcm_CLKFX_BUFG_INST : BUFG
    port map (
      I => Inst_dcm_CLKFX_BUF,
      O => clkfx
    );
  inst_on_board_inst_edge_triggered_value_q_0 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(0),
      Q => inst_on_board_inst_edge_triggered_value_q(0)
    );
  inst_on_board_inst_edge_triggered_value_q_1 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(1),
      Q => inst_on_board_inst_edge_triggered_value_q(1)
    );
  inst_on_board_inst_edge_triggered_value_q_2 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(2),
      Q => inst_on_board_inst_edge_triggered_value_q(2)
    );
  inst_on_board_inst_edge_triggered_value_q_3 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(3),
      Q => inst_on_board_inst_edge_triggered_value_q(3)
    );
  inst_on_board_inst_edge_triggered_value_q_4 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(4),
      Q => inst_on_board_inst_edge_triggered_value_q(4)
    );
  inst_on_board_inst_edge_triggered_value_q_5 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(5),
      Q => inst_on_board_inst_edge_triggered_value_q(5)
    );
  inst_on_board_inst_edge_triggered_value_q_6 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(6),
      Q => inst_on_board_inst_edge_triggered_value_q(6)
    );
  inst_on_board_inst_edge_triggered_value_q_7 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(7),
      Q => inst_on_board_inst_edge_triggered_value_q(7)
    );
  inst_on_board_inst_edge_triggered_value_q_8 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(8),
      Q => inst_on_board_inst_edge_triggered_value_q(8)
    );
  inst_on_board_inst_edge_triggered_value_q_9 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(9),
      Q => inst_on_board_inst_edge_triggered_value_q(9)
    );
  inst_on_board_inst_edge_triggered_value_q_10 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(10),
      Q => inst_on_board_inst_edge_triggered_value_q(10)
    );
  inst_on_board_inst_edge_triggered_value_q_11 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(11),
      Q => inst_on_board_inst_edge_triggered_value_q(11)
    );
  inst_on_board_inst_edge_triggered_value_q_12 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(12),
      Q => inst_on_board_inst_edge_triggered_value_q(12)
    );
  inst_on_board_inst_edge_triggered_value_q_13 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(13),
      Q => inst_on_board_inst_edge_triggered_value_q(13)
    );
  inst_on_board_inst_edge_triggered_value_q_14 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(14),
      Q => inst_on_board_inst_edge_triggered_value_q(14)
    );
  inst_on_board_inst_edge_triggered_value_q_15 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_value_reg(15),
      Q => inst_on_board_inst_edge_triggered_value_q(15)
    );
  inst_on_board_inst_edge_triggered_dots_q_0 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_dots_reg(0),
      Q => inst_on_board_inst_edge_triggered_dots_q(0)
    );
  inst_on_board_inst_edge_triggered_dots_q_1 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_dots_reg(1),
      Q => inst_on_board_inst_edge_triggered_dots_q(1)
    );
  inst_on_board_inst_edge_triggered_dots_q_2 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_dots_reg(2),
      Q => inst_on_board_inst_edge_triggered_dots_q(2)
    );
  inst_on_board_inst_edge_triggered_dots_q_3 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_dots_reg(3),
      Q => inst_on_board_inst_edge_triggered_dots_q(3)
    );
  inst_on_board_inst_edge_triggered_enable_q_0 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_enable_reg(0),
      Q => inst_on_board_inst_edge_triggered_enable_q(0)
    );
  inst_on_board_inst_edge_triggered_enable_q_1 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_enable_reg(1),
      Q => inst_on_board_inst_edge_triggered_enable_q(1)
    );
  inst_on_board_inst_edge_triggered_enable_q_2 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_enable_reg(2),
      Q => inst_on_board_inst_edge_triggered_enable_q(2)
    );
  inst_on_board_inst_edge_triggered_enable_q_3 : FDC
    port map (
      C => clkfx,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => inst_on_board_enable_reg(3),
      Q => inst_on_board_inst_edge_triggered_enable_q(3)
    );
  inst_on_board_value_reg_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_0_IBUF_40,
      Q => inst_on_board_value_reg(8)
    );
  inst_on_board_value_reg_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_7_IBUF_47,
      Q => inst_on_board_value_reg(7)
    );
  inst_on_board_value_reg_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_5_IBUF_45,
      Q => inst_on_board_value_reg(5)
    );
  inst_on_board_value_reg_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_4_IBUF_44,
      Q => inst_on_board_value_reg(4)
    );
  inst_on_board_value_reg_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_6_IBUF_46,
      Q => inst_on_board_value_reg(6)
    );
  inst_on_board_value_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_3_IBUF_43,
      Q => inst_on_board_value_reg(3)
    );
  inst_on_board_value_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_2_IBUF_42,
      Q => inst_on_board_value_reg(2)
    );
  inst_on_board_value_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_0_IBUF_40,
      Q => inst_on_board_value_reg(0)
    );
  inst_on_board_dots_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_3_IBUF_43,
      Q => inst_on_board_dots_reg(3)
    );
  inst_on_board_dots_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_2_IBUF_42,
      Q => inst_on_board_dots_reg(2)
    );
  inst_on_board_dots_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_1_IBUF_41,
      Q => inst_on_board_dots_reg(1)
    );
  inst_on_board_dots_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_0_IBUF_40,
      Q => inst_on_board_dots_reg(0)
    );
  inst_on_board_value_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_0_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_1_IBUF_41,
      Q => inst_on_board_value_reg(1)
    );
  inst_on_board_enable_reg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_7_IBUF_47,
      Q => inst_on_board_enable_reg(3)
    );
  inst_on_board_enable_reg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_6_IBUF_46,
      Q => inst_on_board_enable_reg(2)
    );
  inst_on_board_enable_reg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_5_IBUF_45,
      Q => inst_on_board_enable_reg(1)
    );
  inst_on_board_enable_reg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => load_dots_enable_IBUF_121,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_4_IBUF_44,
      Q => inst_on_board_enable_reg(0)
    );
  inst_on_board_value_reg_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_7_IBUF_47,
      Q => inst_on_board_value_reg(15)
    );
  inst_on_board_value_reg_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_5_IBUF_45,
      Q => inst_on_board_value_reg(13)
    );
  inst_on_board_value_reg_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_4_IBUF_44,
      Q => inst_on_board_value_reg(12)
    );
  inst_on_board_value_reg_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_6_IBUF_46,
      Q => inst_on_board_value_reg(14)
    );
  inst_on_board_value_reg_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_2_IBUF_42,
      Q => inst_on_board_value_reg(10)
    );
  inst_on_board_value_reg_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_1_IBUF_41,
      Q => inst_on_board_value_reg(9)
    );
  inst_on_board_value_reg_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => inst_on_board_value_reg_9_not0001,
      CLR => inst_display_inst_counter_reset_n_inv,
      D => in_byte_3_IBUF_43,
      Q => inst_on_board_value_reg(11)
    );
  inst_display_inst_counter_Madd_count_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_display_inst_counter_count(1),
      I1 => inst_display_inst_counter_count(0),
      O => inst_display_inst_counter_count_add0000(1)
    );
  inst_on_board_value_reg_9_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => load_dots_enable_IBUF_121,
      I1 => load_msb_value_IBUF_125,
      O => inst_on_board_value_reg_9_not0001
    );
  inst_on_board_value_reg_0_not00011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => load_lsb_value_IBUF_123,
      I1 => load_msb_value_IBUF_125,
      I2 => load_dots_enable_IBUF_121,
      O => inst_on_board_value_reg_0_not0001
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes41 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(3),
      I1 => inst_display_inst_cathode_manager_nibble(0),
      I2 => inst_display_inst_cathode_manager_nibble(2),
      I3 => inst_display_inst_cathode_manager_nibble(1),
      O => cathodes_4_OBUF_26
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes21 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(1),
      I1 => inst_display_inst_cathode_manager_nibble(2),
      I2 => inst_display_inst_cathode_manager_nibble(3),
      I3 => inst_display_inst_cathode_manager_nibble(0),
      O => cathodes_2_OBUF_24
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes61 : LUT4
    generic map(
      INIT => X"2141"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(1),
      I1 => inst_display_inst_cathode_manager_nibble(3),
      I2 => inst_display_inst_cathode_manager_nibble(2),
      I3 => inst_display_inst_cathode_manager_nibble(0),
      O => cathodes_6_OBUF_28
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes51 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(1),
      I1 => inst_display_inst_cathode_manager_nibble(3),
      I2 => inst_display_inst_cathode_manager_nibble(0),
      I3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_5_OBUF_27
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes111 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(0),
      I1 => inst_display_inst_cathode_manager_nibble(2),
      I2 => inst_display_inst_cathode_manager_nibble(1),
      I3 => inst_display_inst_cathode_manager_nibble(3),
      O => cathodes_1_OBUF_23
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(1),
      I1 => inst_display_inst_cathode_manager_nibble(3),
      I2 => inst_display_inst_cathode_manager_nibble(0),
      I3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_3_OBUF_25
    );
  inst_display_inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes11 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => inst_display_inst_cathode_manager_nibble(0),
      I1 => inst_display_inst_cathode_manager_nibble(1),
      I2 => inst_display_inst_cathode_manager_nibble(2),
      I3 => inst_display_inst_cathode_manager_nibble(3),
      O => cathodes_0_OBUF_22
    );
  inst_display_inst_anode_manager_inst_demux1_4_x_3_mux00001 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => inst_display_inst_anode_manager_enable,
      I1 => inst_display_inst_counter_count(1),
      I2 => inst_display_inst_counter_count(0),
      O => anodes_3_OBUF_13
    );
  inst_display_inst_anode_manager_inst_demux1_4_x_2_mux00001 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_display_inst_anode_manager_enable,
      I2 => inst_display_inst_counter_count(1),
      O => anodes_2_OBUF_12
    );
  inst_display_inst_anode_manager_inst_demux1_4_x_1_mux00001 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => inst_display_inst_counter_count(1),
      I1 => inst_display_inst_anode_manager_enable,
      I2 => inst_display_inst_counter_count(0),
      O => anodes_1_OBUF_11
    );
  inst_display_inst_anode_manager_inst_demux1_4_x_0_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => inst_display_inst_counter_count(1),
      I1 => inst_display_inst_anode_manager_enable,
      I2 => inst_display_inst_counter_count(0),
      O => anodes_0_OBUF_10
    );
  load_msb_value_IBUF : IBUF
    port map (
      I => load_msb_value,
      O => load_msb_value_IBUF_125
    );
  load_lsb_value_IBUF : IBUF
    port map (
      I => load_lsb_value,
      O => load_lsb_value_IBUF_123
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => inst_display_inst_counter_reset_n_inv
    );
  load_dots_enable_IBUF : IBUF
    port map (
      I => load_dots_enable,
      O => load_dots_enable_IBUF_121
    );
  in_byte_7_IBUF : IBUF
    port map (
      I => in_byte(7),
      O => in_byte_7_IBUF_47
    );
  in_byte_6_IBUF : IBUF
    port map (
      I => in_byte(6),
      O => in_byte_6_IBUF_46
    );
  in_byte_5_IBUF : IBUF
    port map (
      I => in_byte(5),
      O => in_byte_5_IBUF_45
    );
  in_byte_4_IBUF : IBUF
    port map (
      I => in_byte(4),
      O => in_byte_4_IBUF_44
    );
  in_byte_3_IBUF : IBUF
    port map (
      I => in_byte(3),
      O => in_byte_3_IBUF_43
    );
  in_byte_2_IBUF : IBUF
    port map (
      I => in_byte(2),
      O => in_byte_2_IBUF_42
    );
  in_byte_1_IBUF : IBUF
    port map (
      I => in_byte(1),
      O => in_byte_1_IBUF_41
    );
  in_byte_0_IBUF : IBUF
    port map (
      I => in_byte(0),
      O => in_byte_0_IBUF_40
    );
  anodes_3_OBUF : OBUF
    port map (
      I => anodes_3_OBUF_13,
      O => anodes(3)
    );
  anodes_2_OBUF : OBUF
    port map (
      I => anodes_2_OBUF_12,
      O => anodes(2)
    );
  anodes_1_OBUF : OBUF
    port map (
      I => anodes_1_OBUF_11,
      O => anodes(1)
    );
  anodes_0_OBUF : OBUF
    port map (
      I => anodes_0_OBUF_10,
      O => anodes(0)
    );
  cathodes_7_OBUF : OBUF
    port map (
      I => cathodes_7_OBUF_29,
      O => cathodes(7)
    );
  cathodes_6_OBUF : OBUF
    port map (
      I => cathodes_6_OBUF_28,
      O => cathodes(6)
    );
  cathodes_5_OBUF : OBUF
    port map (
      I => cathodes_5_OBUF_27,
      O => cathodes(5)
    );
  cathodes_4_OBUF : OBUF
    port map (
      I => cathodes_4_OBUF_26,
      O => cathodes(4)
    );
  cathodes_3_OBUF : OBUF
    port map (
      I => cathodes_3_OBUF_25,
      O => cathodes(3)
    );
  cathodes_2_OBUF : OBUF
    port map (
      I => cathodes_2_OBUF_24,
      O => cathodes(2)
    );
  cathodes_1_OBUF : OBUF
    port map (
      I => cathodes_1_OBUF_23,
      O => cathodes(1)
    );
  cathodes_0_OBUF : OBUF
    port map (
      I => cathodes_0_OBUF_22,
      O => cathodes(0)
    );
  inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_enable_q(1),
      I2 => inst_on_board_inst_edge_triggered_enable_q(0),
      O => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_50
    );
  inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_enable_q(3),
      I2 => inst_on_board_inst_edge_triggered_enable_q(2),
      O => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_49
    );
  inst_display_inst_cathode_manager_inst_dots_Mmux_X_4 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_dots_q(1),
      I2 => inst_on_board_inst_edge_triggered_dots_q(0),
      O => inst_display_inst_cathode_manager_inst_dots_Mmux_X_4_60
    );
  inst_display_inst_cathode_manager_inst_dots_Mmux_X_3 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => inst_display_inst_counter_count(0),
      I1 => inst_on_board_inst_edge_triggered_dots_q(3),
      I2 => inst_on_board_inst_edge_triggered_dots_q(2),
      O => inst_display_inst_cathode_manager_inst_dots_Mmux_X_3_59
    );
  inst_display_inst_counter_Madd_count_add0000_xor_0_11_INV_0 : INV
    port map (
      I => inst_display_inst_counter_count(0),
      O => inst_display_inst_counter_count_add0000(0)
    );

end Structure;

