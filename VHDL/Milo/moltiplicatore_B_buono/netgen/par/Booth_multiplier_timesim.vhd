--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Booth_multiplier_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan  4 14:05:16 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Booth_multiplier.pcf -rpw 100 -tpw 0 -ar Structure -tm Booth_multiplier -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Booth_multiplier.ncd Booth_multiplier_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Booth_multiplier.ncd
-- Output file	: /media/sf_ASE/VHDL/Milo/moltiplicatore_B_buono/netgen/par/Booth_multiplier_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Booth_multiplier
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Booth_multiplier is
  port (
    clk : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    en_i : out STD_LOGIC; 
    fin : out STD_LOGIC_VECTOR ( 0 downto 0 ); 
    product : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    mul1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    mul2 : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Booth_multiplier;

architecture Structure of Booth_multiplier is
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_618 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal reset_IBUF_620 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_628 : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_3_IBUF_637 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N68_0 : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_645 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_649 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_4_IBUF_667 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N37_0 : STD_LOGIC; 
  signal N62_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal mul2_7_IBUF_675 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal mul2_5_IBUF_679 : STD_LOGIC; 
  signal mul2_0_IBUF_681 : STD_LOGIC; 
  signal mul2_1_IBUF_682 : STD_LOGIC; 
  signal mul2_2_IBUF_683 : STD_LOGIC; 
  signal mul2_6_IBUF_684 : STD_LOGIC; 
  signal start_IBUF_687 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10_0 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_2_0 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal N27_0 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd12 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_6_Q : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N48_0 : STD_LOGIC; 
  signal N49_0 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N39_0 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O : STD_LOGIC; 
  signal N64_0 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N54_0 : STD_LOGIC; 
  signal N66_0 : STD_LOGIC; 
  signal N55_0 : STD_LOGIC; 
  signal operation_counter_hit_722 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_723 : STD_LOGIC; 
  signal cu_en_a_0_not0001_0 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X84_0 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_Q : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal prod1_q_7_DXMUX_754 : STD_LOGIC; 
  signal prod1_q_7_DYMUX_745 : STD_LOGIC; 
  signal prod1_q_7_SRINVNOT : STD_LOGIC; 
  signal prod1_q_7_CLKINV_742 : STD_LOGIC; 
  signal prod1_q_7_CEINV_741 : STD_LOGIC; 
  signal prod1_q_9_DXMUX_782 : STD_LOGIC; 
  signal prod1_q_9_DYMUX_773 : STD_LOGIC; 
  signal prod1_q_9_SRINVNOT : STD_LOGIC; 
  signal prod1_q_9_CLKINV_770 : STD_LOGIC; 
  signal prod1_q_9_CEINV_769 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_842 : STD_LOGIC; 
  signal N10_pack_2 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_824 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal m_q_1_DXMUX_893 : STD_LOGIC; 
  signal m_q_1_DYMUX_884 : STD_LOGIC; 
  signal m_q_1_SRINVNOT : STD_LOGIC; 
  signal m_q_1_CLKINV_881 : STD_LOGIC; 
  signal m_q_1_CEINV_880 : STD_LOGIC; 
  signal operation_counter_count_0_DXMUX_930 : STD_LOGIC; 
  signal operation_counter_count_0_DYMUX_921 : STD_LOGIC; 
  signal operation_counter_count_0_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_0_CLKINV_910 : STD_LOGIC; 
  signal operation_counter_count_0_CEINV_909 : STD_LOGIC; 
  signal m_q_3_DXMUX_958 : STD_LOGIC; 
  signal m_q_3_DYMUX_949 : STD_LOGIC; 
  signal m_q_3_SRINVNOT : STD_LOGIC; 
  signal m_q_3_CLKINV_946 : STD_LOGIC; 
  signal m_q_3_CEINV_945 : STD_LOGIC; 
  signal m_q_5_DXMUX_986 : STD_LOGIC; 
  signal m_q_5_DYMUX_977 : STD_LOGIC; 
  signal m_q_5_SRINVNOT : STD_LOGIC; 
  signal m_q_5_CLKINV_974 : STD_LOGIC; 
  signal m_q_5_CEINV_973 : STD_LOGIC; 
  signal prod1_q_11_DXMUX_1014 : STD_LOGIC; 
  signal prod1_q_11_DYMUX_1005 : STD_LOGIC; 
  signal prod1_q_11_SRINVNOT : STD_LOGIC; 
  signal prod1_q_11_CLKINV_1002 : STD_LOGIC; 
  signal prod1_q_11_CEINV_1001 : STD_LOGIC; 
  signal m_q_7_DXMUX_1042 : STD_LOGIC; 
  signal m_q_7_DYMUX_1033 : STD_LOGIC; 
  signal m_q_7_SRINVNOT : STD_LOGIC; 
  signal m_q_7_CLKINV_1030 : STD_LOGIC; 
  signal m_q_7_CEINV_1029 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1078 : STD_LOGIC; 
  signal N8_pack_2 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1060 : STD_LOGIC; 
  signal prod1_q_13_DXMUX_1105 : STD_LOGIC; 
  signal prod1_q_13_DYMUX_1096 : STD_LOGIC; 
  signal prod1_q_13_SRINVNOT : STD_LOGIC; 
  signal prod1_q_13_CLKINV_1093 : STD_LOGIC; 
  signal prod1_q_13_CEINV_1092 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1165 : STD_LOGIC; 
  signal N2_pack_2 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1147 : STD_LOGIC; 
  signal prod1_q_15_DXMUX_1192 : STD_LOGIC; 
  signal prod1_q_15_DYMUX_1183 : STD_LOGIC; 
  signal prod1_q_15_SRINVNOT : STD_LOGIC; 
  signal prod1_q_15_CLKINV_1180 : STD_LOGIC; 
  signal prod1_q_15_CEINV_1179 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1228 : STD_LOGIC; 
  signal N6_pack_2 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1210 : STD_LOGIC; 
  signal mul1_0_INBUF : STD_LOGIC; 
  signal mul1_1_INBUF : STD_LOGIC; 
  signal mul1_2_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal mul1_3_INBUF : STD_LOGIC; 
  signal mul2_0_INBUF : STD_LOGIC; 
  signal mul1_4_INBUF : STD_LOGIC; 
  signal mul2_1_INBUF : STD_LOGIC; 
  signal mul1_5_INBUF : STD_LOGIC; 
  signal mul2_2_INBUF : STD_LOGIC; 
  signal mul1_6_INBUF : STD_LOGIC; 
  signal mul2_3_INBUF : STD_LOGIC; 
  signal mul1_7_INBUF : STD_LOGIC; 
  signal mul2_4_INBUF : STD_LOGIC; 
  signal mul2_5_INBUF : STD_LOGIC; 
  signal mul2_6_INBUF : STD_LOGIC; 
  signal en_i_O : STD_LOGIC; 
  signal mul2_7_INBUF : STD_LOGIC; 
  signal fin_0_O : STD_LOGIC; 
  signal product_0_O : STD_LOGIC; 
  signal product_10_O : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal product_1_O : STD_LOGIC; 
  signal product_11_O : STD_LOGIC; 
  signal product_2_O : STD_LOGIC; 
  signal product_12_O : STD_LOGIC; 
  signal product_3_O : STD_LOGIC; 
  signal product_13_O : STD_LOGIC; 
  signal product_4_O : STD_LOGIC; 
  signal product_14_O : STD_LOGIC; 
  signal product_5_O : STD_LOGIC; 
  signal product_15_O : STD_LOGIC; 
  signal product_6_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal product_7_O : STD_LOGIC; 
  signal product_8_O : STD_LOGIC; 
  signal product_9_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6_F5MUX_1521 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6_BXINV_1514 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N42_F5MUX_1546 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N42_BXINV_1539 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1577 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1575 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1573 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1565 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_mux2_1_X1 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1557 : STD_LOGIC; 
  signal N43_F5MUX_1607 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N43_BXINV_1600 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1638 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1636 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1629 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1621 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1674 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1672 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1665 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X1_1663 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1656 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1709 : STD_LOGIC; 
  signal a_x_1_Q : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1693 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1744 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1726 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_6_pack_1 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N36_pack_1 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N40_pack_1 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd12_pack_2 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O_pack_1 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N33_pack_1 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N34_pack_1 : STD_LOGIC; 
  signal operation_counter_hit_DYMUX_1935 : STD_LOGIC; 
  signal operation_counter_hit_cmp_eq0000 : STD_LOGIC; 
  signal operation_counter_hit_CLKINV_1926 : STD_LOGIC; 
  signal operation_counter_hit_CEINV_1925 : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1975 : STD_LOGIC; 
  signal a_x_6_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1960 : STD_LOGIC; 
  signal a_x_5_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1950 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DXMUX_2017 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DYMUX_2001 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_CLKINV_1991 : STD_LOGIC; 
  signal cu_en_a_0_not0001 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_DYMUX_2043 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_CLKINV_2034 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_2_Q : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2077 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2068 : STD_LOGIC; 
  signal operation_counter_hit_and0000 : STD_LOGIC; 
  signal cu_en_q_0_DYMUX_2110 : STD_LOGIC; 
  signal cu_en_q_0_mux0001 : STD_LOGIC; 
  signal cu_en_q_0_CLKINVNOT : STD_LOGIC; 
  signal operation_counter_count_2_DYMUX_2141 : STD_LOGIC; 
  signal operation_counter_count_2_CLKINV_2131 : STD_LOGIC; 
  signal operation_counter_count_2_CEINV_2130 : STD_LOGIC; 
  signal cu_en_a_0_DXMUX_2175 : STD_LOGIC; 
  signal cu_en_a_0_mux0003_2172 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal cu_en_a_0_CLKINVNOT : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2207 : STD_LOGIC; 
  signal N4_pack_2 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2189 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2242 : STD_LOGIC; 
  signal a_x_7_Q : STD_LOGIC; 
  signal N52_pack_1 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2225 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DXMUX_2290 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DYMUX_2282 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_CLKINV_2279 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_Q : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2337 : STD_LOGIC; 
  signal N14_pack_2 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2319 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2372 : STD_LOGIC; 
  signal a_x_4_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_pack_1 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2354 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X84_2393 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2443 : STD_LOGIC; 
  signal N12_pack_2 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2425 : STD_LOGIC; 
  signal prod1_q_1_DXMUX_2470 : STD_LOGIC; 
  signal prod1_q_1_DYMUX_2461 : STD_LOGIC; 
  signal prod1_q_1_SRINVNOT : STD_LOGIC; 
  signal prod1_q_1_CLKINV_2458 : STD_LOGIC; 
  signal prod1_q_1_CEINV_2457 : STD_LOGIC; 
  signal prod1_q_3_DXMUX_2498 : STD_LOGIC; 
  signal prod1_q_3_DYMUX_2489 : STD_LOGIC; 
  signal prod1_q_3_SRINVNOT : STD_LOGIC; 
  signal prod1_q_3_CLKINV_2486 : STD_LOGIC; 
  signal prod1_q_3_CEINV_2485 : STD_LOGIC; 
  signal f_q_0_DYMUX_2515 : STD_LOGIC; 
  signal f_q_0_CLKINV_2512 : STD_LOGIC; 
  signal f_q_0_CEINV_2511 : STD_LOGIC; 
  signal prod1_q_5_DXMUX_2543 : STD_LOGIC; 
  signal prod1_q_5_DYMUX_2534 : STD_LOGIC; 
  signal prod1_q_5_SRINVNOT : STD_LOGIC; 
  signal prod1_q_5_CLKINV_2531 : STD_LOGIC; 
  signal prod1_q_5_CEINV_2530 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_847 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1233 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1083 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1170 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1582 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1643 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1679 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1714 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1749 : STD_LOGIC; 
  signal operation_counter_count_2_FFY_RSTAND_2147 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2212 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2247 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_FFY_SET : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2082 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2448 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2342 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2377 : STD_LOGIC; 
  signal f_q_0_FFY_RSTAND_2521 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_cu_en_a_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_cu_en_q_0_CLK : STD_LOGIC; 
  signal prod1_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cu_en_a : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cu_en_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal m_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal operation_counter_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal f_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal q_x : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  prod1_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DXMUX_754
    );
  prod1_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DYMUX_745
    );
  prod1_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_7_SRINVNOT
    );
  prod1_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_7_CLKINV_742
    );
  prod1_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_7_CEINV_741
    );
  prod1_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DXMUX_782
    );
  prod1_q_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DYMUX_773
    );
  prod1_q_9_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_9_SRINVNOT
    );
  prod1_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_9_CLKINV_770
    );
  prod1_q_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_9_CEINV_769
    );
  N31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  N31_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N30
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(4),
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_842
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10_pack_2,
      O => N10
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_824
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"0F33",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mul2_3_IBUF_637,
      ADR2 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_en_q(0),
      O => N10_pack_2
    );
  N68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68,
      O => N68_0
    );
  N68_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  gestore_shift_rca_carry_8_51_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"7722",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => m_q(2),
      O => N70
    );
  m_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_1_INBUF,
      O => m_q_1_DXMUX_893
    );
  m_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_0_INBUF,
      O => m_q_1_DYMUX_884
    );
  m_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => m_q_1_SRINVNOT
    );
  m_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_1_CLKINV_881
    );
  m_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_645,
      O => m_q_1_CEINV_880
    );
  operation_counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X2Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_count(0),
      O => operation_counter_count_0_DXMUX_930
    );
  operation_counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => operation_counter_count_0_DYMUX_921
    );
  operation_counter_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X2Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => operation_counter_count_0_SRINVNOT
    );
  operation_counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_0_CLKINV_910
    );
  operation_counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_649,
      O => operation_counter_count_0_CEINV_909
    );
  m_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_3_INBUF,
      O => m_q_3_DXMUX_958
    );
  m_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_2_INBUF,
      O => m_q_3_DYMUX_949
    );
  m_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => m_q_3_SRINVNOT
    );
  m_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_3_CLKINV_946
    );
  m_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_645,
      O => m_q_3_CEINV_945
    );
  m_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_5_INBUF,
      O => m_q_5_DXMUX_986
    );
  m_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_4_INBUF,
      O => m_q_5_DYMUX_977
    );
  m_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => m_q_5_SRINVNOT
    );
  m_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_5_CLKINV_974
    );
  m_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_645,
      O => m_q_5_CEINV_973
    );
  prod1_q_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DXMUX_1014
    );
  prod1_q_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DYMUX_1005
    );
  prod1_q_11_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_11_SRINVNOT
    );
  prod1_q_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_11_CLKINV_1002
    );
  prod1_q_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_11_CEINV_1001
    );
  m_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_7_INBUF,
      O => m_q_7_DXMUX_1042
    );
  m_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_6_INBUF,
      O => m_q_7_DYMUX_1033
    );
  m_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => m_q_7_SRINVNOT
    );
  m_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_7_CLKINV_1030
    );
  m_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_645,
      O => m_q_7_CEINV_1029
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(5),
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1078
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8_pack_2,
      O => N8
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1060
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"303F",
      LOC => "SLICE_X3Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_en_q(0),
      ADR3 => mul2_4_IBUF_667,
      O => N8_pack_2
    );
  prod1_q_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DXMUX_1105
    );
  prod1_q_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DYMUX_1096
    );
  prod1_q_13_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_13_SRINVNOT
    );
  prod1_q_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_13_CLKINV_1093
    );
  prod1_q_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_13_CEINV_1092
    );
  N37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37,
      O => N37_0
    );
  N37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N62,
      O => N62_0
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"2ED1",
      LOC => "SLICE_X2Y17"
    )
    port map (
      ADR0 => m_q(6),
      ADR1 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => N62
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(8),
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1165
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_2,
      O => N2
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1147
    );
  q_chain_gen_8_sc_in_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"05AF",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => VCC,
      ADR2 => mul2_7_IBUF_675,
      ADR3 => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      O => N2_pack_2
    );
  prod1_q_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DXMUX_1192
    );
  prod1_q_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DYMUX_1183
    );
  prod1_q_15_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_15_SRINVNOT
    );
  prod1_q_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_15_CLKINV_1180
    );
  prod1_q_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_15_CEINV_1179
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(6),
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1228
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6_pack_2,
      O => N6
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1210
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"0A5F",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => VCC,
      ADR2 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_5_IBUF_679,
      O => N6_pack_2
    );
  mul1_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(0),
      O => mul1_0_INBUF
    );
  mul1_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(1),
      O => mul1_1_INBUF
    );
  mul1_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(2),
      O => mul1_2_INBUF
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  mul1_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(3),
      O => mul1_3_INBUF
    );
  mul2_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(0),
      O => mul2_0_INBUF
    );
  mul2_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_0_INBUF,
      O => mul2_0_IBUF_681
    );
  mul1_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(4),
      O => mul1_4_INBUF
    );
  mul2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(1),
      O => mul2_1_INBUF
    );
  mul2_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_1_INBUF,
      O => mul2_1_IBUF_682
    );
  mul1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(5),
      O => mul1_5_INBUF
    );
  mul2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(2),
      O => mul2_2_INBUF
    );
  mul2_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_2_INBUF,
      O => mul2_2_IBUF_683
    );
  mul1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(6),
      O => mul1_6_INBUF
    );
  mul2_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(3),
      O => mul2_3_INBUF
    );
  mul2_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_3_INBUF,
      O => mul2_3_IBUF_637
    );
  mul1_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(7),
      O => mul1_7_INBUF
    );
  mul2_4_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(4),
      O => mul2_4_INBUF
    );
  mul2_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_4_INBUF,
      O => mul2_4_IBUF_667
    );
  mul2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(5),
      O => mul2_5_INBUF
    );
  mul2_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_5_INBUF,
      O => mul2_5_IBUF_679
    );
  mul2_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(6),
      O => mul2_6_INBUF
    );
  mul2_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_6_INBUF,
      O => mul2_6_IBUF_684
    );
  en_i_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => en_i_O,
      O => en_i
    );
  mul2_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(7),
      O => mul2_7_INBUF
    );
  mul2_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_7_INBUF,
      O => mul2_7_IBUF_675
    );
  fin_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => fin_0_O,
      O => fin(0)
    );
  product_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => product_0_O,
      O => product(0)
    );
  product_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => product_10_O,
      O => product(10)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_687
    );
  product_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => product_1_O,
      O => product(1)
    );
  product_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => product_11_O,
      O => product(11)
    );
  product_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => product_2_O,
      O => product(2)
    );
  product_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => product_12_O,
      O => product(12)
    );
  product_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => product_3_O,
      O => product(3)
    );
  product_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => product_13_O,
      O => product(13)
    );
  product_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => product_4_O,
      O => product(4)
    );
  product_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => product_14_O,
      O => product(14)
    );
  product_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => product_5_O,
      O => product(5)
    );
  product_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => product_15_O,
      O => product(15)
    );
  product_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => product_6_O,
      O => product(6)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_620
    );
  product_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => product_7_O,
      O => product(7)
    );
  product_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => product_8_O,
      O => product(8)
    );
  product_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => product_9_O,
      O => product(9)
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  gestore_shift_rca_carry_8_bdd6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6_F5MUX_1521,
      O => gestore_shift_rca_carry_8_bdd6
    );
  gestore_shift_rca_carry_8_bdd6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y19"
    )
    port map (
      IA => N78,
      IB => N79,
      SEL => gestore_shift_rca_carry_8_bdd6_BXINV_1514,
      O => gestore_shift_rca_carry_8_bdd6_F5MUX_1521
    );
  gestore_shift_rca_carry_8_bdd6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => gestore_shift_rca_carry_8_bdd6_BXINV_1514
    );
  gestore_shift_rca_carry_8_41_F : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X0Y19"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub_3_0,
      ADR2 => gestore_shift_b_add_sub_2_0,
      ADR3 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N78
    );
  gestore_shift_rca_carry_8_41_G : X_LUT4
    generic map(
      INIT => X"EEE8",
      LOC => "SLICE_X0Y19"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub_3_0,
      ADR2 => gestore_shift_b_add_sub_2_0,
      ADR3 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N79
    );
  N42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N42_F5MUX_1546,
      O => N42
    );
  N42_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y16"
    )
    port map (
      IA => N84,
      IB => N85,
      SEL => N42_BXINV_1539,
      O => N42_F5MUX_1546
    );
  N42_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N42_BXINV_1539
    );
  gestore_shift_rca_carry_8_31_SW0_F : X_LUT4
    generic map(
      INIT => X"0840",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => m_q(5),
      O => N84
    );
  gestore_shift_rca_carry_8_31_SW0_G : X_LUT4
    generic map(
      INIT => X"7E3C",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => m_q(5),
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N85
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1575,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1577
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y20"
    )
    port map (
      IA => a_chain_gen_2_sc_ch_inst_mux2_1_X1,
      IB => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1573,
      SEL => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1565,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1575
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_628,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1565
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1557
    );
  a_chain_gen_2_sc_ch_inst_mux2_1_X11 : X_LUT4
    generic map(
      INIT => X"C99C",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_rca_carry_8_bdd10_0,
      ADR3 => gestore_shift_b_add_sub_2_0,
      O => a_chain_gen_2_sc_ch_inst_mux2_1_X1
    );
  N43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N43_F5MUX_1607,
      O => N43
    );
  N43_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y14"
    )
    port map (
      IA => N82,
      IB => N83,
      SEL => N43_BXINV_1600,
      O => N43_F5MUX_1607
    );
  N43_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => m_q(5),
      O => N43_BXINV_1600
    );
  gestore_shift_rca_carry_8_31_SW1_F : X_LUT4
    generic map(
      INIT => X"FCD8",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N82
    );
  gestore_shift_rca_carry_8_31_SW1_G : X_LUT4
    generic map(
      INIT => X"CF4E",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N83
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1636,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1638
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y22"
    )
    port map (
      IA => N80,
      IB => N81,
      SEL => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1629,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1636
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1629
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1621
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"B8E2",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => N68_0,
      ADR2 => N27_0,
      ADR3 => m_q(3),
      O => N80
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1672,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1674
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => a_chain_gen_0_sc_out_inst_mux2_1_X1_1663,
      IB => a_chain_gen_0_sc_out_inst_mux2_1_X,
      SEL => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1665,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1672
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => m_q(0),
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1665
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1656
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd2_628,
      O => a_chain_gen_0_sc_out_inst_mux2_1_X1_1663
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_1_Q,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1709
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2,
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1693
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0906",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd12,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_en_a(0),
      ADR3 => m_q(1),
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(1),
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1744
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1726
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"05AF",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => VCC,
      ADR2 => mul2_0_IBUF_681,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2
    );
  N48_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  N48_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_6_pack_1,
      O => gestore_shift_b_add_sub_6_Q
    );
  gestore_shift_Mxor_b_add_sub_6_Result1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y15"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_6_pack_1
    );
  N49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N49,
      O => N49_0
    );
  N49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N36_pack_1,
      O => N36
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N36_pack_1
    );
  N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N40_pack_1,
      O => N40
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW1 : X_LUT4
    generic map(
      INIT => X"A521",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => m_q(7),
      ADR1 => cu_en_a(0),
      ADR2 => N62_0,
      ADR3 => cu_current_state_FSM_FFd2_628,
      O => N40_pack_1
    );
  gestore_shift_rca_carry_8_bdd10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10,
      O => gestore_shift_rca_carry_8_bdd10_0
    );
  gestore_shift_rca_carry_8_bdd10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd12_pack_2,
      O => gestore_shift_rca_carry_8_bdd12
    );
  gestore_shift_rca_carry_8_71 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(0),
      ADR3 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_carry_8_bdd12_pack_2
    );
  N39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N39,
      O => N39_0
    );
  N39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O_pack_1,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"9A95",
      LOC => "SLICE_X1Y17"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(6),
      ADR2 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O_pack_1
    );
  N54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N54,
      O => N54_0
    );
  N54_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33_pack_1,
      O => N33
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd2_628,
      O => N33_pack_1
    );
  N55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  N55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N34_pack_1,
      O => N34
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"E4B1",
      LOC => "SLICE_X3Y16"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_628,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_en_a(0),
      O => N34_pack_1
    );
  operation_counter_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_cmp_eq0000,
      O => operation_counter_hit_DYMUX_1935
    );
  operation_counter_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_hit_CLKINV_1926
    );
  operation_counter_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_and0000,
      O => operation_counter_hit_CEINV_1925
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_6_Q,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1975
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_5_Q,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1960
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1950
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X0Y14"
    )
    port map (
      ADR0 => N54_0,
      ADR1 => N55_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => VCC,
      O => a_x_5_Q
    );
  cu_current_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In,
      O => cu_current_state_FSM_FFd4_DXMUX_2017
    );
  cu_current_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_In,
      O => cu_current_state_FSM_FFd4_DYMUX_2001
    );
  cu_current_state_FSM_FFd4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => cu_current_state_FSM_FFd4_SRINVNOT
    );
  cu_current_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_CLKINV_1991
    );
  cu_current_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"CCEE",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_618,
      ADR1 => cu_current_state_FSM_FFd4_645,
      ADR2 => VCC,
      ADR3 => operation_counter_hit_722,
      O => cu_current_state_FSM_FFd3_In
    );
  cu_current_state_FSM_FFd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001,
      O => cu_en_a_0_not0001_0
    );
  cu_current_state_FSM_FFd5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd5_In,
      O => cu_current_state_FSM_FFd5_DYMUX_2043
    );
  cu_current_state_FSM_FFd5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd5_CLKINV_2034
    );
  cu_current_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => operation_counter_hit_722,
      ADR1 => start_IBUF_687,
      ADR2 => cu_current_state_FSM_FFd5_723,
      ADR3 => cu_current_state_FSM_FFd1_618,
      O => cu_current_state_FSM_FFd5_In
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_2_Q,
      O => gestore_shift_b_add_sub_2_0
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(0),
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2077
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2068
    );
  q_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_en_q(0),
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_x(0)
    );
  cu_en_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_q_0_mux0001,
      O => cu_en_q_0_DYMUX_2110
    );
  cu_en_q_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001_0,
      O => cu_en_q_0_CLKINVNOT
    );
  cu_en_q_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_628,
      ADR1 => cu_current_state_FSM_FFd1_618,
      ADR2 => cu_current_state_FSM_FFd4_645,
      ADR3 => cu_current_state_FSM_FFd3_649,
      O => cu_en_q_0_mux0001
    );
  operation_counter_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => operation_counter_count_2_DYMUX_2141
    );
  operation_counter_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_2_CLKINV_2131
    );
  operation_counter_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_649,
      O => operation_counter_count_2_CEINV_2130
    );
  cu_en_a_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_mux0003_2172,
      O => cu_en_a_0_DXMUX_2175
    );
  cu_en_a_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  cu_en_a_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001_0,
      O => cu_en_a_0_CLKINVNOT
    );
  cu_en_a_0_mux0003_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_628,
      ADR1 => cu_current_state_FSM_FFd1_618,
      ADR2 => VCC,
      ADR3 => cu_current_state_FSM_FFd4_645,
      O => N01_pack_1
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(7),
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2207
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4_pack_2,
      O => N4
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2189
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => mul2_6_IBUF_684,
      ADR1 => cu_en_q(0),
      ADR2 => VCC,
      ADR3 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => N4_pack_2
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_7_Q,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2242
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N52_pack_1,
      O => N52
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2225
    );
  gestore_shift_rca_carry_8_21_SW3 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N43,
      ADR2 => N40,
      ADR3 => N39_0,
      O => N52_pack_1
    );
  N66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  N66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N64,
      O => N64_0
    );
  gestore_shift_rca_carry_8_31_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => m_q(4),
      O => N64
    );
  cu_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_649,
      O => cu_current_state_FSM_FFd2_DXMUX_2290
    );
  cu_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_628,
      O => cu_current_state_FSM_FFd2_DYMUX_2282
    );
  cu_current_state_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => cu_current_state_FSM_FFd2_SRINVNOT
    );
  cu_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd2_CLKINV_2279
    );
  gestore_shift_b_add_sub_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_3_Q,
      O => gestore_shift_b_add_sub_3_0
    );
  gestore_shift_Mxor_b_add_sub_3_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X3Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => m_q(3),
      ADR2 => VCC,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => gestore_shift_b_add_sub_3_Q
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(2),
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2337
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N14_pack_2,
      O => N14
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2319
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => mul2_1_IBUF_682,
      O => N14_pack_2
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_4_Q,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2372
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_4_pack_1,
      O => gestore_shift_b_add_sub_4_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2354
    );
  gestore_shift_Mxor_b_add_sub_4_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X3Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => m_q(4),
      O => gestore_shift_b_add_sub_4_pack_1
    );
  N28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N28,
      O => N28_0
    );
  N28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_mux2_1_X84_2393,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X84_0
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X84 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_628,
      ADR1 => VCC,
      ADR2 => cu_en_a(0),
      ADR3 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X84_2393
    );
  N27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N27,
      O => N27_0
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N27
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(3),
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2443
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => N12_pack_2,
      O => N12
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2425
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => mul2_2_IBUF_683,
      ADR2 => VCC,
      ADR3 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N12_pack_2
    );
  prod1_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DXMUX_2470
    );
  prod1_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DYMUX_2461
    );
  prod1_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_1_SRINVNOT
    );
  prod1_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_1_CLKINV_2458
    );
  prod1_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_1_CEINV_2457
    );
  prod1_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DXMUX_2498
    );
  prod1_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DYMUX_2489
    );
  prod1_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_3_SRINVNOT
    );
  prod1_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_3_CLKINV_2486
    );
  prod1_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_3_CEINV_2485
    );
  f_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_722,
      O => f_q_0_DYMUX_2515
    );
  f_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => f_q_0_CLKINV_2512
    );
  f_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => f_q_0_CEINV_2511
    );
  prod1_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DXMUX_2543
    );
  prod1_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DYMUX_2534
    );
  prod1_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => prod1_q_5_SRINVNOT
    );
  prod1_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_5_CLKINV_2531
    );
  prod1_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => prod1_q_5_CEINV_2530
    );
  prod1_q_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DYMUX_745,
      CE => prod1_q_7_CEINV_741,
      CLK => prod1_q_7_CLKINV_742,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(6)
    );
  prod1_q_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DXMUX_754,
      CE => prod1_q_7_CEINV_741,
      CLK => prod1_q_7_CLKINV_742,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(7)
    );
  m_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      I => m_q_5_DYMUX_977,
      CE => m_q_5_CEINV_973,
      CLK => m_q_5_CLKINV_974,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(4)
    );
  m_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      I => m_q_5_DXMUX_986,
      CE => m_q_5_CEINV_973,
      CLK => m_q_5_CLKINV_974,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(5)
    );
  prod1_q_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y16",
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DYMUX_1005,
      CE => prod1_q_11_CEINV_1001,
      CLK => prod1_q_11_CLKINV_1002,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(10)
    );
  prod1_q_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y16",
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DXMUX_1014,
      CE => prod1_q_11_CEINV_1001,
      CLK => prod1_q_11_CLKINV_1002,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(11)
    );
  m_q_6 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => '0'
    )
    port map (
      I => m_q_7_DYMUX_1033,
      CE => m_q_7_CEINV_1029,
      CLK => m_q_7_CLKINV_1030,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(6)
    );
  m_q_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y14",
      INIT => '0'
    )
    port map (
      I => m_q_7_DXMUX_1042,
      CE => m_q_7_CEINV_1029,
      CLK => m_q_7_CLKINV_1030,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(7)
    );
  m_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => m_q_1_DYMUX_884,
      CE => m_q_1_CEINV_880,
      CLK => m_q_1_CLKINV_881,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(0)
    );
  m_q_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => m_q_1_DXMUX_893,
      CE => m_q_1_CEINV_880,
      CLK => m_q_1_CLKINV_881,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(1)
    );
  operation_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X2Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => operation_counter_count(1),
      ADR2 => operation_counter_count(0),
      ADR3 => VCC,
      O => Result(1)
    );
  operation_counter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DYMUX_921,
      CE => operation_counter_count_0_CEINV_909,
      CLK => operation_counter_count_0_CLKINV_910,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(1)
    );
  operation_counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y28",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DXMUX_930,
      CE => operation_counter_count_0_CEINV_909,
      CLK => operation_counter_count_0_CLKINV_910,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(0)
    );
  m_q_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y22",
      INIT => '0'
    )
    port map (
      I => m_q_3_DYMUX_949,
      CE => m_q_3_CEINV_945,
      CLK => m_q_3_CLKINV_946,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(2)
    );
  m_q_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y22",
      INIT => '0'
    )
    port map (
      I => m_q_3_DXMUX_958,
      CE => m_q_3_CEINV_945,
      CLK => m_q_3_CLKINV_946,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(3)
    );
  prod1_q_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y20",
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DYMUX_773,
      CE => prod1_q_9_CEINV_769,
      CLK => prod1_q_9_CLKINV_770,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(8)
    );
  prod1_q_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y20",
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DXMUX_782,
      CE => prod1_q_9_CEINV_769,
      CLK => prod1_q_9_CLKINV_770,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(9)
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"E2D1",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N31
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"AF05",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_628,
      ADR1 => VCC,
      ADR2 => N10,
      ADR3 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_x(4)
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_842,
      CE => VCC,
      CLK => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_824,
      SET => GND,
      RST => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_847,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_847
    );
  gestore_shift_rca_carry_8_51_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => m_q(2),
      O => N68
    );
  prod1_q_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DYMUX_1183,
      CE => prod1_q_15_CEINV_1179,
      CLK => prod1_q_15_CLKINV_1180,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(14)
    );
  prod1_q_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DXMUX_1192,
      CE => prod1_q_15_CEINV_1179,
      CLK => prod1_q_15_CLKINV_1180,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(15)
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C0F3",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N6,
      O => q_x(6)
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1228,
      CE => VCC,
      CLK => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1210,
      SET => GND,
      RST => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1233,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1233
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C0CF",
      LOC => "SLICE_X3Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => N8,
      O => q_x(5)
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1078,
      CE => VCC,
      CLK => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1060,
      SET => GND,
      RST => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1083,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1083
    );
  prod1_q_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DYMUX_1096,
      CE => prod1_q_13_CEINV_1092,
      CLK => prod1_q_13_CLKINV_1093,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(12)
    );
  prod1_q_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DXMUX_1105,
      CE => prod1_q_13_CEINV_1092,
      CLK => prod1_q_13_CLKINV_1093,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(13)
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"F099",
      LOC => "SLICE_X2Y17"
    )
    port map (
      ADR0 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_en_a(0),
      ADR2 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd2_628,
      O => N37
    );
  q_chain_gen_8_sc_in_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"8B8B",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => N2,
      ADR3 => VCC,
      O => q_x(8)
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1165,
      CE => VCC,
      CLK => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1147,
      SET => GND,
      RST => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1170,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1170
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1573
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1577,
      CE => VCC,
      CLK => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1557,
      SET => GND,
      RST => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1582,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1582
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"E2B8",
      LOC => "SLICE_X1Y22"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => N70_0,
      ADR2 => N27_0,
      ADR3 => m_q(3),
      O => N81
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y22",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1638,
      CE => VCC,
      CLK => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1621,
      SET => GND,
      RST => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1643,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1643
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"F099",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_en_a(0),
      ADR2 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd2_628,
      O => a_chain_gen_0_sc_out_inst_mux2_1_X
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y21",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1674,
      CE => VCC,
      CLK => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1656,
      SET => GND,
      RST => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1679,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1679
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O,
      O => a_x_1_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y18",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1709,
      CE => VCC,
      CLK => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1693,
      SET => GND,
      RST => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1714,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1714
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A0AF",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O,
      O => q_x(1)
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1744,
      CE => VCC,
      CLK => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1726,
      SET => GND,
      RST => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1749,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1749
    );
  gestore_shift_rca_carry_8_21_SW0 : X_LUT4
    generic map(
      INIT => X"ACCA",
      LOC => "SLICE_X0Y15"
    )
    port map (
      ADR0 => N36,
      ADR1 => N37_0,
      ADR2 => N42,
      ADR3 => gestore_shift_b_add_sub_6_Q,
      O => N48
    );
  gestore_shift_rca_carry_8_21_SW1 : X_LUT4
    generic map(
      INIT => X"EB28",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => N37_0,
      ADR1 => gestore_shift_b_add_sub_6_Q,
      ADR2 => N43,
      ADR3 => N36,
      O => N49
    );
  gestore_shift_rca_carry_8_21_SW2 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N39_0,
      ADR2 => N40,
      ADR3 => N42,
      O => N51
    );
  gestore_shift_rca_carry_8_61 : X_LUT4
    generic map(
      INIT => X"DE48",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => m_q(1),
      ADR1 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_rca_carry_8_bdd12,
      O => gestore_shift_rca_carry_8_bdd10
    );
  operation_counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6A6A",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => operation_counter_count(2),
      ADR1 => operation_counter_count(0),
      ADR2 => operation_counter_count(1),
      ADR3 => VCC,
      O => Result(2)
    );
  operation_counter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_2_DYMUX_2141,
      CE => operation_counter_count_2_CEINV_2130,
      CLK => operation_counter_count_2_CLKINV_2131,
      SET => GND,
      RST => operation_counter_count_2_FFY_RSTAND_2147,
      O => operation_counter_count(2)
    );
  operation_counter_count_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => operation_counter_count_2_FFY_RSTAND_2147
    );
  cu_en_a_0_mux0003 : X_LUT4
    generic map(
      INIT => X"F9F0",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => N01,
      ADR3 => cu_current_state_FSM_FFd3_649,
      O => cu_en_a_0_mux0003_2172
    );
  cu_en_a_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y22",
      INIT => '0'
    )
    port map (
      I => cu_en_a_0_DXMUX_2175,
      GE => VCC,
      CLK => NlwInverterSignal_cu_en_a_0_CLK,
      SET => GND,
      RST => GND,
      O => cu_en_a(0)
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A3A3",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => N4,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => VCC,
      O => q_x(7)
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2207,
      CE => VCC,
      CLK => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2189,
      SET => GND,
      RST => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2212,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2212
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X87 : X_LUT4
    generic map(
      INIT => X"FEAE",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_in_inst_mux2_1_X84_0,
      ADR1 => N51_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => N52,
      O => a_x_7_Q
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y16",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2242,
      CE => VCC,
      CLK => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2225,
      SET => GND,
      RST => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2247,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2247
    );
  cu_current_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_723,
      ADR1 => VCC,
      ADR2 => start_IBUF_687,
      ADR3 => VCC,
      O => cu_current_state_FSM_FFd4_In
    );
  cu_current_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X1Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DXMUX_2017,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_1991,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd4_645
    );
  cu_current_state_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => '1'
    )
    port map (
      I => cu_current_state_FSM_FFd5_DYMUX_2043,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd5_CLKINV_2034,
      SET => cu_current_state_FSM_FFd5_FFY_SET,
      RST => GND,
      O => cu_current_state_FSM_FFd5_723
    );
  cu_current_state_FSM_FFd5_FFY_SETOR : X_INV
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => cu_current_state_FSM_FFd5_FFY_SET
    );
  cu_en_a_0_not00011 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => start_IBUF_687,
      ADR2 => VCC,
      ADR3 => cu_current_state_FSM_FFd5_723,
      O => cu_en_a_0_not0001
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y18",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2077,
      CE => VCC,
      CLK => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2068,
      SET => GND,
      RST => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2082,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2082
    );
  gestore_shift_Mxor_b_add_sub_2_Result1 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => m_q(2),
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => gestore_shift_b_add_sub_2_Q
    );
  cu_en_q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X3Y23",
      INIT => '0'
    )
    port map (
      I => cu_en_q_0_DYMUX_2110,
      GE => VCC,
      CLK => NlwInverterSignal_cu_en_q_0_CLK,
      SET => GND,
      RST => GND,
      O => cu_en_q(0)
    );
  operation_counter_hit_and00001 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => reset_IBUF_620,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => cu_current_state_FSM_FFd3_649,
      O => operation_counter_hit_and0000
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0 : X_LUT4
    generic map(
      INIT => X"D00D",
      LOC => "SLICE_X1Y17"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => m_q(7),
      ADR3 => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O,
      O => N39
    );
  gestore_shift_rca_carry_8_31_SW2 : X_LUT4
    generic map(
      INIT => X"F690",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => m_q(5),
      ADR1 => N64_0,
      ADR2 => N34,
      ADR3 => N33,
      O => N54
    );
  gestore_shift_rca_carry_8_31_SW3 : X_LUT4
    generic map(
      INIT => X"D8E4",
      LOC => "SLICE_X3Y16"
    )
    port map (
      ADR0 => m_q(5),
      ADR1 => N33,
      ADR2 => N34,
      ADR3 => N66_0,
      O => N55
    );
  operation_counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X2Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => operation_counter_count(1),
      ADR2 => operation_counter_count(0),
      ADR3 => operation_counter_count(2),
      O => operation_counter_hit_cmp_eq0000
    );
  operation_counter_hit : X_FF
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => '0'
    )
    port map (
      I => operation_counter_hit_DYMUX_1935,
      CE => operation_counter_hit_CEINV_1925,
      CLK => operation_counter_hit_CLKINV_1926,
      SET => GND,
      RST => GND,
      O => operation_counter_hit_722
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1960,
      CE => VCC,
      CLK => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1950,
      SET => GND,
      RST => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X0Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N48_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => N49_0,
      O => a_x_6_Q
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y14",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1975,
      CE => VCC,
      CLK => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1950,
      SET => GND,
      RST => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  cu_current_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X1Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DYMUX_2001,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_1991,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd3_649
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ACA3",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_628,
      ADR3 => cu_en_a(0),
      O => N28
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"8B8B",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => N12,
      ADR3 => VCC,
      O => q_x(3)
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2443,
      CE => VCC,
      CLK => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2425,
      SET => GND,
      RST => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2448,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2448
    );
  prod1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DYMUX_2461,
      CE => prod1_q_1_CEINV_2457,
      CLK => prod1_q_1_CLKINV_2458,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(0)
    );
  prod1_q_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DXMUX_2470,
      CE => prod1_q_1_CEINV_2457,
      CLK => prod1_q_1_CLKINV_2458,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(1)
    );
  prod1_q_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DYMUX_2489,
      CE => prod1_q_3_CEINV_2485,
      CLK => prod1_q_3_CLKINV_2486,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(2)
    );
  gestore_shift_rca_carry_8_31_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"44EE",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(4),
      ADR2 => VCC,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N66
    );
  cu_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X2Y23",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DYMUX_2282,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_2279,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd1_618
    );
  cu_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X2Y23",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DXMUX_2290,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_2279,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd2_628
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"88BB",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_628,
      ADR2 => VCC,
      ADR3 => N14,
      O => q_x(2)
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2337,
      CE => VCC,
      CLK => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2319,
      SET => GND,
      RST => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2342,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2342
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"EB28",
      LOC => "SLICE_X3Y19"
    )
    port map (
      ADR0 => N31_0,
      ADR1 => gestore_shift_b_add_sub_4_Q,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => N30_0,
      O => a_x_4_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y19",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2372,
      CE => VCC,
      CLK => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2354,
      SET => GND,
      RST => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2377,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2377
    );
  prod1_q_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DXMUX_2498,
      CE => prod1_q_3_CEINV_2485,
      CLK => prod1_q_3_CLKINV_2486,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(3)
    );
  f_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      I => f_q_0_DYMUX_2515,
      CE => f_q_0_CEINV_2511,
      CLK => f_q_0_CLKINV_2512,
      SET => GND,
      RST => f_q_0_FFY_RSTAND_2521,
      O => f_q(0)
    );
  f_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_620,
      O => f_q_0_FFY_RSTAND_2521
    );
  prod1_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y21",
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DYMUX_2534,
      CE => prod1_q_5_CEINV_2530,
      CLK => prod1_q_5_CLKINV_2531,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(4)
    );
  prod1_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y21",
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DXMUX_2543,
      CE => prod1_q_5_CEINV_2530,
      CLK => prod1_q_5_CLKINV_2531,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(5)
    );
  en_i_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_618,
      O => en_i_O
    );
  fin_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => f_q(0),
      O => fin_0_O
    );
  product_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(0),
      O => product_0_O
    );
  product_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(10),
      O => product_10_O
    );
  product_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(1),
      O => product_1_O
    );
  product_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(11),
      O => product_11_O
    );
  product_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(2),
      O => product_2_O
    );
  product_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(12),
      O => product_12_O
    );
  product_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(3),
      O => product_3_O
    );
  product_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(13),
      O => product_13_O
    );
  product_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(4),
      O => product_4_O
    );
  product_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(14),
      O => product_14_O
    );
  product_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(5),
      O => product_5_O
    );
  product_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(15),
      O => product_15_O
    );
  product_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(6),
      O => product_6_O
    );
  product_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(7),
      O => product_7_O
    );
  product_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(8),
      O => product_8_O
    );
  product_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(9),
      O => product_9_O
    );
  NlwBlock_Booth_multiplier_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Booth_multiplier_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_cu_en_a_0_CLK : X_INV
    port map (
      I => cu_en_a_0_CLKINVNOT,
      O => NlwInverterSignal_cu_en_a_0_CLK
    );
  NlwInverterBlock_cu_en_q_0_CLK : X_INV
    port map (
      I => cu_en_q_0_CLKINVNOT,
      O => NlwInverterSignal_cu_en_q_0_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

