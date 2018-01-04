--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: booth_multiplier_translate.vhd
-- /___/   /\     Timestamp: Fri Nov 23 09:07:55 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm booth_multiplier -w -dir netgen/translate -ofmt vhdl -sim booth_multiplier.ngd booth_multiplier_translate.vhd 
-- Device	: 3s1200efg320-5
-- Input file	: booth_multiplier.ngd
-- Output file	: C:\Users\Mario\Desktop\rippleCarry\BootMultiplier\netgen\translate\booth_multiplier_translate.vhd
-- # of Entities	: 1
-- Design Name	: booth_multiplier
-- Xilinx	: C:\Xilinx\14.1\ISE_DS\ISE\
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity booth_multiplier is
  port (
    reset_n : in STD_LOGIC := 'X'; 
    stop : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    result : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    x : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    y : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end booth_multiplier;

architecture Structure of booth_multiplier is
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal add_sub_ripple_rca_carry_1_Q : STD_LOGIC; 
  signal add_sub_ripple_rca_carry_2_Q : STD_LOGIC; 
  signal add_sub_ripple_rca_carry_3_Q : STD_LOGIC; 
  signal add_sub_ripple_rca_carry_5_Q : STD_LOGIC; 
  signal add_sub_ripple_true_b_3_Q : STD_LOGIC; 
  signal add_sub_ripple_true_b_5_Q : STD_LOGIC; 
  signal add_sub_ripple_true_b_6_Q : STD_LOGIC; 
  signal add_sub_ripple_true_b_7_Q : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal count_up : STD_LOGIC; 
  signal counter_mod_N_reset : STD_LOGIC; 
  signal cu_current_FSM_Acst_FSM_inv : STD_LOGIC; 
  signal cu_current_FSM_FFd1_54 : STD_LOGIC; 
  signal cu_current_FSM_FFd1_In : STD_LOGIC; 
  signal cu_current_FSM_FFd2_56 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_In : STD_LOGIC; 
  signal cu_current_FSM_FFd2_In18_58 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_In39_59 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_1_60 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_61 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_62 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_1_63 : STD_LOGIC; 
  signal en_a : STD_LOGIC; 
  signal en_m : STD_LOGIC; 
  signal reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66 : STD_LOGIC; 
  signal reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68 : STD_LOGIC; 
  signal reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70 : STD_LOGIC; 
  signal reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72 : STD_LOGIC; 
  signal reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74 : STD_LOGIC; 
  signal reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1 : STD_LOGIC; 
  signal reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77 : STD_LOGIC; 
  signal reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79 : STD_LOGIC; 
  signal reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_81 : STD_LOGIC; 
  signal reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_91 : STD_LOGIC; 
  signal reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93 : STD_LOGIC; 
  signal reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94 : STD_LOGIC; 
  signal reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_96 : STD_LOGIC; 
  signal reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_98 : STD_LOGIC; 
  signal reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_100 : STD_LOGIC; 
  signal reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_102 : STD_LOGIC; 
  signal reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_104 : STD_LOGIC; 
  signal reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_106 : STD_LOGIC; 
  signal reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_ffd_q_108 : STD_LOGIC; 
  signal reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal reset_n_IBUF_111 : STD_LOGIC; 
  signal shift : STD_LOGIC; 
  signal start_IBUF_130 : STD_LOGIC; 
  signal stop_OBUF_132 : STD_LOGIC; 
  signal x_0_IBUF_141 : STD_LOGIC; 
  signal x_1_IBUF_142 : STD_LOGIC; 
  signal x_2_IBUF_143 : STD_LOGIC; 
  signal x_3_IBUF_144 : STD_LOGIC; 
  signal x_4_IBUF_145 : STD_LOGIC; 
  signal x_5_IBUF_146 : STD_LOGIC; 
  signal x_6_IBUF_147 : STD_LOGIC; 
  signal x_7_IBUF_148 : STD_LOGIC; 
  signal y_0_IBUF_157 : STD_LOGIC; 
  signal y_1_IBUF_158 : STD_LOGIC; 
  signal y_2_IBUF_159 : STD_LOGIC; 
  signal y_3_IBUF_160 : STD_LOGIC; 
  signal y_4_IBUF_161 : STD_LOGIC; 
  signal y_5_IBUF_162 : STD_LOGIC; 
  signal y_6_IBUF_163 : STD_LOGIC; 
  signal y_7_IBUF_164 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_In18_O : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_SW0_O : STD_LOGIC; 
  signal add_sub_ripple_rca_rca_5_fa_cout1_SW0_O : STD_LOGIC; 
  signal reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_O : STD_LOGIC; 
  signal reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW1_O : STD_LOGIC; 
  signal reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o_SW1_O : STD_LOGIC; 
  signal reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o_SW1_O : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Result_0 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal counter_mod_N_cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal reg_m_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  counter_mod_N_cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up,
      RST => counter_mod_N_reset,
      I => Result_0(0),
      O => counter_mod_N_cnt(0),
      SET => GND
    );
  counter_mod_N_cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up,
      RST => counter_mod_N_reset,
      I => Result_0(1),
      O => counter_mod_N_cnt(1),
      SET => GND
    );
  counter_mod_N_cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up,
      RST => counter_mod_N_reset,
      I => Result_0(2),
      O => counter_mod_N_cnt(2),
      SET => GND
    );
  cu_current_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => cu_current_FSM_FFd3_In_62,
      O => cu_current_FSM_FFd3_61,
      CE => VCC,
      SET => GND
    );
  cu_current_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => cu_current_FSM_FFd1_In,
      O => cu_current_FSM_FFd1_54,
      CE => VCC,
      SET => GND
    );
  cu_current_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => cu_current_FSM_FFd2_In,
      O => cu_current_FSM_FFd2_56,
      CE => VCC,
      SET => GND
    );
  reg_m_reg_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_7_IBUF_164,
      O => reg_m_reg(7),
      SET => GND
    );
  reg_m_reg_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_6_IBUF_163,
      O => reg_m_reg(6),
      SET => GND
    );
  reg_m_reg_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_5_IBUF_162,
      O => reg_m_reg(5),
      SET => GND
    );
  reg_m_reg_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_4_IBUF_161,
      O => reg_m_reg(4),
      SET => GND
    );
  reg_m_reg_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_3_IBUF_160,
      O => reg_m_reg(3),
      SET => GND
    );
  reg_m_reg_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_2_IBUF_159,
      O => reg_m_reg(2),
      SET => GND
    );
  reg_m_reg_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_1_IBUF_158,
      O => reg_m_reg(1),
      SET => GND
    );
  reg_m_reg_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_m,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => y_0_IBUF_157,
      O => reg_m_reg(0),
      SET => GND
    );
  reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      SET => GND
    );
  reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      SET => GND
    );
  reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      SET => GND
    );
  reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      SET => GND
    );
  reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      SET => GND
    );
  reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      SET => GND
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      SET => GND
    );
  reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_a,
      RST => counter_mod_N_reset,
      I => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_true_d,
      O => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_81,
      SET => GND
    );
  reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_91,
      SET => GND
    );
  reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      SET => GND
    );
  reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_96,
      SET => GND
    );
  reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_98,
      SET => GND
    );
  reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_100,
      SET => GND
    );
  reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_102,
      SET => GND
    );
  reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_104,
      SET => GND
    );
  reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_106,
      SET => GND
    );
  reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_ffd_q_108,
      SET => GND
    );
  reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv1 : X_LUT3
    generic map(
      INIT => X"75"
    )
    port map (
      ADR0 => reset_n_IBUF_111,
      ADR1 => cu_current_FSM_FFd2_56,
      ADR2 => cu_current_FSM_FFd3_61,
      O => counter_mod_N_reset
    );
  cu_current_FSM_Out01 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_54,
      ADR1 => cu_current_FSM_FFd2_56,
      ADR2 => cu_current_FSM_FFd3_61,
      O => stop_OBUF_132
    );
  counter_mod_N_Mcount_cnt_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => counter_mod_N_cnt(1),
      ADR1 => counter_mod_N_cnt(0),
      O => Result_0(1)
    );
  counter_mod_N_Mcount_cnt_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      ADR0 => counter_mod_N_cnt(1),
      ADR1 => counter_mod_N_cnt(2),
      ADR2 => counter_mod_N_cnt(0),
      O => Result_0(2)
    );
  cu_current_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"0220"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_56,
      ADR1 => cu_current_FSM_FFd3_61,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR3 => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_91,
      O => cu_current_FSM_FFd1_In
    );
  cu_current_FSM_Out11 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_56,
      ADR1 => cu_current_FSM_FFd3_61,
      O => en_m
    );
  add_sub_ripple_xor_inversion_output_7_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_m_reg(7),
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => add_sub_ripple_true_b_7_Q
    );
  cu_count_up21 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_1_60,
      ADR1 => cu_current_FSM_FFd3_1_63,
      O => shift
    );
  cu_count_up1 : X_LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      ADR0 => shift,
      ADR1 => counter_mod_N_cnt(2),
      ADR2 => counter_mod_N_cnt(1),
      ADR3 => counter_mod_N_cnt(0),
      O => count_up
    );
  cu_current_FSM_FFd2_In39 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => counter_mod_N_cnt(0),
      ADR1 => counter_mod_N_cnt(1),
      ADR2 => counter_mod_N_cnt(2),
      ADR3 => cu_current_FSM_FFd2_56,
      O => cu_current_FSM_FFd2_In39_59
    );
  cu_current_FSM_FFd3_In : X_LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => N7,
      ADR2 => cu_current_FSM_FFd1_54,
      O => cu_current_FSM_FFd3_In_62
    );
  add_sub_ripple_xor_inversion_output_3_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_m_reg(3),
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      O => add_sub_ripple_true_b_3_Q
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_81,
      ADR1 => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      ADR2 => shift,
      ADR3 => N21,
      O => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_true_d
    );
  reset_n_IBUF : X_BUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_111
    );
  start_IBUF : X_BUF
    port map (
      I => start,
      O => start_IBUF_130
    );
  x_7_IBUF : X_BUF
    port map (
      I => x(7),
      O => x_7_IBUF_148
    );
  x_6_IBUF : X_BUF
    port map (
      I => x(6),
      O => x_6_IBUF_147
    );
  x_5_IBUF : X_BUF
    port map (
      I => x(5),
      O => x_5_IBUF_146
    );
  x_4_IBUF : X_BUF
    port map (
      I => x(4),
      O => x_4_IBUF_145
    );
  x_3_IBUF : X_BUF
    port map (
      I => x(3),
      O => x_3_IBUF_144
    );
  x_2_IBUF : X_BUF
    port map (
      I => x(2),
      O => x_2_IBUF_143
    );
  x_1_IBUF : X_BUF
    port map (
      I => x(1),
      O => x_1_IBUF_142
    );
  x_0_IBUF : X_BUF
    port map (
      I => x(0),
      O => x_0_IBUF_141
    );
  y_7_IBUF : X_BUF
    port map (
      I => y(7),
      O => y_7_IBUF_164
    );
  y_6_IBUF : X_BUF
    port map (
      I => y(6),
      O => y_6_IBUF_163
    );
  y_5_IBUF : X_BUF
    port map (
      I => y(5),
      O => y_5_IBUF_162
    );
  y_4_IBUF : X_BUF
    port map (
      I => y(4),
      O => y_4_IBUF_161
    );
  y_3_IBUF : X_BUF
    port map (
      I => y(3),
      O => y_3_IBUF_160
    );
  y_2_IBUF : X_BUF
    port map (
      I => y(2),
      O => y_2_IBUF_159
    );
  y_1_IBUF : X_BUF
    port map (
      I => y(1),
      O => y_1_IBUF_158
    );
  y_0_IBUF : X_BUF
    port map (
      I => y(0),
      O => y_0_IBUF_157
    );
  add_sub_ripple_rca_rca_6_fa_cout1_SW0 : X_LUT4
    generic map(
      INIT => X"1230"
    )
    port map (
      ADR0 => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      ADR1 => shift,
      ADR2 => add_sub_ripple_true_b_7_Q,
      ADR3 => N76,
      O => N23
    );
  add_sub_ripple_rca_rca_4_fa_cout1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => N26,
      ADR1 => N27,
      ADR2 => add_sub_ripple_rca_carry_3_Q,
      O => add_sub_ripple_rca_carry_5_Q
    );
  add_sub_ripple_rca_rca_5_fa_cout1_SW1 : X_LUT4
    generic map(
      INIT => X"01EF"
    )
    port map (
      ADR0 => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      ADR1 => add_sub_ripple_true_b_5_Q,
      ADR2 => N23,
      ADR3 => N79,
      O => N35
    );
  reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"A599"
    )
    port map (
      ADR0 => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_81,
      ADR1 => N34,
      ADR2 => N35,
      ADR3 => add_sub_ripple_rca_carry_5_Q,
      O => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_true_d
    );
  add_sub_ripple_rca_rca_2_fa_cout1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => add_sub_ripple_rca_carry_1_Q,
      ADR1 => N46,
      ADR2 => N47,
      O => add_sub_ripple_rca_carry_3_Q
    );
  reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_mux_o_SW0 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR2 => reg_m_reg(5),
      O => N19
    );
  reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o_SW0 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR2 => reg_m_reg(4),
      O => N17
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      ADR0 => reg_m_reg(6),
      ADR1 => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      ADR2 => add_sub_ripple_true_b_5_Q,
      ADR3 => N26,
      O => N49
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      ADR0 => reg_m_reg(6),
      ADR1 => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      ADR2 => N77,
      ADR3 => N27,
      O => N50
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW0 : X_MUX2
    port map (
      IA => N52,
      IB => N53,
      SEL => reg_m_reg(2),
      O => N46
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW0_F : X_LUT4
    generic map(
      INIT => X"DC80"
    )
    port map (
      ADR0 => reg_m_reg(1),
      ADR1 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      ADR2 => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N52
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW0_G : X_LUT4
    generic map(
      INIT => X"40F8"
    )
    port map (
      ADR0 => reg_m_reg(1),
      ADR1 => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      ADR2 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N53
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW1 : X_MUX2
    port map (
      IA => N54,
      IB => N55,
      SEL => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      O => N47
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW1_F : X_LUT4
    generic map(
      INIT => X"71E8"
    )
    port map (
      ADR0 => reg_m_reg(2),
      ADR1 => reg_m_reg(1),
      ADR2 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N54
    );
  add_sub_ripple_rca_rca_2_fa_cout1_SW0_SW1_G : X_LUT3
    generic map(
      INIT => X"DE"
    )
    port map (
      ADR0 => reg_m_reg(2),
      ADR1 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N55
    );
  cu_current_FSM_FFd2_In47 : X_LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => cu_current_FSM_FFd2_In39_59,
      ADR2 => cu_current_FSM_FFd1_54,
      ADR3 => cu_current_FSM_FFd2_In18_58,
      O => cu_current_FSM_FFd2_In
    );
  reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_mux_o : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      ADR1 => shift,
      ADR2 => reg_m_reg(0),
      ADR3 => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      O => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_true_d
    );
  cu_current_FSM_Out61 : X_LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_54,
      ADR1 => cu_current_FSM_FFd3_61,
      ADR2 => cu_current_FSM_FFd2_56,
      O => en_a
    );
  reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => cu_current_FSM_FFd2_56,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      O => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_7_IBUF_148,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      O => reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_6_IBUF_147,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_ffd_q_108,
      O => reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_5_IBUF_146,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_106,
      O => reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_4_IBUF_145,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_104,
      O => reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_3_IBUF_144,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_102,
      O => reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_2_IBUF_143,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_100,
      O => reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_1_IBUF_142,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_98,
      O => reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_true_d
    );
  reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_61,
      ADR1 => x_0_IBUF_141,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_96,
      O => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_true_d
    );
  add_sub_ripple_rca_rca_1_fa_cout1 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => reg_m_reg(1),
      ADR1 => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR3 => N78,
      O => add_sub_ripple_rca_carry_2_Q
    );
  reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW0 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => reg_m_reg(1),
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR2 => N60,
      O => N62
    );
  reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_56,
      ADR1 => N62,
      ADR2 => cu_current_FSM_FFd3_61,
      ADR3 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      O => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_true_d
    );
  reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o : X_LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      ADR0 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      ADR1 => cu_current_FSM_FFd2_56,
      ADR2 => cu_current_FSM_FFd3_61,
      ADR3 => N64,
      O => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_true_d
    );
  reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o : X_LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      ADR0 => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      ADR1 => cu_current_FSM_FFd2_56,
      ADR2 => cu_current_FSM_FFd3_61,
      ADR3 => N66,
      O => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_true_d
    );
  cu_current_FSM_FFd3_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => cu_current_FSM_FFd3_In_62,
      O => cu_current_FSM_FFd3_1_63,
      CE => VCC,
      SET => GND
    );
  cu_current_FSM_FFd2_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => cu_current_FSM_FFd2_In,
      O => cu_current_FSM_FFd2_1_60,
      CE => VCC,
      SET => GND
    );
  reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => cu_current_FSM_FFd3_61,
      RST => cu_current_FSM_Acst_FSM_inv,
      I => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_true_d,
      O => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      SET => GND
    );
  reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_mux_o : X_MUX2
    port map (
      IA => N68,
      IB => N69,
      SEL => add_sub_ripple_rca_carry_3_Q,
      O => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_true_d
    );
  reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_mux_o_F : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => N26,
      ADR1 => shift,
      ADR2 => N19,
      ADR3 => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      O => N68
    );
  reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_mux_o_G : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => N27,
      ADR1 => shift,
      ADR2 => N19,
      ADR3 => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      O => N69
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW1 : X_MUX2
    port map (
      IA => N70,
      IB => N71,
      SEL => reg_m_reg(4),
      O => N27
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW1_F : X_LUT4
    generic map(
      INIT => X"EFA8"
    )
    port map (
      ADR0 => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      ADR1 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      ADR2 => reg_m_reg(3),
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N70
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW1_G : X_LUT4
    generic map(
      INIT => X"8AFE"
    )
    port map (
      ADR0 => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      ADR1 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      ADR2 => reg_m_reg(3),
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => N71
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW0 : X_MUX2
    port map (
      IA => N72,
      IB => N73,
      SEL => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      O => N26
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW0_F : X_LUT4
    generic map(
      INIT => X"4200"
    )
    port map (
      ADR0 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      ADR1 => reg_m_reg(3),
      ADR2 => reg_m_reg(4),
      ADR3 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      O => N72
    );
  add_sub_ripple_rca_rca_3_fa_cout1_SW0_G : X_LUT4
    generic map(
      INIT => X"7E66"
    )
    port map (
      ADR0 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      ADR1 => reg_m_reg(4),
      ADR2 => reg_m_reg(3),
      ADR3 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      O => N73
    );
  reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv1_INV_0 : X_INV
    port map (
      I => reset_n_IBUF_111,
      O => cu_current_FSM_Acst_FSM_inv
    );
  counter_mod_N_Mcount_cnt_xor_0_11_INV_0 : X_INV
    port map (
      I => counter_mod_N_cnt(0),
      O => Result_0(0)
    );
  reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o11 : X_LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      ADR0 => N17,
      ADR1 => add_sub_ripple_rca_carry_3_Q,
      ADR2 => add_sub_ripple_true_b_3_Q,
      ADR3 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      O => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1
    );
  reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1_f5 : X_MUX2
    port map (
      IA => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1,
      IB => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      SEL => shift,
      O => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_true_d
    );
  cu_current_FSM_FFd2_In18_LUT4_L_BUF : X_BUF
    port map (
      I => cu_current_FSM_FFd2_In18_O,
      O => cu_current_FSM_FFd2_In18_58
    );
  cu_current_FSM_FFd2_In18 : X_LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      ADR0 => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_91,
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR2 => cu_current_FSM_FFd2_56,
      ADR3 => cu_current_FSM_FFd3_61,
      O => cu_current_FSM_FFd2_In18_O
    );
  cu_current_FSM_FFd3_In_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => cu_current_FSM_FFd3_In_SW0_O,
      O => N7
    );
  cu_current_FSM_FFd3_In_SW0 : X_LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_56,
      ADR1 => reg_q_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_91,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR3 => start_IBUF_130,
      O => cu_current_FSM_FFd3_In_SW0_O
    );
  add_sub_ripple_xor_inversion_output_6_1_LUT2_D_BUF : X_BUF
    port map (
      I => add_sub_ripple_true_b_6_Q,
      O => N76
    );
  add_sub_ripple_xor_inversion_output_6_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_m_reg(6),
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      O => add_sub_ripple_true_b_6_Q
    );
  add_sub_ripple_xor_inversion_output_5_1_LUT2_D_BUF : X_BUF
    port map (
      I => add_sub_ripple_true_b_5_Q,
      O => N77
    );
  add_sub_ripple_xor_inversion_output_5_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_m_reg(5),
      ADR1 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => add_sub_ripple_true_b_5_Q
    );
  add_sub_ripple_rca_rca_0_fa_cout1_LUT3_D_BUF : X_BUF
    port map (
      I => add_sub_ripple_rca_carry_1_Q,
      O => N78
    );
  add_sub_ripple_rca_rca_0_fa_cout1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => reg_m_reg(0),
      ADR1 => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_1_94,
      O => add_sub_ripple_rca_carry_1_Q
    );
  add_sub_ripple_rca_rca_6_fa_cout1_SW1_LUT4_D_BUF : X_BUF
    port map (
      I => N24,
      O => N79
    );
  add_sub_ripple_rca_rca_6_fa_cout1_SW1 : X_LUT4
    generic map(
      INIT => X"0312"
    )
    port map (
      ADR0 => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      ADR1 => shift,
      ADR2 => add_sub_ripple_true_b_7_Q,
      ADR3 => add_sub_ripple_true_b_6_Q,
      O => N24
    );
  add_sub_ripple_rca_rca_5_fa_cout1_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => add_sub_ripple_rca_rca_5_fa_cout1_SW0_O,
      O => N34
    );
  add_sub_ripple_rca_rca_5_fa_cout1_SW0 : X_LUT4
    generic map(
      INIT => X"078F"
    )
    port map (
      ADR0 => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      ADR1 => add_sub_ripple_true_b_5_Q,
      ADR2 => N23,
      ADR3 => N24,
      O => add_sub_ripple_rca_rca_5_fa_cout1_SW0_O
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_O,
      O => N21
    );
  reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0 : X_LUT4
    generic map(
      INIT => X"665A"
    )
    port map (
      ADR0 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR1 => N50,
      ADR2 => N49,
      ADR3 => add_sub_ripple_rca_carry_3_Q,
      O => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_mux_o_SW0_O
    );
  reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW1_O,
      O => N60
    );
  reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW1 : X_LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      ADR0 => reg_m_reg(0),
      ADR1 => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      ADR2 => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      ADR3 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      O => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_mux_o_SW1_O
    );
  reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o_SW1_O,
      O => N64
    );
  reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o_SW1 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      ADR1 => reg_m_reg(2),
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR3 => add_sub_ripple_rca_carry_2_Q,
      O => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_mux_o_SW1_O
    );
  reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o_SW1_O,
      O => N66
    );
  reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o_SW1 : X_LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      ADR0 => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      ADR1 => reg_m_reg(3),
      ADR2 => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      ADR3 => add_sub_ripple_rca_carry_3_Q,
      O => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_mux_o_SW1_O
    );
  clock_BUFGP_BUFG : X_CKBUF
    port map (
      I => clock_BUFGP_IBUFG_2,
      O => clock_BUFGP
    );
  clock_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clock,
      O => clock_BUFGP_IBUFG_2
    );
  result_0_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_93,
      O => result(0)
    );
  result_10_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_70,
      O => result(10)
    );
  result_11_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_72,
      O => result(11)
    );
  result_12_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_74,
      O => result(12)
    );
  result_13_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_77,
      O => result(13)
    );
  result_14_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_79,
      O => result(14)
    );
  result_15_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_81,
      O => result(15)
    );
  result_1_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_96,
      O => result(1)
    );
  result_2_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_98,
      O => result(2)
    );
  result_3_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_100,
      O => result(3)
    );
  result_4_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_102,
      O => result(4)
    );
  result_5_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_104,
      O => result(5)
    );
  result_6_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_106,
      O => result(6)
    );
  result_7_OBUF : X_OBUF
    port map (
      I => reg_q_shift_reg_8_shift_reg_right_ffd_with_mux_ffd_q_108,
      O => result(7)
    );
  result_8_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_66,
      O => result(8)
    );
  result_9_OBUF : X_OBUF
    port map (
      I => reg_a_shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_68,
      O => result(9)
    );
  stop_OBUF : X_OBUF
    port map (
      I => stop_OBUF_132,
      O => stop
    );
  NlwBlock_booth_multiplier_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_booth_multiplier_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

