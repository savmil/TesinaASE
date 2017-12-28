--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: display_synthesis.vhd
-- /___/   /\     Timestamp: Thu Dec 28 15:16:20 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm display -w -dir netgen/synthesis -ofmt vhdl -sim display.ngc display_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: display.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\DCM_7_segmenti\netgen\synthesis\display_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: display
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

entity display is
  port (
    rst_n : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cathodes : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    en : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    values : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    dots : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end display;

architecture Structure of display is
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
  signal dots_0_IBUF_36 : STD_LOGIC; 
  signal dots_1_IBUF_37 : STD_LOGIC; 
  signal dots_2_IBUF_38 : STD_LOGIC; 
  signal dots_3_IBUF_39 : STD_LOGIC; 
  signal en_0_IBUF_44 : STD_LOGIC; 
  signal en_1_IBUF_45 : STD_LOGIC; 
  signal en_2_IBUF_46 : STD_LOGIC; 
  signal en_3_IBUF_47 : STD_LOGIC; 
  signal inst_anode_manager_enable : STD_LOGIC; 
  signal inst_anode_manager_inst_mux4_1_Mmux_X_3_49 : STD_LOGIC; 
  signal inst_anode_manager_inst_mux4_1_Mmux_X_4_50 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57 : STD_LOGIC; 
  signal inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58 : STD_LOGIC; 
  signal inst_cathode_manager_inst_dots_Mmux_X_3_59 : STD_LOGIC; 
  signal inst_cathode_manager_inst_dots_Mmux_X_4_60 : STD_LOGIC; 
  signal inst_counter_reset_n_inv : STD_LOGIC; 
  signal rst_n_IBUF_71 : STD_LOGIC; 
  signal values_0_IBUF_88 : STD_LOGIC; 
  signal values_10_IBUF_89 : STD_LOGIC; 
  signal values_11_IBUF_90 : STD_LOGIC; 
  signal values_12_IBUF_91 : STD_LOGIC; 
  signal values_13_IBUF_92 : STD_LOGIC; 
  signal values_14_IBUF_93 : STD_LOGIC; 
  signal values_15_IBUF_94 : STD_LOGIC; 
  signal values_1_IBUF_95 : STD_LOGIC; 
  signal values_2_IBUF_96 : STD_LOGIC; 
  signal values_3_IBUF_97 : STD_LOGIC; 
  signal values_4_IBUF_98 : STD_LOGIC; 
  signal values_5_IBUF_99 : STD_LOGIC; 
  signal values_6_IBUF_100 : STD_LOGIC; 
  signal values_7_IBUF_101 : STD_LOGIC; 
  signal values_8_IBUF_102 : STD_LOGIC; 
  signal values_9_IBUF_103 : STD_LOGIC; 
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
  signal inst_cathode_manager_nibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_counter_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal inst_counter_count_add0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  inst_counter_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => N1,
      CLR => inst_counter_reset_n_inv,
      D => inst_counter_count_add0000(1),
      Q => inst_counter_count(1)
    );
  inst_counter_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkfx,
      CE => N1,
      CLR => inst_counter_reset_n_inv,
      D => inst_counter_count_add0000(0),
      Q => inst_counter_count(0)
    );
  inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52,
      I1 => inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51,
      S => inst_counter_count(1),
      O => inst_cathode_manager_nibble(0)
    );
  inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_0_IBUF_88,
      I2 => values_4_IBUF_98,
      O => inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_4_52
    );
  inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_8_IBUF_102,
      I2 => values_12_IBUF_91,
      O => inst_cathode_manager_gen_mux_0_inst_mux4_1_Mmux_X_3_51
    );
  inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58,
      I1 => inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57,
      S => inst_counter_count(1),
      O => inst_cathode_manager_nibble(3)
    );
  inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_3_IBUF_97,
      I2 => values_7_IBUF_101,
      O => inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_4_58
    );
  inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_11_IBUF_90,
      I2 => values_15_IBUF_94,
      O => inst_cathode_manager_gen_mux_3_inst_mux4_1_Mmux_X_3_57
    );
  inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54,
      I1 => inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53,
      S => inst_counter_count(1),
      O => inst_cathode_manager_nibble(1)
    );
  inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_1_IBUF_95,
      I2 => values_5_IBUF_99,
      O => inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_4_54
    );
  inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_9_IBUF_103,
      I2 => values_13_IBUF_92,
      O => inst_cathode_manager_gen_mux_1_inst_mux4_1_Mmux_X_3_53
    );
  inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56,
      I1 => inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55,
      S => inst_counter_count(1),
      O => inst_cathode_manager_nibble(2)
    );
  inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_2_IBUF_96,
      I2 => values_6_IBUF_100,
      O => inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_4_56
    );
  inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => values_10_IBUF_89,
      I2 => values_14_IBUF_93,
      O => inst_cathode_manager_gen_mux_2_inst_mux4_1_Mmux_X_3_55
    );
  inst_cathode_manager_inst_dots_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_cathode_manager_inst_dots_Mmux_X_4_60,
      I1 => inst_cathode_manager_inst_dots_Mmux_X_3_59,
      S => inst_counter_count(1),
      O => cathodes_7_OBUF_29
    );
  inst_cathode_manager_inst_dots_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => dots_0_IBUF_36,
      I2 => dots_1_IBUF_37,
      O => inst_cathode_manager_inst_dots_Mmux_X_4_60
    );
  inst_cathode_manager_inst_dots_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => dots_2_IBUF_38,
      I2 => dots_3_IBUF_39,
      O => inst_cathode_manager_inst_dots_Mmux_X_3_59
    );
  inst_anode_manager_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_anode_manager_inst_mux4_1_Mmux_X_4_50,
      I1 => inst_anode_manager_inst_mux4_1_Mmux_X_3_49,
      S => inst_counter_count(1),
      O => inst_anode_manager_enable
    );
  inst_anode_manager_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => en_0_IBUF_44,
      I2 => en_1_IBUF_45,
      O => inst_anode_manager_inst_mux4_1_Mmux_X_4_50
    );
  inst_anode_manager_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => en_2_IBUF_46,
      I2 => en_3_IBUF_47,
      O => inst_anode_manager_inst_mux4_1_Mmux_X_3_49
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
      RST => rst_n_IBUF_71,
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
  inst_counter_Madd_count_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_counter_count(1),
      I1 => inst_counter_count(0),
      O => inst_counter_count_add0000(1)
    );
  inst_anode_manager_inst_demux1_4_x_3_mux00001 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => inst_anode_manager_enable,
      I1 => inst_counter_count(0),
      I2 => inst_counter_count(1),
      O => anodes_3_OBUF_13
    );
  inst_anode_manager_inst_demux1_4_x_2_mux00001 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => inst_anode_manager_enable,
      I1 => inst_counter_count(1),
      I2 => inst_counter_count(0),
      O => anodes_2_OBUF_12
    );
  inst_anode_manager_inst_demux1_4_x_1_mux00001 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => inst_anode_manager_enable,
      I1 => inst_counter_count(0),
      I2 => inst_counter_count(1),
      O => anodes_1_OBUF_11
    );
  inst_anode_manager_inst_demux1_4_x_0_mux00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => inst_counter_count(0),
      I1 => inst_anode_manager_enable,
      I2 => inst_counter_count(1),
      O => anodes_0_OBUF_10
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes41 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => inst_cathode_manager_nibble(3),
      I1 => inst_cathode_manager_nibble(0),
      I2 => inst_cathode_manager_nibble(1),
      I3 => inst_cathode_manager_nibble(2),
      O => cathodes_4_OBUF_26
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes21 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => inst_cathode_manager_nibble(1),
      I1 => inst_cathode_manager_nibble(3),
      I2 => inst_cathode_manager_nibble(2),
      I3 => inst_cathode_manager_nibble(0),
      O => cathodes_2_OBUF_24
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes61 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => inst_cathode_manager_nibble(1),
      I1 => inst_cathode_manager_nibble(2),
      I2 => inst_cathode_manager_nibble(3),
      I3 => inst_cathode_manager_nibble(0),
      O => cathodes_6_OBUF_28
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes51 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => inst_cathode_manager_nibble(1),
      I1 => inst_cathode_manager_nibble(3),
      I2 => inst_cathode_manager_nibble(0),
      I3 => inst_cathode_manager_nibble(2),
      O => cathodes_5_OBUF_27
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes111 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => inst_cathode_manager_nibble(0),
      I1 => inst_cathode_manager_nibble(2),
      I2 => inst_cathode_manager_nibble(1),
      I3 => inst_cathode_manager_nibble(3),
      O => cathodes_1_OBUF_23
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => inst_cathode_manager_nibble(1),
      I1 => inst_cathode_manager_nibble(3),
      I2 => inst_cathode_manager_nibble(0),
      I3 => inst_cathode_manager_nibble(2),
      O => cathodes_3_OBUF_25
    );
  inst_cathode_manager_inst_cathode_encoder_Mrom_cathodes11 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => inst_cathode_manager_nibble(0),
      I1 => inst_cathode_manager_nibble(1),
      I2 => inst_cathode_manager_nibble(2),
      I3 => inst_cathode_manager_nibble(3),
      O => cathodes_0_OBUF_22
    );
  rst_n_IBUF : IBUF
    port map (
      I => rst_n,
      O => rst_n_IBUF_71
    );
  en_3_IBUF : IBUF
    port map (
      I => en(3),
      O => en_3_IBUF_47
    );
  en_2_IBUF : IBUF
    port map (
      I => en(2),
      O => en_2_IBUF_46
    );
  en_1_IBUF : IBUF
    port map (
      I => en(1),
      O => en_1_IBUF_45
    );
  en_0_IBUF : IBUF
    port map (
      I => en(0),
      O => en_0_IBUF_44
    );
  values_15_IBUF : IBUF
    port map (
      I => values(15),
      O => values_15_IBUF_94
    );
  values_14_IBUF : IBUF
    port map (
      I => values(14),
      O => values_14_IBUF_93
    );
  values_13_IBUF : IBUF
    port map (
      I => values(13),
      O => values_13_IBUF_92
    );
  values_12_IBUF : IBUF
    port map (
      I => values(12),
      O => values_12_IBUF_91
    );
  values_11_IBUF : IBUF
    port map (
      I => values(11),
      O => values_11_IBUF_90
    );
  values_10_IBUF : IBUF
    port map (
      I => values(10),
      O => values_10_IBUF_89
    );
  values_9_IBUF : IBUF
    port map (
      I => values(9),
      O => values_9_IBUF_103
    );
  values_8_IBUF : IBUF
    port map (
      I => values(8),
      O => values_8_IBUF_102
    );
  values_7_IBUF : IBUF
    port map (
      I => values(7),
      O => values_7_IBUF_101
    );
  values_6_IBUF : IBUF
    port map (
      I => values(6),
      O => values_6_IBUF_100
    );
  values_5_IBUF : IBUF
    port map (
      I => values(5),
      O => values_5_IBUF_99
    );
  values_4_IBUF : IBUF
    port map (
      I => values(4),
      O => values_4_IBUF_98
    );
  values_3_IBUF : IBUF
    port map (
      I => values(3),
      O => values_3_IBUF_97
    );
  values_2_IBUF : IBUF
    port map (
      I => values(2),
      O => values_2_IBUF_96
    );
  values_1_IBUF : IBUF
    port map (
      I => values(1),
      O => values_1_IBUF_95
    );
  values_0_IBUF : IBUF
    port map (
      I => values(0),
      O => values_0_IBUF_88
    );
  dots_3_IBUF : IBUF
    port map (
      I => dots(3),
      O => dots_3_IBUF_39
    );
  dots_2_IBUF : IBUF
    port map (
      I => dots(2),
      O => dots_2_IBUF_38
    );
  dots_1_IBUF : IBUF
    port map (
      I => dots(1),
      O => dots_1_IBUF_37
    );
  dots_0_IBUF : IBUF
    port map (
      I => dots(0),
      O => dots_0_IBUF_36
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
  inst_counter_reset_n_inv1_INV_0 : INV
    port map (
      I => rst_n_IBUF_71,
      O => inst_counter_reset_n_inv
    );
  inst_counter_Madd_count_add0000_xor_0_11_INV_0 : INV
    port map (
      I => inst_counter_count(0),
      O => inst_counter_count_add0000(0)
    );

end Structure;

