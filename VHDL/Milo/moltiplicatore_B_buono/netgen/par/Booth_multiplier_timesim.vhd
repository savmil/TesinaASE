--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Booth_multiplier_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 10 11:03:08 2018
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
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_612 : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal N30_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal reset_IBUF_618 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_3_IBUF_623 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N68_0 : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_631 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_635 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_645 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_4_IBUF_654 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N37_0 : STD_LOGIC; 
  signal N62_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_7_IBUF_664 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal mul2_5_IBUF_669 : STD_LOGIC; 
  signal mul2_0_IBUF_671 : STD_LOGIC; 
  signal mul2_1_IBUF_672 : STD_LOGIC; 
  signal mul2_2_IBUF_673 : STD_LOGIC; 
  signal mul2_6_IBUF_674 : STD_LOGIC; 
  signal start_IBUF_677 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10_0 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_2_0 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N28_0 : STD_LOGIC; 
  signal N27_0 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
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
  signal operation_counter_hit_716 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_717 : STD_LOGIC; 
  signal cu_en_a_0_not0001_0 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X84_0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_Q : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_780 : STD_LOGIC; 
  signal N10_pack_2 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_762 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal m_q_1_DXMUX_831 : STD_LOGIC; 
  signal m_q_1_DYMUX_822 : STD_LOGIC; 
  signal m_q_1_SRINVNOT : STD_LOGIC; 
  signal m_q_1_CLKINV_819 : STD_LOGIC; 
  signal m_q_1_CEINV_818 : STD_LOGIC; 
  signal operation_counter_count_0_DXMUX_868 : STD_LOGIC; 
  signal operation_counter_count_0_DYMUX_859 : STD_LOGIC; 
  signal operation_counter_count_0_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_0_CLKINV_848 : STD_LOGIC; 
  signal operation_counter_count_0_CEINV_847 : STD_LOGIC; 
  signal m_q_3_DXMUX_896 : STD_LOGIC; 
  signal m_q_3_DYMUX_887 : STD_LOGIC; 
  signal m_q_3_SRINVNOT : STD_LOGIC; 
  signal m_q_3_CLKINV_884 : STD_LOGIC; 
  signal m_q_3_CEINV_883 : STD_LOGIC; 
  signal m_q_5_DXMUX_924 : STD_LOGIC; 
  signal m_q_5_DYMUX_915 : STD_LOGIC; 
  signal m_q_5_SRINVNOT : STD_LOGIC; 
  signal m_q_5_CLKINV_912 : STD_LOGIC; 
  signal m_q_5_CEINV_911 : STD_LOGIC; 
  signal prod1_q_11_DXMUX_952 : STD_LOGIC; 
  signal prod1_q_11_DYMUX_943 : STD_LOGIC; 
  signal prod1_q_11_SRINVNOT : STD_LOGIC; 
  signal prod1_q_11_CLKINV_940 : STD_LOGIC; 
  signal prod1_q_11_CEINV_939 : STD_LOGIC; 
  signal m_q_7_DXMUX_980 : STD_LOGIC; 
  signal m_q_7_DYMUX_971 : STD_LOGIC; 
  signal m_q_7_SRINVNOT : STD_LOGIC; 
  signal m_q_7_CLKINV_968 : STD_LOGIC; 
  signal m_q_7_CEINV_967 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1016 : STD_LOGIC; 
  signal N8_pack_2 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_998 : STD_LOGIC; 
  signal prod1_q_13_DXMUX_1043 : STD_LOGIC; 
  signal prod1_q_13_DYMUX_1034 : STD_LOGIC; 
  signal prod1_q_13_SRINVNOT : STD_LOGIC; 
  signal prod1_q_13_CLKINV_1031 : STD_LOGIC; 
  signal prod1_q_13_CEINV_1030 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1103 : STD_LOGIC; 
  signal N2_pack_2 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1085 : STD_LOGIC; 
  signal prod1_q_15_DXMUX_1130 : STD_LOGIC; 
  signal prod1_q_15_DYMUX_1121 : STD_LOGIC; 
  signal prod1_q_15_SRINVNOT : STD_LOGIC; 
  signal prod1_q_15_CLKINV_1118 : STD_LOGIC; 
  signal prod1_q_15_CEINV_1117 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1166 : STD_LOGIC; 
  signal N6_pack_2 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1148 : STD_LOGIC; 
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
  signal gestore_shift_rca_carry_8_bdd6_F5MUX_1459 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6_BXINV_1452 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N42_F5MUX_1484 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N42_BXINV_1477 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1515 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1513 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1511 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1503 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_mux2_1_X1 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1495 : STD_LOGIC; 
  signal N43_F5MUX_1545 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N43_BXINV_1538 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1576 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1574 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1567 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1559 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1612 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1610 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1603 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X1_1601 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1594 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1647 : STD_LOGIC; 
  signal a_x_1_Q : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1631 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1682 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1664 : STD_LOGIC; 
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
  signal operation_counter_count_2_DXMUX_1895 : STD_LOGIC; 
  signal operation_counter_count_2_DYMUX_1879 : STD_LOGIC; 
  signal operation_counter_hit_cmp_eq0000 : STD_LOGIC; 
  signal operation_counter_count_2_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_2_CLKINV_1869 : STD_LOGIC; 
  signal operation_counter_count_2_CEINV_1868 : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1938 : STD_LOGIC; 
  signal a_x_6_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1923 : STD_LOGIC; 
  signal a_x_5_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1913 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DXMUX_1980 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DYMUX_1964 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_CLKINV_1954 : STD_LOGIC; 
  signal cu_en_a_0_not0001 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_DYMUX_2006 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_CLKINV_1997 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_2_Q : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2040 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2031 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_mux2_1_X84_2083 : STD_LOGIC; 
  signal cu_en_q_0_DYMUX_2074 : STD_LOGIC; 
  signal cu_en_q_0_mux0001 : STD_LOGIC; 
  signal cu_en_q_0_CLKINVNOT : STD_LOGIC; 
  signal cu_en_a_0_DXMUX_2112 : STD_LOGIC; 
  signal cu_en_a_0_mux0003_2109 : STD_LOGIC; 
  signal N01_pack_1 : STD_LOGIC; 
  signal cu_en_a_0_CLKINVNOT : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2144 : STD_LOGIC; 
  signal N4_pack_2 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2126 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2179 : STD_LOGIC; 
  signal a_x_7_Q : STD_LOGIC; 
  signal N52_pack_1 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2162 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DXMUX_2227 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DYMUX_2219 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_CLKINV_2216 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_Q : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2274 : STD_LOGIC; 
  signal N14_pack_2 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2256 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2309 : STD_LOGIC; 
  signal a_x_4_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_pack_1 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2291 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2368 : STD_LOGIC; 
  signal N12_pack_2 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2350 : STD_LOGIC; 
  signal prod1_q_1_DXMUX_2395 : STD_LOGIC; 
  signal prod1_q_1_DYMUX_2386 : STD_LOGIC; 
  signal prod1_q_1_SRINVNOT : STD_LOGIC; 
  signal prod1_q_1_CLKINV_2383 : STD_LOGIC; 
  signal prod1_q_1_CEINV_2382 : STD_LOGIC; 
  signal prod1_q_3_DXMUX_2423 : STD_LOGIC; 
  signal prod1_q_3_DYMUX_2414 : STD_LOGIC; 
  signal prod1_q_3_SRINVNOT : STD_LOGIC; 
  signal prod1_q_3_CLKINV_2411 : STD_LOGIC; 
  signal prod1_q_3_CEINV_2410 : STD_LOGIC; 
  signal f_q_0_DYMUX_2440 : STD_LOGIC; 
  signal f_q_0_CLKINV_2437 : STD_LOGIC; 
  signal f_q_0_CEINV_2436 : STD_LOGIC; 
  signal prod1_q_5_DXMUX_2468 : STD_LOGIC; 
  signal prod1_q_5_DYMUX_2459 : STD_LOGIC; 
  signal prod1_q_5_SRINVNOT : STD_LOGIC; 
  signal prod1_q_5_CLKINV_2456 : STD_LOGIC; 
  signal prod1_q_5_CEINV_2455 : STD_LOGIC; 
  signal prod1_q_7_DXMUX_2496 : STD_LOGIC; 
  signal prod1_q_7_DYMUX_2487 : STD_LOGIC; 
  signal prod1_q_7_SRINVNOT : STD_LOGIC; 
  signal prod1_q_7_CLKINV_2484 : STD_LOGIC; 
  signal prod1_q_7_CEINV_2483 : STD_LOGIC; 
  signal prod1_q_9_DXMUX_2524 : STD_LOGIC; 
  signal prod1_q_9_DYMUX_2515 : STD_LOGIC; 
  signal prod1_q_9_SRINVNOT : STD_LOGIC; 
  signal prod1_q_9_CLKINV_2512 : STD_LOGIC; 
  signal prod1_q_9_CEINV_2511 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1021 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_785 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1617 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1652 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1687 : STD_LOGIC; 
  signal q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1108 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1171 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1520 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1581 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_FFY_SET : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2314 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2373 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2045 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2149 : STD_LOGIC; 
  signal a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2184 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2279 : STD_LOGIC; 
  signal f_q_0_FFY_RSTAND_2446 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_cu_en_q_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_cu_en_a_0_CLK : STD_LOGIC; 
  signal cu_en_a : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cu_en_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal m_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal operation_counter_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal prod1_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal f_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal q_x : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  N31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  N31_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N30,
      O => N30_0
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_612,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N30
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(4),
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_780
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10_pack_2,
      O => N10
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_762
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"330F",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => mul2_3_IBUF_623,
      ADR3 => cu_en_q(0),
      O => N10_pack_2
    );
  N68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68,
      O => N68_0
    );
  N68_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  gestore_shift_rca_carry_8_51_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"7722",
      LOC => "SLICE_X1Y20"
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
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_1_INBUF,
      O => m_q_1_DXMUX_831
    );
  m_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_0_INBUF,
      O => m_q_1_DYMUX_822
    );
  m_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => m_q_1_SRINVNOT
    );
  m_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_1_CLKINV_819
    );
  m_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_631,
      O => m_q_1_CEINV_818
    );
  operation_counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X0Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_count(0),
      O => operation_counter_count_0_DXMUX_868
    );
  operation_counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => operation_counter_count_0_DYMUX_859
    );
  operation_counter_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => operation_counter_count_0_SRINVNOT
    );
  operation_counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_0_CLKINV_848
    );
  operation_counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_635,
      O => operation_counter_count_0_CEINV_847
    );
  m_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_3_INBUF,
      O => m_q_3_DXMUX_896
    );
  m_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_2_INBUF,
      O => m_q_3_DYMUX_887
    );
  m_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => m_q_3_SRINVNOT
    );
  m_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_3_CLKINV_884
    );
  m_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_631,
      O => m_q_3_CEINV_883
    );
  m_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_5_INBUF,
      O => m_q_5_DXMUX_924
    );
  m_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_4_INBUF,
      O => m_q_5_DYMUX_915
    );
  m_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => m_q_5_SRINVNOT
    );
  m_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_5_CLKINV_912
    );
  m_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_631,
      O => m_q_5_CEINV_911
    );
  prod1_q_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DXMUX_952
    );
  prod1_q_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DYMUX_943
    );
  prod1_q_11_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_11_SRINVNOT
    );
  prod1_q_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_11_CLKINV_940
    );
  prod1_q_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_11_CEINV_939
    );
  m_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_7_INBUF,
      O => m_q_7_DXMUX_980
    );
  m_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_6_INBUF,
      O => m_q_7_DYMUX_971
    );
  m_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => m_q_7_SRINVNOT
    );
  m_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_7_CLKINV_968
    );
  m_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_631,
      O => m_q_7_CEINV_967
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(5),
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1016
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8_pack_2,
      O => N8
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_998
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"550F",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => mul2_4_IBUF_654,
      ADR3 => cu_en_q(0),
      O => N8_pack_2
    );
  prod1_q_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DXMUX_1043
    );
  prod1_q_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DYMUX_1034
    );
  prod1_q_13_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_13_SRINVNOT
    );
  prod1_q_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_13_CLKINV_1031
    );
  prod1_q_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_13_CEINV_1030
    );
  N37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37,
      O => N37_0
    );
  N37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N62,
      O => N62_0
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW1_SW0 : X_LUT4
    generic map(
      INIT => X"782D",
      LOC => "SLICE_X3Y16"
    )
    port map (
      ADR0 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR3 => m_q(6),
      O => N62
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(8),
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1103
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N2_pack_2,
      O => N2
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1085
    );
  q_chain_gen_8_sc_in_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X1Y12"
    )
    port map (
      ADR0 => mul2_7_IBUF_664,
      ADR1 => cu_en_q(0),
      ADR2 => VCC,
      ADR3 => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      O => N2_pack_2
    );
  prod1_q_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DXMUX_1130
    );
  prod1_q_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DYMUX_1121
    );
  prod1_q_15_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_15_SRINVNOT
    );
  prod1_q_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_15_CLKINV_1118
    );
  prod1_q_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_15_CEINV_1117
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(6),
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1166
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6_pack_2,
      O => N6
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1148
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_en_q(0),
      ADR2 => VCC,
      ADR3 => mul2_5_IBUF_669,
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
      LOC => "PAD96",
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
      O => mul2_0_IBUF_671
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
      O => mul2_1_IBUF_672
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
      O => mul2_2_IBUF_673
    );
  mul1_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
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
      O => mul2_3_IBUF_623
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
      O => mul2_4_IBUF_654
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
      O => mul2_5_IBUF_669
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
      O => mul2_6_IBUF_674
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
      O => mul2_7_IBUF_664
    );
  fin_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
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
      LOC => "PAD82"
    )
    port map (
      I => product_10_O,
      O => product(10)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_677
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
      LOC => "PAD88"
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
      LOC => "PAD91"
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
      O => reset_IBUF_618
    );
  product_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
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
      LOC => "PAD94"
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
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6_F5MUX_1459,
      O => gestore_shift_rca_carry_8_bdd6
    );
  gestore_shift_rca_carry_8_bdd6_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y16"
    )
    port map (
      IA => N78,
      IB => N79,
      SEL => gestore_shift_rca_carry_8_bdd6_BXINV_1452,
      O => gestore_shift_rca_carry_8_bdd6_F5MUX_1459
    );
  gestore_shift_rca_carry_8_bdd6_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => gestore_shift_rca_carry_8_bdd6_BXINV_1452
    );
  gestore_shift_rca_carry_8_41_F : X_LUT4
    generic map(
      INIT => X"E8C0",
      LOC => "SLICE_X1Y16"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub_3_0,
      ADR2 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub_2_0,
      O => N78
    );
  gestore_shift_rca_carry_8_41_G : X_LUT4
    generic map(
      INIT => X"FCE8",
      LOC => "SLICE_X1Y16"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub_3_0,
      ADR2 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub_2_0,
      O => N79
    );
  N42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N42_F5MUX_1484,
      O => N42
    );
  N42_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y14"
    )
    port map (
      IA => N84,
      IB => N85,
      SEL => N42_BXINV_1477,
      O => N42_F5MUX_1484
    );
  N42_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N42_BXINV_1477
    );
  gestore_shift_rca_carry_8_31_SW0_F : X_LUT4
    generic map(
      INIT => X"0480",
      LOC => "SLICE_X1Y14"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(5),
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N84
    );
  gestore_shift_rca_carry_8_31_SW0_G : X_LUT4
    generic map(
      INIT => X"4FF8",
      LOC => "SLICE_X1Y14"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(5),
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N85
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1513,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1515
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y24"
    )
    port map (
      IA => a_chain_gen_2_sc_ch_inst_mux2_1_X1,
      IB => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1511,
      SEL => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1503,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1513
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_612,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1503
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1495
    );
  a_chain_gen_2_sc_ch_inst_mux2_1_X11 : X_LUT4
    generic map(
      INIT => X"CC96",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub_2_0,
      ADR1 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_rca_carry_8_bdd10_0,
      ADR3 => cu_en_a(0),
      O => a_chain_gen_2_sc_ch_inst_mux2_1_X1
    );
  N43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N43_F5MUX_1545,
      O => N43
    );
  N43_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y14"
    )
    port map (
      IA => N82,
      IB => N83,
      SEL => N43_BXINV_1538,
      O => N43_F5MUX_1545
    );
  N43_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => m_q(5),
      O => N43_BXINV_1538
    );
  gestore_shift_rca_carry_8_31_SW1_F : X_LUT4
    generic map(
      INIT => X"ECEA",
      LOC => "SLICE_X0Y14"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => m_q(4),
      O => N82
    );
  gestore_shift_rca_carry_8_31_SW1_G : X_LUT4
    generic map(
      INIT => X"D5DC",
      LOC => "SLICE_X0Y14"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => m_q(4),
      O => N83
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1574,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1576
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y21"
    )
    port map (
      IA => N80,
      IB => N81,
      SEL => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1567,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1574
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1567
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1559
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F690",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => m_q(3),
      ADR1 => N68_0,
      ADR2 => N28_0,
      ADR3 => N27_0,
      O => N80
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1610,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1612
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y21"
    )
    port map (
      IA => a_chain_gen_0_sc_out_inst_mux2_1_X1_1601,
      IB => a_chain_gen_0_sc_out_inst_mux2_1_X,
      SEL => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1603,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_1610
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => m_q(0),
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_1603
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1594
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_0_sc_out_inst_mux2_1_X1_1601
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_1_Q,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1647
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2,
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1631
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"2112",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd12,
      ADR1 => cu_en_a(0),
      ADR2 => m_q(1),
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(1),
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1682
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1664
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"2277",
      LOC => "SLICE_X3Y17"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => mul2_0_IBUF_671,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O_pack_2
    );
  N48_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  N48_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_6_pack_1,
      O => gestore_shift_b_add_sub_6_Q
    );
  gestore_shift_Mxor_b_add_sub_6_Result1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X2Y17"
    )
    port map (
      ADR0 => m_q(6),
      ADR1 => VCC,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_6_pack_1
    );
  N49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N49,
      O => N49_0
    );
  N49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N36_pack_1,
      O => N36
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => cu_current_state_FSM_FFd2_612,
      O => N36_pack_1
    );
  N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N40_pack_1,
      O => N40
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW1 : X_LUT4
    generic map(
      INIT => X"82C3",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_612,
      ADR1 => N62_0,
      ADR2 => m_q(7),
      ADR3 => cu_en_a(0),
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
      INIT => X"FC30",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => m_q(0),
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_carry_8_bdd12_pack_2
    );
  N39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N39,
      O => N39_0
    );
  N39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O_pack_1,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"E21D",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(6),
      ADR3 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O_pack_1
    );
  N54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N54,
      O => N54_0
    );
  N54_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33_pack_1,
      O => N33
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N33_pack_1
    );
  N55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N55,
      O => N55_0
    );
  N55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => N34_pack_1,
      O => N34
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X3Y14"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N34_pack_1
    );
  operation_counter_count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => operation_counter_count_2_DXMUX_1895
    );
  operation_counter_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_cmp_eq0000,
      O => operation_counter_count_2_DYMUX_1879
    );
  operation_counter_count_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => operation_counter_count_2_SRINVNOT
    );
  operation_counter_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_2_CLKINV_1869
    );
  operation_counter_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_635,
      O => operation_counter_count_2_CEINV_1868
    );
  operation_counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => VCC,
      ADR2 => operation_counter_count(0),
      ADR3 => operation_counter_count(2),
      O => operation_counter_hit_cmp_eq0000
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_6_Q,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1938
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_5_Q,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1923
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1913
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N54_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => N55_0,
      O => a_x_5_Q
    );
  cu_current_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In,
      O => cu_current_state_FSM_FFd4_DXMUX_1980
    );
  cu_current_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_In,
      O => cu_current_state_FSM_FFd4_DYMUX_1964
    );
  cu_current_state_FSM_FFd4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => cu_current_state_FSM_FFd4_SRINVNOT
    );
  cu_current_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_CLKINV_1954
    );
  cu_current_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"FF0A",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_645,
      ADR1 => VCC,
      ADR2 => operation_counter_hit_716,
      ADR3 => cu_current_state_FSM_FFd4_631,
      O => cu_current_state_FSM_FFd3_In
    );
  cu_current_state_FSM_FFd5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001,
      O => cu_en_a_0_not0001_0
    );
  cu_current_state_FSM_FFd5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd5_In,
      O => cu_current_state_FSM_FFd5_DYMUX_2006
    );
  cu_current_state_FSM_FFd5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd5_CLKINV_1997
    );
  cu_current_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"AE0C",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => operation_counter_hit_716,
      ADR1 => cu_current_state_FSM_FFd5_717,
      ADR2 => start_IBUF_677,
      ADR3 => cu_current_state_FSM_FFd1_645,
      O => cu_current_state_FSM_FFd5_In
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_2_Q,
      O => gestore_shift_b_add_sub_2_0
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(0),
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2040
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2031
    );
  q_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"E2C0",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => cu_en_q(0),
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => q_x(0)
    );
  cu_en_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_mux2_1_X84_2083,
      O => a_chain_gen_7_sc_in_inst_mux2_1_X84_0
    );
  cu_en_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_q_0_mux0001,
      O => cu_en_q_0_DYMUX_2074
    );
  cu_en_q_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001_0,
      O => cu_en_q_0_CLKINVNOT
    );
  cu_en_q_0_mux00011 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_635,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => cu_current_state_FSM_FFd1_645,
      ADR3 => cu_current_state_FSM_FFd4_631,
      O => cu_en_q_0_mux0001
    );
  cu_en_a_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_mux0003_2109,
      O => cu_en_a_0_DXMUX_2112
    );
  cu_en_a_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N01_pack_1,
      O => N01
    );
  cu_en_a_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_0_not0001_0,
      O => cu_en_a_0_CLKINVNOT
    );
  cu_en_a_0_mux0003_SW0 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X0Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => cu_current_state_FSM_FFd1_645,
      ADR3 => cu_current_state_FSM_FFd4_631,
      O => N01_pack_1
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(7),
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2144
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4_pack_2,
      O => N4
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2126
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"05F5",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => mul2_6_IBUF_674,
      ADR1 => VCC,
      ADR2 => cu_en_q(0),
      ADR3 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => N4_pack_2
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_7_Q,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2179
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N52_pack_1,
      O => N52
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2162
    );
  gestore_shift_rca_carry_8_21_SW3 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X1Y17"
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
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  N66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N64,
      O => N64_0
    );
  gestore_shift_rca_carry_8_31_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X3Y15"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N64
    );
  cu_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_635,
      O => cu_current_state_FSM_FFd2_DXMUX_2227
    );
  cu_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_612,
      O => cu_current_state_FSM_FFd2_DYMUX_2219
    );
  cu_current_state_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => cu_current_state_FSM_FFd2_SRINVNOT
    );
  cu_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd2_CLKINV_2216
    );
  gestore_shift_b_add_sub_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_3_Q,
      O => gestore_shift_b_add_sub_3_0
    );
  gestore_shift_Mxor_b_add_sub_3_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X3Y19"
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
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(2),
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2274
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N14_pack_2,
      O => N14
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2256
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => mul2_1_IBUF_672,
      ADR1 => cu_en_q(0),
      ADR2 => VCC,
      ADR3 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N14_pack_2
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_4_Q,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2309
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_4_pack_1,
      O => gestore_shift_b_add_sub_4_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2291
    );
  gestore_shift_Mxor_b_add_sub_4_Result1 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => m_q(4),
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
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
      I => N27,
      O => N27_0
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => VCC,
      O => N27
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(3),
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2368
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
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2350
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"5533",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => mul2_2_IBUF_673,
      ADR2 => VCC,
      ADR3 => cu_en_q(0),
      O => N12_pack_2
    );
  prod1_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DXMUX_2395
    );
  prod1_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DYMUX_2386
    );
  prod1_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_1_SRINVNOT
    );
  prod1_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_1_CLKINV_2383
    );
  prod1_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_1_CEINV_2382
    );
  prod1_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DXMUX_2423
    );
  prod1_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DYMUX_2414
    );
  prod1_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_3_SRINVNOT
    );
  prod1_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_3_CLKINV_2411
    );
  prod1_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_3_CEINV_2410
    );
  f_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_716,
      O => f_q_0_DYMUX_2440
    );
  f_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => f_q_0_CLKINV_2437
    );
  f_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => f_q_0_CEINV_2436
    );
  prod1_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DXMUX_2468
    );
  prod1_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DYMUX_2459
    );
  prod1_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_5_SRINVNOT
    );
  prod1_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_5_CLKINV_2456
    );
  prod1_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_5_CEINV_2455
    );
  prod1_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DXMUX_2496
    );
  prod1_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DYMUX_2487
    );
  prod1_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_7_SRINVNOT
    );
  prod1_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_7_CLKINV_2484
    );
  prod1_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_7_CEINV_2483
    );
  prod1_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DXMUX_2524
    );
  prod1_q_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DYMUX_2515
    );
  prod1_q_9_SRINV : X_INV
    generic map(
      LOC => "SLICE_X2Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => prod1_q_9_SRINVNOT
    );
  prod1_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_9_CLKINV_2512
    );
  prod1_q_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => prod1_q_9_CEINV_2511
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X3Y18"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N31
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C0F3",
      LOC => "SLICE_X2Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N10,
      O => q_x(4)
    );
  m_q_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y22",
      INIT => '0'
    )
    port map (
      I => m_q_3_DYMUX_887,
      CE => m_q_3_CEINV_883,
      CLK => m_q_3_CLKINV_884,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(2)
    );
  m_q_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y22",
      INIT => '0'
    )
    port map (
      I => m_q_3_DXMUX_896,
      CE => m_q_3_CEINV_883,
      CLK => m_q_3_CLKINV_884,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(3)
    );
  m_q_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => '0'
    )
    port map (
      I => m_q_5_DYMUX_915,
      CE => m_q_5_CEINV_911,
      CLK => m_q_5_CLKINV_912,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(4)
    );
  m_q_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => '0'
    )
    port map (
      I => m_q_5_DXMUX_924,
      CE => m_q_5_CEINV_911,
      CLK => m_q_5_CLKINV_912,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(5)
    );
  prod1_q_10 : X_FF
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DYMUX_943,
      CE => prod1_q_11_CEINV_939,
      CLK => prod1_q_11_CLKINV_940,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(10)
    );
  prod1_q_11 : X_FF
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DXMUX_952,
      CE => prod1_q_11_CEINV_939,
      CLK => prod1_q_11_CLKINV_940,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(11)
    );
  m_q_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y19",
      INIT => '0'
    )
    port map (
      I => m_q_7_DYMUX_971,
      CE => m_q_7_CEINV_967,
      CLK => m_q_7_CLKINV_968,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(6)
    );
  m_q_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y19",
      INIT => '0'
    )
    port map (
      I => m_q_7_DXMUX_980,
      CE => m_q_7_CEINV_967,
      CLK => m_q_7_CLKINV_968,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(7)
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CF03",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => N8,
      ADR3 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_x(5)
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1016,
      CE => VCC,
      CLK => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_998,
      SET => GND,
      RST => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1021,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1021
    );
  prod1_q_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DYMUX_1034,
      CE => prod1_q_13_CEINV_1030,
      CLK => prod1_q_13_CLKINV_1031,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(12)
    );
  prod1_q_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y13",
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DXMUX_1043,
      CE => prod1_q_13_CEINV_1030,
      CLK => prod1_q_13_CLKINV_1031,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(13)
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X3Y16"
    )
    port map (
      ADR0 => cu_en_a(0),
      ADR1 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N37
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_780,
      CE => VCC,
      CLK => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_762,
      SET => GND,
      RST => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_785,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_785
    );
  gestore_shift_rca_carry_8_51_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => m_q(2),
      O => N68
    );
  m_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y18",
      INIT => '0'
    )
    port map (
      I => m_q_1_DYMUX_822,
      CE => m_q_1_CEINV_818,
      CLK => m_q_1_CLKINV_819,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(0)
    );
  m_q_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y18",
      INIT => '0'
    )
    port map (
      I => m_q_1_DXMUX_831,
      CE => m_q_1_CEINV_818,
      CLK => m_q_1_CLKINV_819,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(1)
    );
  operation_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => operation_counter_count(0),
      ADR2 => VCC,
      ADR3 => operation_counter_count(1),
      O => Result(1)
    );
  operation_counter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DYMUX_859,
      CE => operation_counter_count_0_CEINV_847,
      CLK => operation_counter_count_0_CLKINV_848,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(1)
    );
  operation_counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DXMUX_868,
      CE => operation_counter_count_0_CEINV_847,
      CLK => operation_counter_count_0_CLKINV_848,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(0)
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_1612,
      CE => VCC,
      CLK => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1594,
      SET => GND,
      RST => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1617,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1617
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"BE14",
      LOC => "SLICE_X0Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_612,
      ADR1 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O,
      ADR3 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_1_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y23",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1647,
      CE => VCC,
      CLK => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1631,
      SET => GND,
      RST => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1652,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1652
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A0AF",
      LOC => "SLICE_X3Y17"
    )
    port map (
      ADR0 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => q_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_O,
      O => q_x(1)
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1682,
      CE => VCC,
      CLK => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1664,
      SET => GND,
      RST => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1687,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1687
    );
  gestore_shift_rca_carry_8_21_SW0 : X_LUT4
    generic map(
      INIT => X"F690",
      LOC => "SLICE_X2Y17"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub_6_Q,
      ADR1 => N42,
      ADR2 => N36,
      ADR3 => N37_0,
      O => N48
    );
  gestore_shift_rca_carry_8_21_SW1 : X_LUT4
    generic map(
      INIT => X"DE84",
      LOC => "SLICE_X0Y17"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub_6_Q,
      ADR1 => N36,
      ADR2 => N43,
      ADR3 => N37_0,
      O => N49
    );
  q_chain_gen_8_sc_in_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"8D8D",
      LOC => "SLICE_X1Y12"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_612,
      ADR1 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => N2,
      ADR3 => VCC,
      O => q_x(8)
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_DXMUX_1103,
      CE => VCC,
      CLK => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_CLKINV_1085,
      SET => GND,
      RST => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1108,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1108
    );
  prod1_q_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DYMUX_1121,
      CE => prod1_q_15_CEINV_1117,
      CLK => prod1_q_15_CLKINV_1118,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(14)
    );
  prod1_q_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DXMUX_1130,
      CE => prod1_q_15_CEINV_1117,
      CLK => prod1_q_15_CLKINV_1118,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(15)
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"AF05",
      LOC => "SLICE_X3Y12"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_612,
      ADR1 => VCC,
      ADR2 => N6,
      ADR3 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_x(6)
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1166,
      CE => VCC,
      CLK => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1148,
      SET => GND,
      RST => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1171,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1171
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X0Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_rt_1511
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y24",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1515,
      CE => VCC,
      CLK => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1495,
      SET => GND,
      RST => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1520,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1520
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"CAAC",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => N28_0,
      ADR1 => N27_0,
      ADR2 => N70_0,
      ADR3 => m_q(3),
      O => N81
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y21",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1576,
      CE => VCC,
      CLK => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1559,
      SET => GND,
      RST => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1581,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1581
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"ACA3",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => cu_en_a(0),
      O => a_chain_gen_0_sc_out_inst_mux2_1_X
    );
  gestore_shift_rca_carry_8_21_SW2 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N42,
      ADR2 => N39_0,
      ADR3 => N40,
      O => N51
    );
  gestore_shift_rca_carry_8_61 : X_LUT4
    generic map(
      INIT => X"F660",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => m_q(1),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_rca_carry_8_bdd12,
      O => gestore_shift_rca_carry_8_bdd10
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0 : X_LUT4
    generic map(
      INIT => X"84A5",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => m_q(7),
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => a_chain_gen_7_sc_in_inst_mux2_1_X42_SW0_SW0_O,
      ADR3 => cu_en_a(0),
      O => N39
    );
  gestore_shift_rca_carry_8_31_SW2 : X_LUT4
    generic map(
      INIT => X"DE84",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => N64_0,
      ADR1 => N34,
      ADR2 => m_q(5),
      ADR3 => N33,
      O => N54
    );
  gestore_shift_rca_carry_8_31_SW3 : X_LUT4
    generic map(
      INIT => X"B8E2",
      LOC => "SLICE_X3Y14"
    )
    port map (
      ADR0 => N33,
      ADR1 => m_q(5),
      ADR2 => N34,
      ADR3 => N66_0,
      O => N55
    );
  operation_counter_hit : X_FF
    generic map(
      LOC => "SLICE_X1Y29",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_2_DYMUX_1879,
      CE => operation_counter_count_2_CEINV_1868,
      CLK => operation_counter_count_2_CLKINV_1869,
      SET => GND,
      RST => operation_counter_count_2_SRINVNOT,
      O => operation_counter_hit_716
    );
  operation_counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5FA0",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => VCC,
      ADR2 => operation_counter_count(0),
      ADR3 => operation_counter_count(2),
      O => Result(2)
    );
  operation_counter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y29",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_2_DXMUX_1895,
      CE => operation_counter_count_2_CEINV_1868,
      CLK => operation_counter_count_2_CLKINV_1869,
      SET => GND,
      RST => operation_counter_count_2_SRINVNOT,
      O => operation_counter_count(2)
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y16",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1923,
      CE => VCC,
      CLK => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1913,
      SET => GND,
      RST => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N49_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => N48_0,
      O => a_x_6_Q
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y16",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1938,
      CE => VCC,
      CLK => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1913,
      SET => GND,
      RST => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  cu_current_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X0Y25",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DYMUX_1964,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_1954,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd3_635
    );
  cu_current_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_717,
      ADR1 => start_IBUF_677,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cu_current_state_FSM_FFd4_In
    );
  cu_current_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X0Y25",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DXMUX_1980,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_1954,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd4_631
    );
  cu_current_state_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '1'
    )
    port map (
      I => cu_current_state_FSM_FFd5_DYMUX_2006,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd5_CLKINV_1997,
      SET => cu_current_state_FSM_FFd5_FFY_SET,
      RST => GND,
      O => cu_current_state_FSM_FFd5_717
    );
  cu_current_state_FSM_FFd5_FFY_SETOR : X_INV
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => cu_current_state_FSM_FFd5_FFY_SET
    );
  cu_en_a_0_not00011 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => start_IBUF_677,
      ADR3 => cu_current_state_FSM_FFd5_717,
      O => cu_en_a_0_not0001
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CAAC",
      LOC => "SLICE_X0Y18"
    )
    port map (
      ADR0 => N31_0,
      ADR1 => N30_0,
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => gestore_shift_b_add_sub_4_Q,
      O => a_x_4_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y18",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_2309,
      CE => VCC,
      CLK => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_2291,
      SET => GND,
      RST => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2314,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2314
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X1Y23"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => cu_en_a(0),
      O => N28
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CC0F",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N12,
      ADR3 => cu_current_state_FSM_FFd2_612,
      O => q_x(3)
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_2368,
      CE => VCC,
      CLK => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_2350,
      SET => GND,
      RST => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2373,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2373
    );
  prod1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y35",
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DYMUX_2386,
      CE => prod1_q_1_CEINV_2382,
      CLK => prod1_q_1_CLKINV_2383,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(0)
    );
  prod1_q_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y35",
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DXMUX_2395,
      CE => prod1_q_1_CEINV_2382,
      CLK => prod1_q_1_CLKINV_2383,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(1)
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_2040,
      CE => VCC,
      CLK => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_2031,
      SET => GND,
      RST => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2045,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_2045
    );
  gestore_shift_Mxor_b_add_sub_2_Result1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => m_q(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => gestore_shift_b_add_sub_2_Q
    );
  cu_en_q_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => cu_en_q_0_DYMUX_2074,
      GE => VCC,
      CLK => NlwInverterSignal_cu_en_q_0_CLK,
      SET => GND,
      RST => GND,
      O => cu_en_q(0)
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X84 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd2_612,
      ADR2 => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR3 => cu_en_a(0),
      O => a_chain_gen_7_sc_in_inst_mux2_1_X84_2083
    );
  cu_en_a_0_mux0003 : X_LUT4
    generic map(
      INIT => X"ECDC",
      LOC => "SLICE_X0Y22"
    )
    port map (
      ADR0 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => N01,
      ADR2 => cu_current_state_FSM_FFd3_635,
      ADR3 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => cu_en_a_0_mux0003_2109
    );
  cu_en_a_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y22",
      INIT => '0'
    )
    port map (
      I => cu_en_a_0_DXMUX_2112,
      GE => VCC,
      CLK => NlwInverterSignal_cu_en_a_0_CLK,
      SET => GND,
      RST => GND,
      O => cu_en_a(0)
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C0CF",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_8_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => N4,
      O => q_x(7)
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_2144,
      CE => VCC,
      CLK => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_2126,
      SET => GND,
      RST => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2149,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2149
    );
  a_chain_gen_7_sc_in_inst_mux2_1_X87 : X_LUT4
    generic map(
      INIT => X"FEBA",
      LOC => "SLICE_X1Y17"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_in_inst_mux2_1_X84_0,
      ADR1 => gestore_shift_rca_carry_8_bdd6,
      ADR2 => N51_0,
      ADR3 => N52,
      O => a_x_7_Q
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y17",
      INIT => '0'
    )
    port map (
      I => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_DXMUX_2179,
      CE => VCC,
      CLK => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_2162,
      SET => GND,
      RST => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2184,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => a_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_2184
    );
  gestore_shift_rca_carry_8_31_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"2E2E",
      LOC => "SLICE_X3Y15"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N66
    );
  cu_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DYMUX_2219,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_2216,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd1_645
    );
  cu_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DXMUX_2227,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_2216,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd2_612
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C0CF",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_612,
      ADR3 => N14,
      O => q_x(2)
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_2274,
      CE => VCC,
      CLK => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_2256,
      SET => GND,
      RST => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2279,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_2279
    );
  prod1_q_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DXMUX_2496,
      CE => prod1_q_7_CEINV_2483,
      CLK => prod1_q_7_CLKINV_2484,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(7)
    );
  prod1_q_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DYMUX_2515,
      CE => prod1_q_9_CEINV_2511,
      CLK => prod1_q_9_CLKINV_2512,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(8)
    );
  prod1_q_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y15",
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DXMUX_2524,
      CE => prod1_q_9_CEINV_2511,
      CLK => prod1_q_9_CLKINV_2512,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(9)
    );
  prod1_q_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y28",
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DYMUX_2414,
      CE => prod1_q_3_CEINV_2410,
      CLK => prod1_q_3_CLKINV_2411,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(2)
    );
  prod1_q_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y28",
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DXMUX_2423,
      CE => prod1_q_3_CEINV_2410,
      CLK => prod1_q_3_CLKINV_2411,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(3)
    );
  f_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y34",
      INIT => '0'
    )
    port map (
      I => f_q_0_DYMUX_2440,
      CE => f_q_0_CEINV_2436,
      CLK => f_q_0_CLKINV_2437,
      SET => GND,
      RST => f_q_0_FFY_RSTAND_2446,
      O => f_q(0)
    );
  f_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_618,
      O => f_q_0_FFY_RSTAND_2446
    );
  prod1_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y22",
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DYMUX_2459,
      CE => prod1_q_5_CEINV_2455,
      CLK => prod1_q_5_CLKINV_2456,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(4)
    );
  prod1_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y22",
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DXMUX_2468,
      CE => prod1_q_5_CEINV_2455,
      CLK => prod1_q_5_CLKINV_2456,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(5)
    );
  prod1_q_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DYMUX_2487,
      CE => prod1_q_7_CEINV_2483,
      CLK => prod1_q_7_CLKINV_2484,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(6)
    );
  en_i_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_645,
      O => en_i_O
    );
  fin_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
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
      LOC => "PAD82",
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
      LOC => "PAD88",
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
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(6),
      O => product_6_O
    );
  product_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
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
      LOC => "PAD94",
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
  NlwInverterBlock_cu_en_q_0_CLK : X_INV
    port map (
      I => cu_en_q_0_CLKINVNOT,
      O => NlwInverterSignal_cu_en_q_0_CLK
    );
  NlwInverterBlock_cu_en_a_0_CLK : X_INV
    port map (
      I => cu_en_a_0_CLKINVNOT,
      O => NlwInverterSignal_cu_en_a_0_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

