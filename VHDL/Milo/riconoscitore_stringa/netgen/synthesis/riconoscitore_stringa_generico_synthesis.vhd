--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: riconoscitore_stringa_generico_synthesis.vhd
-- /___/   /\     Timestamp: Sat Jan 13 10:16:48 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm riconoscitore_stringa_generico -w -dir netgen/synthesis -ofmt vhdl -sim riconoscitore_stringa_generico.ngc riconoscitore_stringa_generico_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: riconoscitore_stringa_generico.ngc
-- Output file	: /media/sf_ASE/VHDL/Milo/riconoscitore_stringa/netgen/synthesis/riconoscitore_stringa_generico_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: riconoscitore_stringa_generico
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

entity riconoscitore_stringa_generico is
  port (
    clk : in STD_LOGIC := 'X'; 
    correct : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    bad : out STD_LOGIC; 
    data : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end riconoscitore_stringa_generico;

architecture Structure of riconoscitore_stringa_generico is
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal bad_OBUF_14 : STD_LOGIC; 
  signal clk_BUFGP_16 : STD_LOGIC; 
  signal correct_OBUF_18 : STD_LOGIC; 
  signal data_0_IBUF_31 : STD_LOGIC; 
  signal data_1_IBUF_32 : STD_LOGIC; 
  signal data_2_IBUF_33 : STD_LOGIC; 
  signal data_3_IBUF_34 : STD_LOGIC; 
  signal data_4_IBUF_35 : STD_LOGIC; 
  signal data_5_IBUF_36 : STD_LOGIC; 
  signal data_6_IBUF_37 : STD_LOGIC; 
  signal data_7_IBUF_38 : STD_LOGIC; 
  signal en_c : STD_LOGIC; 
  signal en_i : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_7_sc_in_inst_mux2_1_X_and0001 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_3_f5_58 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_59 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_f5_60 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_5_61 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_51_62 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_6_63 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_64 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_66 : STD_LOGIC; 
  signal r_s_current_state_cmp_eq0000 : STD_LOGIC; 
  signal r_s_current_state_cmp_eq0001 : STD_LOGIC; 
  signal r_s_data_mux0000 : STD_LOGIC; 
  signal reset_IBUF_72 : STD_LOGIC; 
  signal start_IBUF_74 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal input_x : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal r_s_n : STD_LOGIC_VECTOR ( 3 downto 3 ); 
begin
  XST_VCC : VCC
    port map (
      P => N1
    );
  counter_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => en_c,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => Result(0),
      Q => counter_count(0)
    );
  counter_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => en_c,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => Result(1),
      Q => counter_count(1)
    );
  counter_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => en_c,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => Result(2),
      Q => counter_count(2)
    );
  counter_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => en_c,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => Result(3),
      Q => counter_count(3)
    );
  r_s_Mmux_data_mux0000_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => data_7_IBUF_38,
      I1 => data_6_IBUF_37,
      I2 => counter_count(0),
      O => r_s_Mmux_data_mux0000_4_59
    );
  r_s_Mmux_data_mux0000_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => data_5_IBUF_36,
      I1 => data_4_IBUF_35,
      I2 => counter_count(0),
      O => r_s_Mmux_data_mux0000_5_61
    );
  r_s_Mmux_data_mux0000_3_f5 : MUXF5
    port map (
      I0 => r_s_Mmux_data_mux0000_5_61,
      I1 => r_s_Mmux_data_mux0000_4_59,
      S => counter_count(1),
      O => r_s_Mmux_data_mux0000_3_f5_58
    );
  r_s_Mmux_data_mux0000_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => data_3_IBUF_34,
      I1 => data_2_IBUF_33,
      I2 => counter_count(0),
      O => r_s_Mmux_data_mux0000_51_62
    );
  r_s_Mmux_data_mux0000_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => data_1_IBUF_32,
      I1 => data_0_IBUF_31,
      I2 => counter_count(0),
      O => r_s_Mmux_data_mux0000_6_63
    );
  r_s_Mmux_data_mux0000_4_f5 : MUXF5
    port map (
      I0 => r_s_Mmux_data_mux0000_6_63,
      I1 => r_s_Mmux_data_mux0000_51_62,
      S => counter_count(1),
      O => r_s_Mmux_data_mux0000_4_f5_60
    );
  r_s_Mmux_data_mux0000_2_f6 : MUXF6
    port map (
      I0 => r_s_Mmux_data_mux0000_4_f5_60,
      I1 => r_s_Mmux_data_mux0000_3_f5_58,
      S => counter_count(2),
      O => r_s_data_mux0000
    );
  r_s_n_3 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => N1,
      G => r_s_current_state_cmp_eq0001,
      Q => r_s_n(3)
    );
  r_s_current_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => r_s_current_state_FSM_FFd1_64,
      Q => r_s_current_state_FSM_FFd2_66
    );
  r_s_current_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => r_s_current_state_FSM_FFd1_In,
      Q => r_s_current_state_FSM_FFd1_64
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(0),
      Q => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(1),
      Q => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(2),
      Q => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(3),
      Q => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(4),
      Q => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(5),
      Q => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_x(6),
      Q => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_7_sc_in_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv,
      D => input_chain_gen_7_sc_in_inst_mux2_1_X_and0001,
      Q => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q
    );
  r_s_current_state_FSM_Out01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => r_s_current_state_FSM_FFd1_64,
      O => r_s_current_state_cmp_eq0001
    );
  counter_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => counter_count(1),
      I1 => counter_count(0),
      O => Result(1)
    );
  counter_Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => counter_count(2),
      I1 => counter_count(1),
      I2 => counter_count(0),
      O => Result(2)
    );
  counter_Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => counter_count(3),
      I1 => counter_count(1),
      I2 => counter_count(0),
      I3 => counter_count(2),
      O => Result(3)
    );
  r_s_en_i1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => r_s_current_state_FSM_FFd1_64,
      I2 => start_IBUF_74,
      O => en_i
    );
  r_s_correct1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => r_s_current_state_cmp_eq0000,
      O => correct_OBUF_18
    );
  r_s_bad1 : LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => r_s_current_state_cmp_eq0000,
      I1 => r_s_current_state_FSM_FFd2_66,
      I2 => r_s_data_mux0000,
      I3 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => bad_OBUF_14
    );
  r_s_current_state_cmp_eq00004_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => counter_count(2),
      I1 => counter_count(1),
      O => N2
    );
  input_chain_gen_6_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(6)
    );
  input_chain_gen_5_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(5)
    );
  input_chain_gen_4_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(4)
    );
  input_chain_gen_3_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"AACF"
    )
    port map (
      I0 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(3)
    );
  input_chain_gen_2_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"AACF"
    )
    port map (
      I0 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(2)
    );
  input_chain_gen_1_sc_ch_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"CCA0"
    )
    port map (
      I0 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => en_c,
      O => input_x(1)
    );
  r_s_current_state_FSM_FFd1_In21 : LUT4
    generic map(
      INIT => X"0084"
    )
    port map (
      I0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      I1 => r_s_current_state_FSM_FFd2_66,
      I2 => r_s_data_mux0000,
      I3 => N14,
      O => en_c
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_74
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_72
    );
  data_7_IBUF : IBUF
    port map (
      I => data(7),
      O => data_7_IBUF_38
    );
  data_6_IBUF : IBUF
    port map (
      I => data(6),
      O => data_6_IBUF_37
    );
  data_5_IBUF : IBUF
    port map (
      I => data(5),
      O => data_5_IBUF_36
    );
  data_4_IBUF : IBUF
    port map (
      I => data(4),
      O => data_4_IBUF_35
    );
  data_3_IBUF : IBUF
    port map (
      I => data(3),
      O => data_3_IBUF_34
    );
  data_2_IBUF : IBUF
    port map (
      I => data(2),
      O => data_2_IBUF_33
    );
  data_1_IBUF : IBUF
    port map (
      I => data(1),
      O => data_1_IBUF_32
    );
  data_0_IBUF : IBUF
    port map (
      I => data(0),
      O => data_0_IBUF_31
    );
  correct_OBUF : OBUF
    port map (
      I => correct_OBUF_18,
      O => correct
    );
  bad_OBUF : OBUF
    port map (
      I => bad_OBUF_14,
      O => bad
    );
  r_s_current_state_FSM_FFd1_In21_SW1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd1_64,
      I1 => start_IBUF_74,
      O => N6
    );
  r_s_current_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => N6,
      I2 => r_s_current_state_cmp_eq0000,
      I3 => N7,
      O => r_s_current_state_FSM_FFd1_In
    );
  input_chain_gen_0_sc_out_inst_mux2_1_X1 : LUT4
    generic map(
      INIT => X"CEC4"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => N9,
      I2 => r_s_current_state_cmp_eq0000,
      I3 => N10,
      O => input_x(0)
    );
  r_s_current_state_FSM_FFd1_In21_SW3 : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd2_66,
      I1 => r_s_current_state_FSM_FFd1_64,
      I2 => start_IBUF_74,
      I3 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => N9
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_16
    );
  reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_72,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_reset_n_inv
    );
  counter_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => counter_count(0),
      O => Result(0)
    );
  input_chain_gen_7_sc_in_inst_mux2_1_X_and00011 : MUXF5
    port map (
      I0 => N12,
      I1 => N13,
      S => r_s_current_state_FSM_FFd2_66,
      O => input_chain_gen_7_sc_in_inst_mux2_1_X_and0001
    );
  input_chain_gen_7_sc_in_inst_mux2_1_X_and00011_F : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => r_s_current_state_FSM_FFd1_64,
      I1 => start_IBUF_74,
      I2 => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => N12
    );
  input_chain_gen_7_sc_in_inst_mux2_1_X_and00011_G : LUT4
    generic map(
      INIT => X"AA28"
    )
    port map (
      I0 => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      I1 => r_s_data_mux0000,
      I2 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      I3 => r_s_current_state_cmp_eq0000,
      O => N13
    );
  r_s_current_state_cmp_eq00004 : LUT4_D
    generic map(
      INIT => X"0009"
    )
    port map (
      I0 => counter_count(3),
      I1 => r_s_n(3),
      I2 => counter_count(0),
      I3 => N2,
      LO => N14,
      O => r_s_current_state_cmp_eq0000
    );
  r_s_current_state_FSM_FFd1_In21_SW2 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      I1 => r_s_data_mux0000,
      LO => N7
    );
  r_s_current_state_FSM_FFd1_In21_SW4 : LUT4_L
    generic map(
      INIT => X"8BEE"
    )
    port map (
      I0 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      I1 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      I2 => en_i,
      I3 => r_s_data_mux0000,
      LO => N10
    );

end Structure;

