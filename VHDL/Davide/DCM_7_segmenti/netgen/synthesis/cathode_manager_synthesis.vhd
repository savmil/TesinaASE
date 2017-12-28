--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cathode_manager_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 13 17:46:38 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm cathode_manager -w -dir netgen/synthesis -ofmt vhdl -sim cathode_manager.ngc cathode_manager_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: cathode_manager.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\synthesis\cathode_manager_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: cathode_manager
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

entity cathode_manager is
  port (
    cathodes : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    value : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    counter : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    dots : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end cathode_manager;

architecture Structure of cathode_manager is
  signal cathodes_0_OBUF_8 : STD_LOGIC; 
  signal cathodes_1_OBUF_9 : STD_LOGIC; 
  signal cathodes_2_OBUF_10 : STD_LOGIC; 
  signal cathodes_3_OBUF_11 : STD_LOGIC; 
  signal cathodes_4_OBUF_12 : STD_LOGIC; 
  signal cathodes_5_OBUF_13 : STD_LOGIC; 
  signal cathodes_6_OBUF_14 : STD_LOGIC; 
  signal cathodes_7_OBUF_15 : STD_LOGIC; 
  signal counter_0_IBUF_18 : STD_LOGIC; 
  signal counter_1_IBUF_19 : STD_LOGIC; 
  signal dots_0_IBUF_24 : STD_LOGIC; 
  signal dots_1_IBUF_25 : STD_LOGIC; 
  signal dots_2_IBUF_26 : STD_LOGIC; 
  signal dots_3_IBUF_27 : STD_LOGIC; 
  signal gen_mux_0_inst_mux4_1_Mmux_X_3_28 : STD_LOGIC; 
  signal gen_mux_0_inst_mux4_1_Mmux_X_4_29 : STD_LOGIC; 
  signal gen_mux_1_inst_mux4_1_Mmux_X_3_30 : STD_LOGIC; 
  signal gen_mux_1_inst_mux4_1_Mmux_X_4_31 : STD_LOGIC; 
  signal gen_mux_2_inst_mux4_1_Mmux_X_3_32 : STD_LOGIC; 
  signal gen_mux_2_inst_mux4_1_Mmux_X_4_33 : STD_LOGIC; 
  signal gen_mux_3_inst_mux4_1_Mmux_X_3_34 : STD_LOGIC; 
  signal gen_mux_3_inst_mux4_1_Mmux_X_4_35 : STD_LOGIC; 
  signal inst_dots_Mmux_X_3_36 : STD_LOGIC; 
  signal inst_dots_Mmux_X_4_37 : STD_LOGIC; 
  signal value_0_IBUF_58 : STD_LOGIC; 
  signal value_10_IBUF_59 : STD_LOGIC; 
  signal value_11_IBUF_60 : STD_LOGIC; 
  signal value_12_IBUF_61 : STD_LOGIC; 
  signal value_13_IBUF_62 : STD_LOGIC; 
  signal value_14_IBUF_63 : STD_LOGIC; 
  signal value_15_IBUF_64 : STD_LOGIC; 
  signal value_1_IBUF_65 : STD_LOGIC; 
  signal value_2_IBUF_66 : STD_LOGIC; 
  signal value_3_IBUF_67 : STD_LOGIC; 
  signal value_4_IBUF_68 : STD_LOGIC; 
  signal value_5_IBUF_69 : STD_LOGIC; 
  signal value_6_IBUF_70 : STD_LOGIC; 
  signal value_7_IBUF_71 : STD_LOGIC; 
  signal value_8_IBUF_72 : STD_LOGIC; 
  signal value_9_IBUF_73 : STD_LOGIC; 
  signal nibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  gen_mux_2_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => gen_mux_2_inst_mux4_1_Mmux_X_4_33,
      I1 => gen_mux_2_inst_mux4_1_Mmux_X_3_32,
      S => counter_1_IBUF_19,
      O => nibble(2)
    );
  gen_mux_2_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_2_IBUF_66,
      I2 => value_6_IBUF_70,
      O => gen_mux_2_inst_mux4_1_Mmux_X_4_33
    );
  gen_mux_2_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_10_IBUF_59,
      I2 => value_14_IBUF_63,
      O => gen_mux_2_inst_mux4_1_Mmux_X_3_32
    );
  inst_dots_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => inst_dots_Mmux_X_4_37,
      I1 => inst_dots_Mmux_X_3_36,
      S => counter_1_IBUF_19,
      O => cathodes_7_OBUF_15
    );
  inst_dots_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => dots_0_IBUF_24,
      I2 => dots_1_IBUF_25,
      O => inst_dots_Mmux_X_4_37
    );
  inst_dots_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => dots_2_IBUF_26,
      I2 => dots_3_IBUF_27,
      O => inst_dots_Mmux_X_3_36
    );
  gen_mux_3_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => gen_mux_3_inst_mux4_1_Mmux_X_4_35,
      I1 => gen_mux_3_inst_mux4_1_Mmux_X_3_34,
      S => counter_1_IBUF_19,
      O => nibble(3)
    );
  gen_mux_3_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_3_IBUF_67,
      I2 => value_7_IBUF_71,
      O => gen_mux_3_inst_mux4_1_Mmux_X_4_35
    );
  gen_mux_3_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_11_IBUF_60,
      I2 => value_15_IBUF_64,
      O => gen_mux_3_inst_mux4_1_Mmux_X_3_34
    );
  gen_mux_1_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => gen_mux_1_inst_mux4_1_Mmux_X_4_31,
      I1 => gen_mux_1_inst_mux4_1_Mmux_X_3_30,
      S => counter_1_IBUF_19,
      O => nibble(1)
    );
  gen_mux_1_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_1_IBUF_65,
      I2 => value_5_IBUF_69,
      O => gen_mux_1_inst_mux4_1_Mmux_X_4_31
    );
  gen_mux_1_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_9_IBUF_73,
      I2 => value_13_IBUF_62,
      O => gen_mux_1_inst_mux4_1_Mmux_X_3_30
    );
  gen_mux_0_inst_mux4_1_Mmux_X_2_f5 : MUXF5
    port map (
      I0 => gen_mux_0_inst_mux4_1_Mmux_X_4_29,
      I1 => gen_mux_0_inst_mux4_1_Mmux_X_3_28,
      S => counter_1_IBUF_19,
      O => nibble(0)
    );
  gen_mux_0_inst_mux4_1_Mmux_X_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_0_IBUF_58,
      I2 => value_4_IBUF_68,
      O => gen_mux_0_inst_mux4_1_Mmux_X_4_29
    );
  gen_mux_0_inst_mux4_1_Mmux_X_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => counter_0_IBUF_18,
      I1 => value_8_IBUF_72,
      I2 => value_12_IBUF_61,
      O => gen_mux_0_inst_mux4_1_Mmux_X_3_28
    );
  inst_cathode_encoder_Mrom_cathodes21 : LUT4
    generic map(
      INIT => X"FB31"
    )
    port map (
      I0 => nibble(2),
      I1 => nibble(0),
      I2 => nibble(1),
      I3 => nibble(3),
      O => cathodes_2_OBUF_10
    );
  inst_cathode_encoder_Mrom_cathodes111 : LUT4
    generic map(
      INIT => X"E6EF"
    )
    port map (
      I0 => nibble(2),
      I1 => nibble(3),
      I2 => nibble(1),
      I3 => nibble(0),
      O => cathodes_1_OBUF_9
    );
  inst_cathode_encoder_Mrom_cathodes41 : LUT4
    generic map(
      INIT => X"76F7"
    )
    port map (
      I0 => nibble(3),
      I1 => nibble(2),
      I2 => nibble(0),
      I3 => nibble(1),
      O => cathodes_4_OBUF_12
    );
  inst_cathode_encoder_Mrom_cathodes11 : LUT4
    generic map(
      INIT => X"F7DA"
    )
    port map (
      I0 => nibble(2),
      I1 => nibble(0),
      I2 => nibble(3),
      I3 => nibble(1),
      O => cathodes_0_OBUF_8
    );
  inst_cathode_encoder_Mrom_cathodes51 : LUT4
    generic map(
      INIT => X"297F"
    )
    port map (
      I0 => nibble(0),
      I1 => nibble(3),
      I2 => nibble(1),
      I3 => nibble(2),
      O => cathodes_5_OBUF_13
    );
  inst_cathode_encoder_Mrom_cathodes61 : LUT4
    generic map(
      INIT => X"BF79"
    )
    port map (
      I0 => nibble(2),
      I1 => nibble(0),
      I2 => nibble(3),
      I3 => nibble(1),
      O => cathodes_6_OBUF_14
    );
  inst_cathode_encoder_Mrom_cathodes31 : LUT4
    generic map(
      INIT => X"67F9"
    )
    port map (
      I0 => nibble(2),
      I1 => nibble(0),
      I2 => nibble(3),
      I3 => nibble(1),
      O => cathodes_3_OBUF_11
    );
  value_15_IBUF : IBUF
    port map (
      I => value(15),
      O => value_15_IBUF_64
    );
  value_14_IBUF : IBUF
    port map (
      I => value(14),
      O => value_14_IBUF_63
    );
  value_13_IBUF : IBUF
    port map (
      I => value(13),
      O => value_13_IBUF_62
    );
  value_12_IBUF : IBUF
    port map (
      I => value(12),
      O => value_12_IBUF_61
    );
  value_11_IBUF : IBUF
    port map (
      I => value(11),
      O => value_11_IBUF_60
    );
  value_10_IBUF : IBUF
    port map (
      I => value(10),
      O => value_10_IBUF_59
    );
  value_9_IBUF : IBUF
    port map (
      I => value(9),
      O => value_9_IBUF_73
    );
  value_8_IBUF : IBUF
    port map (
      I => value(8),
      O => value_8_IBUF_72
    );
  value_7_IBUF : IBUF
    port map (
      I => value(7),
      O => value_7_IBUF_71
    );
  value_6_IBUF : IBUF
    port map (
      I => value(6),
      O => value_6_IBUF_70
    );
  value_5_IBUF : IBUF
    port map (
      I => value(5),
      O => value_5_IBUF_69
    );
  value_4_IBUF : IBUF
    port map (
      I => value(4),
      O => value_4_IBUF_68
    );
  value_3_IBUF : IBUF
    port map (
      I => value(3),
      O => value_3_IBUF_67
    );
  value_2_IBUF : IBUF
    port map (
      I => value(2),
      O => value_2_IBUF_66
    );
  value_1_IBUF : IBUF
    port map (
      I => value(1),
      O => value_1_IBUF_65
    );
  value_0_IBUF : IBUF
    port map (
      I => value(0),
      O => value_0_IBUF_58
    );
  counter_1_IBUF : IBUF
    port map (
      I => counter(1),
      O => counter_1_IBUF_19
    );
  counter_0_IBUF : IBUF
    port map (
      I => counter(0),
      O => counter_0_IBUF_18
    );
  dots_3_IBUF : IBUF
    port map (
      I => dots(3),
      O => dots_3_IBUF_27
    );
  dots_2_IBUF : IBUF
    port map (
      I => dots(2),
      O => dots_2_IBUF_26
    );
  dots_1_IBUF : IBUF
    port map (
      I => dots(1),
      O => dots_1_IBUF_25
    );
  dots_0_IBUF : IBUF
    port map (
      I => dots(0),
      O => dots_0_IBUF_24
    );
  cathodes_7_OBUF : OBUF
    port map (
      I => cathodes_7_OBUF_15,
      O => cathodes(7)
    );
  cathodes_6_OBUF : OBUF
    port map (
      I => cathodes_6_OBUF_14,
      O => cathodes(6)
    );
  cathodes_5_OBUF : OBUF
    port map (
      I => cathodes_5_OBUF_13,
      O => cathodes(5)
    );
  cathodes_4_OBUF : OBUF
    port map (
      I => cathodes_4_OBUF_12,
      O => cathodes(4)
    );
  cathodes_3_OBUF : OBUF
    port map (
      I => cathodes_3_OBUF_11,
      O => cathodes(3)
    );
  cathodes_2_OBUF : OBUF
    port map (
      I => cathodes_2_OBUF_10,
      O => cathodes(2)
    );
  cathodes_1_OBUF : OBUF
    port map (
      I => cathodes_1_OBUF_9,
      O => cathodes(1)
    );
  cathodes_0_OBUF : OBUF
    port map (
      I => cathodes_0_OBUF_8,
      O => cathodes(0)
    );

end Structure;

