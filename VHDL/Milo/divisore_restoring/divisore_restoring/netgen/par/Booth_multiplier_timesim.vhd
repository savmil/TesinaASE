--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Booth_multiplier_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 10 09:38:15 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf divisore_restoring.pcf -rpw 100 -tpw 0 -ar Structure -tm Booth_multiplier -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim divisore_restoring.ncd Booth_multiplier_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: divisore_restoring.ncd
-- Output file	: /media/sf_ASE/VHDL/Milo/divisore_restoring/divisore_restoring/netgen/par/Booth_multiplier_timesim.vhd
-- # of Entities	: 1
-- Design Name	: divisore_restoring
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
    finish : out STD_LOGIC; 
    quoziente : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    resto : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    dividendo : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    divisore : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Booth_multiplier;

architecture Structure of Booth_multiplier is
  signal operation_counter_hit_927 : STD_LOGIC; 
  signal start_IBUF_938 : STD_LOGIC; 
  signal dividendo_0_IBUF_942 : STD_LOGIC; 
  signal reset_IBUF_943 : STD_LOGIC; 
  signal dividendo_1_IBUF_945 : STD_LOGIC; 
  signal dividendo_2_IBUF_947 : STD_LOGIC; 
  signal dividendo_3_IBUF_949 : STD_LOGIC; 
  signal dividendo_4_IBUF_951 : STD_LOGIC; 
  signal dividendo_5_IBUF_953 : STD_LOGIC; 
  signal dividendo_6_IBUF_954 : STD_LOGIC; 
  signal dividendo_7_IBUF_955 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal en_r_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_959 : STD_LOGIC; 
  signal remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_961 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10_0 : STD_LOGIC; 
  signal en_c_0 : STD_LOGIC; 
  signal N92_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_966 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_bit_q_974 : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N47_0 : STD_LOGIC; 
  signal N50_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd2 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N59_0 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal cu_en_r6_0 : STD_LOGIC; 
  signal N87_0 : STD_LOGIC; 
  signal N90_0 : STD_LOGIC; 
  signal N86_0 : STD_LOGIC; 
  signal N89_0 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N128_0 : STD_LOGIC; 
  signal N127_0 : STD_LOGIC; 
  signal en_res_0 : STD_LOGIC; 
  signal N158_0 : STD_LOGIC; 
  signal a_s : STD_LOGIC; 
  signal N156_0 : STD_LOGIC; 
  signal sum1_3_0 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW1_O : STD_LOGIC; 
  signal N43_0 : STD_LOGIC; 
  signal N65_0 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW2_O : STD_LOGIC; 
  signal N66_0 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N40_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_1018 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW10_O : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal N84_0 : STD_LOGIC; 
  signal N83_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_1026 : STD_LOGIC; 
  signal N162_0 : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_1029 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_1030 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW7_SW0_O : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N136_0 : STD_LOGIC; 
  signal N68_0 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW9_SW0_O : STD_LOGIC; 
  signal N130_0 : STD_LOGIC; 
  signal N69_0 : STD_LOGIC; 
  signal N41_0 : STD_LOGIC; 
  signal N138_0 : STD_LOGIC; 
  signal N71_0 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW10_SW0_O : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW2_SW2_O : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd12 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N77_0 : STD_LOGIC; 
  signal N99_0 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_5_0 : STD_LOGIC; 
  signal N116_0 : STD_LOGIC; 
  signal N119_0 : STD_LOGIC; 
  signal cu_en_r5_O : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_1062 : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_61_SW0_O : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW4_O : STD_LOGIC; 
  signal N97_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW9_O : STD_LOGIC; 
  signal sum1_7_Q : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_1075 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW7_O : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_1078 : STD_LOGIC; 
  signal resto_0_O : STD_LOGIC; 
  signal resto_1_O : STD_LOGIC; 
  signal resto_2_O : STD_LOGIC; 
  signal resto_3_O : STD_LOGIC; 
  signal resto_4_O : STD_LOGIC; 
  signal resto_5_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal finish_O : STD_LOGIC; 
  signal resto_6_O : STD_LOGIC; 
  signal resto_7_O : STD_LOGIC; 
  signal divisore_0_INBUF : STD_LOGIC; 
  signal divisore_1_INBUF : STD_LOGIC; 
  signal divisore_2_INBUF : STD_LOGIC; 
  signal divisore_3_INBUF : STD_LOGIC; 
  signal divisore_4_INBUF : STD_LOGIC; 
  signal divisore_5_INBUF : STD_LOGIC; 
  signal divisore_6_INBUF : STD_LOGIC; 
  signal divisore_7_INBUF : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal quoziente_0_O : STD_LOGIC; 
  signal quoziente_1_O : STD_LOGIC; 
  signal quoziente_2_O : STD_LOGIC; 
  signal dividendo_0_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal quoziente_3_O : STD_LOGIC; 
  signal dividendo_1_INBUF : STD_LOGIC; 
  signal quoziente_4_O : STD_LOGIC; 
  signal dividendo_2_INBUF : STD_LOGIC; 
  signal quoziente_5_O : STD_LOGIC; 
  signal dividendo_3_INBUF : STD_LOGIC; 
  signal quoziente_6_O : STD_LOGIC; 
  signal dividendo_4_INBUF : STD_LOGIC; 
  signal quoziente_7_O : STD_LOGIC; 
  signal dividendo_5_INBUF : STD_LOGIC; 
  signal dividendo_6_INBUF : STD_LOGIC; 
  signal dividendo_7_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1363 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1361 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1354 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1346 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1399 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1397 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1390 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1388 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1382 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1435 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1433 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1426 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1424 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1418 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1471 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1469 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1462 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1460 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1454 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1507 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1505 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1498 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1496 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1490 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1543 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1541 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1534 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1532 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1526 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1579 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1577 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1570 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1568 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1562 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1615 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1613 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1606 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1604 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1598 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd2_F5MUX_1645 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd2_BXINV_1637 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N74_F5MUX_1670 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N74_BXINV_1663 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N75_F5MUX_1695 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N75_BXINV_1688 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1726 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1724 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1717 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1709 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1762 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1760 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1753 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1751 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1745 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1798 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1796 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1789 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1781 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1834 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1832 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1825 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1816 : STD_LOGIC; 
  signal r_q_5_DXMUX_1872 : STD_LOGIC; 
  signal r_q_5_F5MUX_1870 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal r_q_5_BXINV_1863 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal r_q_5_CLKINV_1855 : STD_LOGIC; 
  signal r_q_5_CEINV_1854 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1909 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1907 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1900 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1892 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW1_O_pack_1 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW2_O_pack_1 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N63_pack_1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DXMUX_2041 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_FXMUX_2040 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW10_O_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_CLKINV_2024 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_6_pack_1 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal a_s_pack_1 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW7_SW0_O_pack_1 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N37_pack_1 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW9_SW0_O_pack_1 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N57_pack_1 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N56_pack_1 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_2_pack_1 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_pack_1 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW10_SW0_O_pack_1 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N45_pack_1 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW2_SW2_O_pack_1 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd12_pack_1 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N78_pack_1 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N81_pack_1 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N48_pack_1 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_1_pack_1 : STD_LOGIC; 
  signal cu_en_r6_2477 : STD_LOGIC; 
  signal cu_en_r5_O_pack_1 : STD_LOGIC; 
  signal sum1_3_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_61_SW0_O_pack_1 : STD_LOGIC; 
  signal r_q_6_DXMUX_2534 : STD_LOGIC; 
  signal rest_6_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW4_O_pack_1 : STD_LOGIC; 
  signal r_q_6_CLKINV_2517 : STD_LOGIC; 
  signal r_q_6_CEINV_2516 : STD_LOGIC; 
  signal r_q_7_DXMUX_2572 : STD_LOGIC; 
  signal rest_7_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW9_O_pack_1 : STD_LOGIC; 
  signal r_q_7_CLKINV_2554 : STD_LOGIC; 
  signal r_q_7_CEINV_2553 : STD_LOGIC; 
  signal operation_counter_hit_DYMUX_2596 : STD_LOGIC; 
  signal operation_counter_hit_cmp_eq0000 : STD_LOGIC; 
  signal operation_counter_hit_CLKINV_2587 : STD_LOGIC; 
  signal operation_counter_hit_CEINV_2586 : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2636 : STD_LOGIC; 
  signal remainder_x_7_Q : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2621 : STD_LOGIC; 
  signal remainder_x_1_Q : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2611 : STD_LOGIC; 
  signal operation_counter_hit_and0000 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_DYMUX_2664 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_GYMUX_2663 : STD_LOGIC; 
  signal en_c : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_CLKINV_2653 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_DXMUX_2714 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_DYMUX_2700 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_CLKINV_2689 : STD_LOGIC; 
  signal r_q_1_DXMUX_2758 : STD_LOGIC; 
  signal rest_1_Q : STD_LOGIC; 
  signal r_q_1_DYMUX_2743 : STD_LOGIC; 
  signal rest_0_Q : STD_LOGIC; 
  signal r_q_1_SRINVNOT : STD_LOGIC; 
  signal r_q_1_CLKINV_2733 : STD_LOGIC; 
  signal r_q_1_CEINV_2732 : STD_LOGIC; 
  signal r_q_3_DXMUX_2804 : STD_LOGIC; 
  signal rest_3_Q : STD_LOGIC; 
  signal r_q_3_DYMUX_2788 : STD_LOGIC; 
  signal rest_2_Q : STD_LOGIC; 
  signal r_q_3_SRINVNOT : STD_LOGIC; 
  signal r_q_3_CLKINV_2779 : STD_LOGIC; 
  signal r_q_3_CEINV_2778 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal r_q_4_DYMUX_2834 : STD_LOGIC; 
  signal rest_4_Q : STD_LOGIC; 
  signal r_q_4_CLKINV_2825 : STD_LOGIC; 
  signal r_q_4_CEINV_2824 : STD_LOGIC; 
  signal operation_counter_count_2_DYMUX_2868 : STD_LOGIC; 
  signal operation_counter_count_2_CLKINV_2858 : STD_LOGIC; 
  signal operation_counter_count_2_CEINV_2857 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal divisor_q_7_DXMUX_2920 : STD_LOGIC; 
  signal divisor_q_7_DYMUX_2911 : STD_LOGIC; 
  signal divisor_q_7_SRINVNOT : STD_LOGIC; 
  signal divisor_q_7_CLKINV_2908 : STD_LOGIC; 
  signal divisor_q_7_CEINV_2907 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal en_res : STD_LOGIC; 
  signal cu_bit_q_DXMUX_3062 : STD_LOGIC; 
  signal cu_bit_q_mux0001 : STD_LOGIC; 
  signal sum1_7_pack_1 : STD_LOGIC; 
  signal cu_bit_q_CLKINV_3047 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3142 : STD_LOGIC; 
  signal remainder_x_0_Q : STD_LOGIC; 
  signal N72_pack_1 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3125 : STD_LOGIC; 
  signal en_r : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6_pack_1 : STD_LOGIC; 
  signal q_q_1_DXMUX_3193 : STD_LOGIC; 
  signal q_q_1_DYMUX_3184 : STD_LOGIC; 
  signal q_q_1_SRINVNOT : STD_LOGIC; 
  signal q_q_1_CLKINV_3181 : STD_LOGIC; 
  signal q_q_1_CEINV_3180 : STD_LOGIC; 
  signal q_q_3_DXMUX_3221 : STD_LOGIC; 
  signal q_q_3_DYMUX_3212 : STD_LOGIC; 
  signal q_q_3_SRINVNOT : STD_LOGIC; 
  signal q_q_3_CLKINV_3209 : STD_LOGIC; 
  signal q_q_3_CEINV_3208 : STD_LOGIC; 
  signal q_q_5_DXMUX_3249 : STD_LOGIC; 
  signal q_q_5_DYMUX_3240 : STD_LOGIC; 
  signal q_q_5_SRINVNOT : STD_LOGIC; 
  signal q_q_5_CLKINV_3237 : STD_LOGIC; 
  signal q_q_5_CEINV_3236 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal q_q_7_DXMUX_3313 : STD_LOGIC; 
  signal q_q_7_DYMUX_3304 : STD_LOGIC; 
  signal q_q_7_SRINVNOT : STD_LOGIC; 
  signal q_q_7_CLKINV_3301 : STD_LOGIC; 
  signal q_q_7_CEINV_3300 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_DYMUX_3328 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_CLKINV_3325 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_DYMUX_3342 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_CLKINV_3339 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DXMUX_3387 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DYMUX_3373 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW7_O_pack_2 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_CLKINV_3362 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_DYMUX_3425 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_CLKINV_3422 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_DYMUX_3439 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_CLKINV_3436 : STD_LOGIC; 
  signal operation_counter_count_0_DXMUX_3487 : STD_LOGIC; 
  signal operation_counter_count_0_DYMUX_3478 : STD_LOGIC; 
  signal operation_counter_count_0_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_0_CLKINV_3467 : STD_LOGIC; 
  signal operation_counter_count_0_CEINV_3466 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal divisor_q_1_DXMUX_3527 : STD_LOGIC; 
  signal divisor_q_1_DYMUX_3518 : STD_LOGIC; 
  signal divisor_q_1_SRINVNOT : STD_LOGIC; 
  signal divisor_q_1_CLKINV_3515 : STD_LOGIC; 
  signal divisor_q_1_CEINV_3514 : STD_LOGIC; 
  signal divisor_q_3_DXMUX_3555 : STD_LOGIC; 
  signal divisor_q_3_DYMUX_3546 : STD_LOGIC; 
  signal divisor_q_3_SRINVNOT : STD_LOGIC; 
  signal divisor_q_3_CLKINV_3543 : STD_LOGIC; 
  signal divisor_q_3_CEINV_3542 : STD_LOGIC; 
  signal divisor_q_5_DXMUX_3583 : STD_LOGIC; 
  signal divisor_q_5_DYMUX_3574 : STD_LOGIC; 
  signal divisor_q_5_SRINVNOT : STD_LOGIC; 
  signal divisor_q_5_CLKINV_3571 : STD_LOGIC; 
  signal divisor_q_5_CEINV_3570 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1914 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_FFX_RSTAND_2046 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1767 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1803 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1839 : STD_LOGIC; 
  signal r_q_5_FFX_RSTAND_1878 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1368 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1404 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1440 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1476 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1512 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1548 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1584 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1620 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1731 : STD_LOGIC; 
  signal r_q_6_FFX_RSTAND_2540 : STD_LOGIC; 
  signal r_q_7_FFX_RSTAND_2578 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_FFY_RSTAND_3333 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_FFY_RSTAND_3347 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_FFY_RSTAND_3430 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_FFY_RSTAND_3444 : STD_LOGIC; 
  signal r_q_4_FFY_RSTAND_2840 : STD_LOGIC; 
  signal operation_counter_count_2_FFY_RSTAND_2874 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_FFY_RSTAND_2669 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3147 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_cu_bit_q_CLK : STD_LOGIC; 
  signal r_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal q_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal gestore_shift_b_add_sub : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal divisor_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal operation_counter_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  resto_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => resto_0_O,
      O => resto(0)
    );
  resto_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => resto_1_O,
      O => resto(1)
    );
  resto_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => resto_2_O,
      O => resto(2)
    );
  resto_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => resto_3_O,
      O => resto(3)
    );
  resto_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => resto_4_O,
      O => resto(4)
    );
  resto_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => resto_5_O,
      O => resto(5)
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
  finish_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => finish_O,
      O => finish
    );
  resto_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => resto_6_O,
      O => resto(6)
    );
  resto_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => resto_7_O,
      O => resto(7)
    );
  divisore_0_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(0),
      O => divisore_0_INBUF
    );
  divisore_1_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(1),
      O => divisore_1_INBUF
    );
  divisore_2_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(2),
      O => divisore_2_INBUF
    );
  divisore_3_IBUF : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(3),
      O => divisore_3_INBUF
    );
  divisore_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(4),
      O => divisore_4_INBUF
    );
  divisore_5_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(5),
      O => divisore_5_INBUF
    );
  divisore_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(6),
      O => divisore_6_INBUF
    );
  divisore_7_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(7),
      O => divisore_7_INBUF
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_938
    );
  quoziente_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => quoziente_0_O,
      O => quoziente(0)
    );
  quoziente_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => quoziente_1_O,
      O => quoziente(1)
    );
  quoziente_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => quoziente_2_O,
      O => quoziente(2)
    );
  dividendo_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(0),
      O => dividendo_0_INBUF
    );
  dividendo_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_0_INBUF,
      O => dividendo_0_IBUF_942
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_943
    );
  quoziente_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => quoziente_3_O,
      O => quoziente(3)
    );
  dividendo_1_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(1),
      O => dividendo_1_INBUF
    );
  dividendo_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_1_INBUF,
      O => dividendo_1_IBUF_945
    );
  quoziente_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => quoziente_4_O,
      O => quoziente(4)
    );
  dividendo_2_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(2),
      O => dividendo_2_INBUF
    );
  dividendo_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_2_INBUF,
      O => dividendo_2_IBUF_947
    );
  quoziente_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => quoziente_5_O,
      O => quoziente(5)
    );
  dividendo_3_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(3),
      O => dividendo_3_INBUF
    );
  dividendo_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_3_INBUF,
      O => dividendo_3_IBUF_949
    );
  quoziente_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => quoziente_6_O,
      O => quoziente(6)
    );
  dividendo_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(4),
      O => dividendo_4_INBUF
    );
  dividendo_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_4_INBUF,
      O => dividendo_4_IBUF_951
    );
  quoziente_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => quoziente_7_O,
      O => quoziente(7)
    );
  dividendo_5_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(5),
      O => dividendo_5_INBUF
    );
  dividendo_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_5_INBUF,
      O => dividendo_5_IBUF_953
    );
  dividendo_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(6),
      O => dividendo_6_INBUF
    );
  dividendo_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_6_INBUF,
      O => dividendo_6_IBUF_954
    );
  dividendo_7_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(7),
      O => dividendo_7_INBUF
    );
  dividendo_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_7_INBUF,
      O => dividendo_7_IBUF_955
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
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1361,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1363
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y22"
    )
    port map (
      IA => N166,
      IB => N167,
      SEL => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1354,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1361
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1354
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1346
    );
  remainder_chain_gen_2_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"BE14",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => en_c_0,
      ADR1 => gestore_shift_rca_carry_8_bdd10_0,
      ADR2 => N92_0,
      ADR3 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N166
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1397,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1399
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y15"
    )
    port map (
      IA => quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1388,
      IB => quotient_chain_gen_1_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1390,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1397
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1390
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1382
    );
  quotient_chain_gen_1_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X28Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1388
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1433,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1435
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y15"
    )
    port map (
      IA => quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1424,
      IB => quotient_chain_gen_2_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1426,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1433
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1426
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1418
    );
  quotient_chain_gen_2_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X29Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1424
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1469,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1471
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y16"
    )
    port map (
      IA => quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1460,
      IB => quotient_chain_gen_3_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1462,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1469
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1462
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1454
    );
  quotient_chain_gen_3_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X28Y16"
    )
    port map (
      ADR0 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1460
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1505,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1507
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y30"
    )
    port map (
      IA => quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1496,
      IB => quotient_chain_gen_4_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1498,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1505
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1498
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1490
    );
  quotient_chain_gen_4_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1496
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1541,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1543
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y30"
    )
    port map (
      IA => quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1532,
      IB => quotient_chain_gen_5_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1534,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1541
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1534
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1526
    );
  quotient_chain_gen_5_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1532
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1577,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1579
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y28"
    )
    port map (
      IA => quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1568,
      IB => quotient_chain_gen_6_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1570,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1577
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1570
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1562
    );
  quotient_chain_gen_6_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1568
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1613,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1615
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y14"
    )
    port map (
      IA => quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1604,
      IB => quotient_chain_gen_0_sc_in_inst_mux2_1_X,
      SEL => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1606,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1613
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1606
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1598
    );
  quotient_chain_gen_0_sc_in_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X29Y14"
    )
    port map (
      ADR0 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => cu_current_state_FSM_FFd4_961,
      ADR3 => cu_bit_q_974,
      O => quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1604
    );
  gestore_shift_rca_carry_8_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd2_F5MUX_1645,
      O => gestore_shift_rca_carry_8_bdd2
    );
  gestore_shift_rca_carry_8_bdd2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y23"
    )
    port map (
      IA => N172,
      IB => N173,
      SEL => gestore_shift_rca_carry_8_bdd2_BXINV_1637,
      O => gestore_shift_rca_carry_8_bdd2_F5MUX_1645
    );
  gestore_shift_rca_carry_8_bdd2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => gestore_shift_rca_carry_8_bdd2_BXINV_1637
    );
  gestore_shift_rca_carry_8_21_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X30Y23"
    )
    port map (
      ADR0 => N48,
      ADR1 => N47_0,
      ADR2 => N50_0,
      ADR3 => VCC,
      O => N172
    );
  N74_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N74_F5MUX_1670,
      O => N74
    );
  N74_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y29"
    )
    port map (
      IA => N140,
      IB => N141,
      SEL => N74_BXINV_1663,
      O => N74_F5MUX_1670
    );
  N74_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(4),
      O => N74_BXINV_1663
    );
  gestore_shift_rca_s_5_1_SW0_F : X_LUT4
    generic map(
      INIT => X"CC8D",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N59_0,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => N140
    );
  gestore_shift_rca_s_5_1_SW0_G : X_LUT4
    generic map(
      INIT => X"CCC9",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N59_0,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => N141
    );
  N75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N75_F5MUX_1695,
      O => N75
    );
  N75_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y28"
    )
    port map (
      IA => N142,
      IB => N143,
      SEL => N75_BXINV_1688,
      O => N75_F5MUX_1695
    );
  N75_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(4),
      O => N75_BXINV_1688
    );
  gestore_shift_rca_s_5_1_SW1_F : X_LUT4
    generic map(
      INIT => X"CCC9",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N59_0,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => N142
    );
  gestore_shift_rca_s_5_1_SW1_G : X_LUT4
    generic map(
      INIT => X"CCD8",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N59_0,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => N143
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1724,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1726
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y23"
    )
    port map (
      IA => N148,
      IB => N149,
      SEL => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1717,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1724
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1717
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1709
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F0E2",
      LOC => "SLICE_X27Y23"
    )
    port map (
      ADR0 => N86_0,
      ADR1 => cu_en_r6_0,
      ADR2 => N23_0,
      ADR3 => N89_0,
      O => N148
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1760,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1762
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y17"
    )
    port map (
      IA => quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1751,
      IB => quotient_chain_gen_7_sc_out_inst_mux2_1_X,
      SEL => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1753,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1760
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1753
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1745
    );
  quotient_chain_gen_7_sc_out_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X29Y17"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd4_961,
      ADR3 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1751
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1796,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1798
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y29"
    )
    port map (
      IA => N150,
      IB => N151,
      SEL => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1789,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1796
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1789
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1781
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"CCD8",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => cu_en_r6_0,
      ADR1 => N26_0,
      ADR2 => N74,
      ADR3 => N89_0,
      O => N150
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1832,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1834
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y21"
    )
    port map (
      IA => N164,
      IB => N165,
      SEL => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1825,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1832
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1825
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1816
    );
  remainder_chain_gen_4_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X28Y21"
    )
    port map (
      ADR0 => N128_0,
      ADR1 => N127_0,
      ADR2 => gestore_shift_rca_carry_8_bdd10_0,
      ADR3 => VCC,
      O => N164
    );
  r_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q_5_F5MUX_1870,
      O => r_q_5_DXMUX_1872
    );
  r_q_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y31"
    )
    port map (
      IA => N170,
      IB => N171,
      SEL => r_q_5_BXINV_1863,
      O => r_q_5_F5MUX_1870
    );
  r_q_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => r_q_5_BXINV_1863
    );
  r_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_5_CLKINV_1855
    );
  r_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_5_CEINV_1854
    );
  rest_5_1_F : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X31Y31"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_bit_q_974,
      ADR2 => a_s,
      ADR3 => N156_0,
      O => N170
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1907,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1909
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X29Y25"
    )
    port map (
      IA => N168,
      IB => N169,
      SEL => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1900,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1907
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1900
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1892
    );
  remainder_chain_gen_3_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X29Y25"
    )
    port map (
      ADR0 => sum1_3_0,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => N168
    );
  N65_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N65,
      O => N65_0
    );
  N65_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW1_O_pack_1,
      O => gestore_shift_rca_s_7_SW1_O
    );
  gestore_shift_rca_s_7_SW1 : X_LUT4
    generic map(
      INIT => X"F095",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => gestore_shift_b_add_sub(6),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => en_c_0,
      O => gestore_shift_rca_s_7_SW1_O_pack_1
    );
  N66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  N66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW2_O_pack_1,
      O => gestore_shift_rca_s_7_SW2_O
    );
  gestore_shift_rca_s_7_SW2 : X_LUT4
    generic map(
      INIT => X"F0A9",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => gestore_shift_b_add_sub(6),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => en_c_0,
      O => gestore_shift_rca_s_7_SW2_O_pack_1
    );
  N128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N128,
      O => N128_0
    );
  N128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N63_pack_1,
      O => N63
    );
  gestore_shift_rca_s_4_1_SW0 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X31Y28"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => gestore_shift_b_add_sub(4),
      ADR3 => VCC,
      O => N63_pack_1
    );
  N40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N40,
      O => N40_0
    );
  N40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1,
      O => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O
    );
  gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => divisor_q(0),
      ADR2 => VCC,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1
    );
  cu_current_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_FXMUX_2040,
      O => cu_current_state_FSM_FFd4_DXMUX_2041
    );
  cu_current_state_FSM_FFd4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_FXMUX_2040,
      O => cu_current_state_FSM_FFd4_In_0
    );
  cu_current_state_FSM_FFd4_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In,
      O => cu_current_state_FSM_FFd4_FXMUX_2040
    );
  cu_current_state_FSM_FFd4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW10_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW10_O
    );
  cu_current_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_CLKINV_2024
    );
  gestore_shift_rca_carry_8_21_SW10 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X29Y24"
    )
    port map (
      ADR0 => N84_0,
      ADR1 => VCC,
      ADR2 => N47_0,
      ADR3 => N83_0,
      O => gestore_shift_rca_carry_8_21_SW10_O_pack_1
    );
  N162_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => N162,
      O => N162_0
    );
  N162_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_6_pack_1,
      O => gestore_shift_b_add_sub(6)
    );
  gestore_shift_Mxor_b_add_sub_6_Result1 : X_LUT4
    generic map(
      INIT => X"01FE",
      LOC => "SLICE_X30Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1026,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => divisor_q(6),
      O => gestore_shift_b_add_sub_6_pack_1
    );
  N43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N43,
      O => N43_0
    );
  N43_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_s_pack_1,
      O => a_s
    );
  cu_current_state_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X30Y24"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_1_1030,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd4_1_1029,
      ADR3 => cu_current_state_FSM_FFd3_1026,
      O => a_s_pack_1
    );
  N80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  N80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW7_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW7_SW0_O
    );
  gestore_shift_rca_s_7_SW7_SW0 : X_LUT4
    generic map(
      INIT => X"9595",
      LOC => "SLICE_X31Y32"
    )
    port map (
      ADR0 => divisor_q(7),
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => VCC,
      O => gestore_shift_rca_s_7_SW7_SW0_O_pack_1
    );
  N68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68,
      O => N68_0
    );
  N68_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37_pack_1,
      O => N37
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X29Y21"
    )
    port map (
      ADR0 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => N136_0,
      ADR2 => en_c_0,
      ADR3 => gestore_shift_b_add_sub(1),
      O => N37_pack_1
    );
  N83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N83,
      O => N83_0
    );
  N83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW9_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW9_SW0_O
    );
  gestore_shift_rca_s_7_SW9_SW0 : X_LUT4
    generic map(
      INIT => X"9C63",
      LOC => "SLICE_X26Y24"
    )
    port map (
      ADR0 => divisor_q(6),
      ADR1 => divisor_q(7),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_s_7_SW9_SW0_O_pack_1
    );
  N69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N69,
      O => N69_0
    );
  N69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N57_pack_1,
      O => N57
    );
  gestore_shift_rca_s_7_SW4 : X_LUT4
    generic map(
      INIT => X"CC0C",
      LOC => "SLICE_X28Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd3_1026,
      ADR2 => N130_0,
      ADR3 => operation_counter_hit_927,
      O => N57_pack_1
    );
  N71_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N71,
      O => N71_0
    );
  N71_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => N56_pack_1,
      O => N56
    );
  gestore_shift_rca_s_7_SW3 : X_LUT4
    generic map(
      INIT => X"8A8A",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1026,
      ADR1 => operation_counter_hit_927,
      ADR2 => N138_0,
      ADR3 => VCC,
      O => N56_pack_1
    );
  N50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N50,
      O => N50_0
    );
  N50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_2_pack_1,
      O => gestore_shift_b_add_sub(2)
    );
  gestore_shift_Mxor_b_add_sub_2_Result1 : X_LUT4
    generic map(
      INIT => X"5556",
      LOC => "SLICE_X31Y25"
    )
    port map (
      ADR0 => divisor_q(2),
      ADR1 => cu_current_state_FSM_FFd3_1026,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => gestore_shift_b_add_sub_2_pack_1
    );
  N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_3_pack_1,
      O => gestore_shift_b_add_sub(3)
    );
  gestore_shift_Mxor_b_add_sub_3_Result1 : X_LUT4
    generic map(
      INIT => X"0F1E",
      LOC => "SLICE_X30Y25"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => divisor_q(3),
      ADR3 => cu_current_state_FSM_FFd3_1026,
      O => gestore_shift_b_add_sub_3_pack_1
    );
  N84_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N84,
      O => N84_0
    );
  N84_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW10_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW10_SW0_O
    );
  gestore_shift_rca_s_7_SW10_SW0 : X_LUT4
    generic map(
      INIT => X"695A",
      LOC => "SLICE_X27Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => divisor_q(7),
      ADR3 => divisor_q(6),
      O => gestore_shift_rca_s_7_SW10_SW0_O_pack_1
    );
  N86_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N86,
      O => N86_0
    );
  N86_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N45_pack_1,
      O => N45
    );
  gestore_shift_rca_s_6_1_SW0 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X26Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => VCC,
      O => N45_pack_1
    );
  N89_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N89,
      O => N89_0
    );
  N89_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW2_SW2_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW2_SW2_O
    );
  gestore_shift_rca_carry_8_21_SW2_SW2 : X_LUT4
    generic map(
      INIT => X"1717",
      LOC => "SLICE_X29Y22"
    )
    port map (
      ADR0 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => N47_0,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => VCC,
      O => gestore_shift_rca_carry_8_21_SW2_SW2_O_pack_1
    );
  gestore_shift_rca_carry_8_bdd10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10,
      O => gestore_shift_rca_carry_8_bdd10_0
    );
  gestore_shift_rca_carry_8_bdd10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd12_pack_1,
      O => gestore_shift_rca_carry_8_bdd12
    );
  gestore_shift_rca_carry_8_71 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X28Y23"
    )
    port map (
      ADR0 => divisor_q(0),
      ADR1 => VCC,
      ADR2 => a_s,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_carry_8_bdd12_pack_1
    );
  N99_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N99,
      O => N99_0
    );
  N99_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => N78_pack_1,
      O => N78
    );
  gestore_shift_rca_s_7_SW6 : X_LUT4
    generic map(
      INIT => X"FAF9",
      LOC => "SLICE_X30Y29"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => operation_counter_hit_927,
      ADR3 => gestore_shift_b_add_sub(6),
      O => N78_pack_1
    );
  N102_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  N102_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N81_pack_1,
      O => N81
    );
  gestore_shift_rca_s_7_SW8 : X_LUT4
    generic map(
      INIT => X"6C9C",
      LOC => "SLICE_X30Y32"
    )
    port map (
      ADR0 => N162_0,
      ADR1 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_bit_q_974,
      ADR3 => a_s,
      O => N81_pack_1
    );
  N116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N116,
      O => N116_0
    );
  N116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N48_pack_1,
      O => N48
    );
  gestore_shift_rca_carry_8_31_SW1 : X_LUT4
    generic map(
      INIT => X"FEC8",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub_5_0,
      ADR2 => gestore_shift_b_add_sub(4),
      ADR3 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N48_pack_1
    );
  N119_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N119,
      O => N119_0
    );
  N119_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_1_pack_1,
      O => gestore_shift_b_add_sub(1)
    );
  gestore_shift_Mxor_b_add_sub_1_Result1 : X_LUT4
    generic map(
      INIT => X"3336",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => divisor_q(1),
      ADR2 => cu_current_state_FSM_FFd3_1026,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => gestore_shift_b_add_sub_1_pack_1
    );
  cu_en_r6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_r6_2477,
      O => cu_en_r6_0
    );
  cu_en_r6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_r5_O_pack_1,
      O => cu_en_r5_O
    );
  cu_en_r5 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X31Y29"
    )
    port map (
      ADR0 => start_IBUF_938,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => cu_current_state_FSM_FFd6_966,
      ADR3 => cu_current_state_FSM_FFd2_1062,
      O => cu_en_r5_O_pack_1
    );
  sum1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => sum1_3_Q,
      O => sum1_3_0
    );
  sum1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_61_SW0_O_pack_1,
      O => gestore_shift_rca_carry_8_61_SW0_O
    );
  gestore_shift_rca_carry_8_61_SW0 : X_LUT4
    generic map(
      INIT => X"077F",
      LOC => "SLICE_X31Y22"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(1),
      ADR1 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(2),
      O => gestore_shift_rca_carry_8_61_SW0_O_pack_1
    );
  r_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_6_Q,
      O => r_q_6_DXMUX_2534
    );
  r_q_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW4_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW4_O
    );
  r_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_6_CLKINV_2517
    );
  r_q_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_6_CEINV_2516
    );
  r_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_7_Q,
      O => r_q_7_DXMUX_2572
    );
  r_q_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW9_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW9_O
    );
  r_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_7_CLKINV_2554
    );
  r_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_7_CEINV_2553
    );
  gestore_shift_rca_carry_8_21_SW9 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X30Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N48,
      ADR2 => N80_0,
      ADR3 => N81,
      O => gestore_shift_rca_carry_8_21_SW9_O_pack_1
    );
  operation_counter_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_cmp_eq0000,
      O => operation_counter_hit_DYMUX_2596
    );
  operation_counter_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_hit_CLKINV_2587
    );
  operation_counter_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_and0000,
      O => operation_counter_hit_CEINV_2586
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_7_Q,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2636
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_1_Q,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2621
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2611
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N69_0,
      ADR2 => gestore_shift_rca_carry_8_bdd2,
      ADR3 => N68_0,
      O => remainder_x_1_Q
    );
  cu_current_state_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_GYMUX_2663,
      O => cu_current_state_FSM_FFd3_DYMUX_2664
    );
  cu_current_state_FSM_FFd3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_GYMUX_2663,
      O => en_c_0
    );
  cu_current_state_FSM_FFd3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c,
      O => cu_current_state_FSM_FFd3_GYMUX_2663
    );
  cu_current_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd3_CLKINV_2653
    );
  cu_current_state_FSM_Out81 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => VCC,
      ADR3 => VCC,
      O => en_c
    );
  cu_current_state_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_In,
      O => cu_current_state_FSM_FFd6_DXMUX_2714
    );
  cu_current_state_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd5_In,
      O => cu_current_state_FSM_FFd6_DYMUX_2700
    );
  cu_current_state_FSM_FFd6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd6_SRINVNOT
    );
  cu_current_state_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd6_CLKINV_2689
    );
  cu_current_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X30Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd6_966,
      ADR2 => VCC,
      ADR3 => start_IBUF_938,
      O => cu_current_state_FSM_FFd5_In
    );
  r_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_1_Q,
      O => r_q_1_DXMUX_2758
    );
  r_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_0_Q,
      O => r_q_1_DYMUX_2743
    );
  r_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_1_SRINVNOT
    );
  r_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_1_CLKINV_2733
    );
  r_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_1_CEINV_2732
    );
  rest_0_1 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => divisor_q(0),
      ADR3 => cu_bit_q_974,
      O => rest_0_Q
    );
  r_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_3_Q,
      O => r_q_3_DXMUX_2804
    );
  r_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_2_Q,
      O => r_q_3_DYMUX_2788
    );
  r_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_3_SRINVNOT
    );
  r_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_3_CLKINV_2779
    );
  r_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_3_CEINV_2778
    );
  rest_2_1 : X_LUT4
    generic map(
      INIT => X"96F0",
      LOC => "SLICE_X30Y19"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(2),
      ADR1 => gestore_shift_rca_carry_8_bdd10_0,
      ADR2 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_bit_q_974,
      O => rest_2_Q
    );
  r_q_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N158,
      O => N158_0
    );
  r_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_4_Q,
      O => r_q_4_DYMUX_2834
    );
  r_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_4_CLKINV_2825
    );
  r_q_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => r_q_4_CEINV_2824
    );
  operation_counter_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => operation_counter_count_2_DYMUX_2868
    );
  operation_counter_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_2_CLKINV_2858
    );
  operation_counter_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => operation_counter_count_2_CEINV_2857
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  N20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N23
    );
  divisor_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_7_INBUF,
      O => divisor_q_7_DXMUX_2920
    );
  divisor_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_6_INBUF,
      O => divisor_q_7_DYMUX_2911
    );
  divisor_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => divisor_q_7_SRINVNOT
    );
  divisor_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_7_CLKINV_2908
    );
  divisor_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => divisor_q_7_CEINV_2907
    );
  N61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  N61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  gestore_shift_rca_carry_8_41_SW2 : X_LUT4
    generic map(
      INIT => X"DE12",
      LOC => "SLICE_X31Y24"
    )
    port map (
      ADR0 => N50_0,
      ADR1 => en_c_0,
      ADR2 => N63,
      ADR3 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N127
    );
  N59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N156,
      O => N156_0
    );
  gestore_shift_rca_s_5_1_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"9595",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => divisor_q(5),
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(4),
      ADR3 => VCC,
      O => N156
    );
  N38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  N38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N41,
      O => N41_0
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X29Y18"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => N41
    );
  N136_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N136,
      O => N136_0
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"56A6",
      LOC => "SLICE_X29Y20"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_s,
      ADR2 => divisor_q(0),
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => N136
    );
  N90_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  N90_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => en_res_0
    );
  cu_bit_q_mux000111 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd3_1026,
      ADR2 => operation_counter_hit_927,
      ADR3 => VCC,
      O => en_res
    );
  cu_bit_q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_bit_q_mux0001,
      O => cu_bit_q_DXMUX_3062
    );
  cu_bit_q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => sum1_7_pack_1,
      O => sum1_7_Q
    );
  cu_bit_q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => cu_bit_q_CLKINV_3047
    );
  gestore_shift_rca_s_7_Q : X_LUT4
    generic map(
      INIT => X"E187",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(6),
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N43_0,
      ADR3 => gestore_shift_rca_carry_8_bdd2,
      O => sum1_7_pack_1
    );
  N97_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N97,
      O => N97_0
    );
  N97_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N77,
      O => N77_0
    );
  gestore_shift_rca_s_7_SW5 : X_LUT4
    generic map(
      INIT => X"FF95",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => operation_counter_hit_927,
      O => N77
    );
  N87_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N87,
      O => N87_0
    );
  N87_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  gestore_shift_rca_carry_8_21_SW11 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X28Y24"
    )
    port map (
      ADR0 => N48,
      ADR1 => VCC,
      ADR2 => N83_0,
      ADR3 => N84_0,
      O => N106
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_0_Q,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3142
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N72_pack_1,
      O => N72
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3125
    );
  cu_en_r16_SW3 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => N40_0,
      ADR1 => N41_0,
      ADR2 => cu_en_r6_0,
      ADR3 => N57,
      O => N72_pack_1
    );
  en_r_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r,
      O => en_r_0
    );
  en_r_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6_pack_1,
      O => gestore_shift_rca_carry_8_bdd6
    );
  gestore_shift_rca_carry_8_41 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N51_0,
      ADR2 => gestore_shift_rca_carry_8_bdd10_0,
      ADR3 => N50_0,
      O => gestore_shift_rca_carry_8_bdd6_pack_1
    );
  q_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => q_q_1_DXMUX_3193
    );
  q_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_bit_q_974,
      O => q_q_1_DYMUX_3184
    );
  q_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X28Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => q_q_1_SRINVNOT
    );
  q_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_1_CLKINV_3181
    );
  q_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => q_q_1_CEINV_3180
    );
  q_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_3_DXMUX_3221
    );
  q_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_3_DYMUX_3212
    );
  q_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => q_q_3_SRINVNOT
    );
  q_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_3_CLKINV_3209
    );
  q_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => q_q_3_CEINV_3208
    );
  q_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_5_DXMUX_3249
    );
  q_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_5_DYMUX_3240
    );
  q_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => q_q_5_SRINVNOT
    );
  q_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_5_CLKINV_3237
    );
  q_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y38",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => q_q_5_CEINV_3236
    );
  N130_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N130,
      O => N130_0
    );
  N130_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N138,
      O => N138_0
    );
  gestore_shift_rca_s_7_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"6966",
      LOC => "SLICE_X26Y20"
    )
    port map (
      ADR0 => divisor_q(7),
      ADR1 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => divisor_q(6),
      ADR3 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N138
    );
  N92_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N92,
      O => N92_0
    );
  gestore_shift_rca_s_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X27Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => gestore_shift_b_add_sub(2),
      O => N92
    );
  q_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_7_DXMUX_3313
    );
  q_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_7_DYMUX_3304
    );
  q_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => q_q_7_SRINVNOT
    );
  q_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_7_CLKINV_3301
    );
  q_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_0,
      O => q_q_7_CEINV_3300
    );
  cu_current_state_FSM_FFd1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1062,
      O => cu_current_state_FSM_FFd1_1_DYMUX_3328
    );
  cu_current_state_FSM_FFd1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd1_1_CLKINV_3325
    );
  cu_current_state_FSM_FFd1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1062,
      O => cu_current_state_FSM_FFd1_2_DYMUX_3342
    );
  cu_current_state_FSM_FFd1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd1_2_CLKINV_3339
    );
  cu_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_In,
      O => cu_current_state_FSM_FFd2_DXMUX_3387
    );
  cu_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1062,
      O => cu_current_state_FSM_FFd2_DYMUX_3373
    );
  cu_current_state_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW7_O_pack_2,
      O => gestore_shift_rca_carry_8_21_SW7_O
    );
  cu_current_state_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd2_SRINVNOT
    );
  cu_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd2_CLKINV_3362
    );
  gestore_shift_rca_carry_8_21_SW7 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X30Y27"
    )
    port map (
      ADR0 => N78,
      ADR1 => VCC,
      ADR2 => N77_0,
      ADR3 => N48,
      O => gestore_shift_rca_carry_8_21_SW7_O_pack_2
    );
  N47_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  N47_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_4_pack_1,
      O => gestore_shift_b_add_sub(4)
    );
  gestore_shift_Mxor_b_add_sub_4_Result1 : X_LUT4
    generic map(
      INIT => X"5556",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => divisor_q(4),
      ADR1 => cu_current_state_FSM_FFd4_1_1029,
      ADR2 => cu_current_state_FSM_FFd1_1_1030,
      ADR3 => cu_current_state_FSM_FFd3_1026,
      O => gestore_shift_b_add_sub_4_pack_1
    );
  cu_current_state_FSM_FFd4_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In_0,
      O => cu_current_state_FSM_FFd4_1_DYMUX_3425
    );
  cu_current_state_FSM_FFd4_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_1_CLKINV_3422
    );
  cu_current_state_FSM_FFd4_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In_0,
      O => cu_current_state_FSM_FFd4_2_DYMUX_3439
    );
  cu_current_state_FSM_FFd4_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_2_CLKINV_3436
    );
  gestore_shift_b_add_sub_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(5),
      O => gestore_shift_b_add_sub_5_0
    );
  gestore_shift_Mxor_b_add_sub_5_Result1 : X_LUT4
    generic map(
      INIT => X"5556",
      LOC => "SLICE_X28Y27"
    )
    port map (
      ADR0 => divisor_q(5),
      ADR1 => cu_current_state_FSM_FFd4_2_1078,
      ADR2 => cu_current_state_FSM_FFd1_2_1075,
      ADR3 => cu_current_state_FSM_FFd3_1026,
      O => gestore_shift_b_add_sub(5)
    );
  operation_counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_count(0),
      O => operation_counter_count_0_DXMUX_3487
    );
  operation_counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => operation_counter_count_0_DYMUX_3478
    );
  operation_counter_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => operation_counter_count_0_SRINVNOT
    );
  operation_counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_0_CLKINV_3467
    );
  operation_counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => operation_counter_count_0_CEINV_3466
    );
  N26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => N26
    );
  divisor_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_1_INBUF,
      O => divisor_q_1_DXMUX_3527
    );
  divisor_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_0_INBUF,
      O => divisor_q_1_DYMUX_3518
    );
  divisor_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => divisor_q_1_SRINVNOT
    );
  divisor_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_1_CLKINV_3515
    );
  divisor_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => divisor_q_1_CEINV_3514
    );
  divisor_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_3_INBUF,
      O => divisor_q_3_DXMUX_3555
    );
  divisor_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_2_INBUF,
      O => divisor_q_3_DYMUX_3546
    );
  divisor_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => divisor_q_3_SRINVNOT
    );
  divisor_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_3_CLKINV_3543
    );
  divisor_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => divisor_q_3_CEINV_3542
    );
  divisor_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_5_INBUF,
      O => divisor_q_5_DXMUX_3583
    );
  divisor_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_4_INBUF,
      O => divisor_q_5_DYMUX_3574
    );
  divisor_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => divisor_q_5_SRINVNOT
    );
  divisor_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_5_CLKINV_3571
    );
  divisor_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_966,
      O => divisor_q_5_CEINV_3570
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y25",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1909,
      CE => VCC,
      CLK => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1892,
      SET => GND,
      RST => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1914,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1914
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => N20_0,
      ADR1 => cu_en_r6_0,
      ADR2 => N56,
      ADR3 => gestore_shift_rca_s_7_SW1_O,
      O => N65
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW3 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => N20_0,
      ADR1 => cu_en_r6_0,
      ADR2 => N57,
      ADR3 => gestore_shift_rca_s_7_SW2_O,
      O => N66
    );
  gestore_shift_rca_carry_8_41_SW3 : X_LUT4
    generic map(
      INIT => X"8BB8",
      LOC => "SLICE_X31Y28"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => en_c_0,
      ADR2 => N63,
      ADR3 => N51_0,
      O => N128
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X29Y19"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O,
      O => N40
    );
  cu_current_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"EEFC",
      LOC => "SLICE_X29Y24"
    )
    port map (
      ADR0 => N106_0,
      ADR1 => cu_current_state_FSM_FFd5_1018,
      ADR2 => gestore_shift_rca_carry_8_21_SW10_O,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => cu_current_state_FSM_FFd4_In
    );
  cu_current_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DXMUX_2041,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_2024,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_FFX_RSTAND_2046,
      O => cu_current_state_FSM_FFd4_961
    );
  cu_current_state_FSM_FFd4_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd4_FFX_RSTAND_2046
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y17",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1762,
      CE => VCC,
      CLK => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1745,
      SET => GND,
      RST => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1767,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1767
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => N90_0,
      ADR1 => N75,
      ADR2 => N26_0,
      ADR3 => cu_en_r6_0,
      O => N151
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y29",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1798,
      CE => VCC,
      CLK => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1781,
      SET => GND,
      RST => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1803,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1803
    );
  remainder_chain_gen_4_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X28Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => N165
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y21",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1834,
      CE => VCC,
      CLK => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1816,
      SET => GND,
      RST => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1839,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1839
    );
  rest_5_1_G : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X31Y31"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_bit_q_974,
      ADR2 => a_s,
      ADR3 => N158_0,
      O => N171
    );
  r_q_5 : X_FF
    generic map(
      LOC => "SLICE_X31Y31",
      INIT => '0'
    )
    port map (
      I => r_q_5_DXMUX_1872,
      CE => r_q_5_CEINV_1854,
      CLK => r_q_5_CLKINV_1855,
      SET => GND,
      RST => r_q_5_FFX_RSTAND_1878,
      O => r_q(5)
    );
  r_q_5_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_5_FFX_RSTAND_1878
    );
  remainder_chain_gen_3_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X29Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => cu_current_state_FSM_FFd4_961,
      O => N169
    );
  remainder_chain_gen_2_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N167
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1363,
      CE => VCC,
      CLK => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1346,
      SET => GND,
      RST => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1368,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1368
    );
  quotient_chain_gen_1_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X28Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => dividendo_1_IBUF_945,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_1_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1399,
      CE => VCC,
      CLK => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1382,
      SET => GND,
      RST => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1404,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1404
    );
  quotient_chain_gen_2_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X29Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => dividendo_2_IBUF_947,
      ADR3 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_2_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y15",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1435,
      CE => VCC,
      CLK => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1418,
      SET => GND,
      RST => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1440,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1440
    );
  quotient_chain_gen_3_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X28Y16"
    )
    port map (
      ADR0 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => dividendo_3_IBUF_949,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => quotient_chain_gen_3_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y16",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1471,
      CE => VCC,
      CLK => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1454,
      SET => GND,
      RST => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1476,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1476
    );
  quotient_chain_gen_4_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => dividendo_4_IBUF_951,
      ADR2 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => quotient_chain_gen_4_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y30",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1507,
      CE => VCC,
      CLK => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1490,
      SET => GND,
      RST => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1512,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1512
    );
  quotient_chain_gen_5_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"CCD8",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => dividendo_5_IBUF_953,
      ADR3 => cu_current_state_FSM_FFd1_959,
      O => quotient_chain_gen_5_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1543,
      CE => VCC,
      CLK => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1526,
      SET => GND,
      RST => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1548,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1548
    );
  quotient_chain_gen_6_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X27Y28"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => dividendo_6_IBUF_954,
      O => quotient_chain_gen_6_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y28",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1579,
      CE => VCC,
      CLK => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1562,
      SET => GND,
      RST => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1584,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X27Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1584
    );
  cu_en_r16_SW2 : X_LUT4
    generic map(
      INIT => X"CDC8",
      LOC => "SLICE_X28Y19"
    )
    port map (
      ADR0 => cu_en_r6_0,
      ADR1 => N41_0,
      ADR2 => N56,
      ADR3 => N40_0,
      O => N71
    );
  gestore_shift_rca_carry_8_51_SW0 : X_LUT4
    generic map(
      INIT => X"E8C0",
      LOC => "SLICE_X31Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(3),
      ADR2 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(2),
      O => N50
    );
  gestore_shift_rca_carry_8_51_SW1 : X_LUT4
    generic map(
      INIT => X"FCE8",
      LOC => "SLICE_X30Y25"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(2),
      ADR1 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(3),
      ADR3 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N51
    );
  gestore_shift_rca_s_7_SW10 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X27Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd3_1026,
      ADR2 => operation_counter_hit_927,
      ADR3 => gestore_shift_rca_s_7_SW10_SW0_O,
      O => N84
    );
  gestore_shift_rca_carry_8_21_SW0 : X_LUT4
    generic map(
      INIT => X"C5CA",
      LOC => "SLICE_X26Y25"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_c_0,
      ADR3 => N45,
      O => N86
    );
  gestore_shift_rca_carry_8_21_SW2 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X29Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1026,
      ADR1 => N43_0,
      ADR2 => gestore_shift_rca_carry_8_21_SW2_SW2_O,
      ADR3 => operation_counter_hit_927,
      O => N89
    );
  gestore_shift_rca_carry_8_61 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X28Y23"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => gestore_shift_rca_carry_8_bdd12,
      ADR3 => gestore_shift_b_add_sub(1),
      O => gestore_shift_rca_carry_8_bdd10
    );
  quotient_chain_gen_0_sc_in_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X29Y14"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => dividendo_0_IBUF_942,
      ADR3 => cu_bit_q_974,
      O => quotient_chain_gen_0_sc_in_inst_mux2_1_X
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y14",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1615,
      CE => VCC,
      CLK => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1598,
      SET => GND,
      RST => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1620,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1620
    );
  gestore_shift_rca_carry_8_21_G : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X30Y23"
    )
    port map (
      ADR0 => N48,
      ADR1 => N47_0,
      ADR2 => N51_0,
      ADR3 => VCC,
      O => N173
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X27Y23"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => N90_0,
      ADR2 => cu_en_r6_0,
      ADR3 => N87_0,
      O => N149
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1726,
      CE => VCC,
      CLK => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1709,
      SET => GND,
      RST => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1731,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X27Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1731
    );
  quotient_chain_gen_7_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X29Y17"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => dividendo_7_IBUF_955,
      ADR2 => cu_current_state_FSM_FFd4_961,
      ADR3 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_7_sc_out_inst_mux2_1_X
    );
  rest_6_1 : X_LUT4
    generic map(
      INIT => X"3C5A",
      LOC => "SLICE_X31Y33"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_21_SW4_O,
      ADR1 => N97_0,
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => rest_6_Q
    );
  r_q_6 : X_FF
    generic map(
      LOC => "SLICE_X31Y33",
      INIT => '0'
    )
    port map (
      I => r_q_6_DXMUX_2534,
      CE => r_q_6_CEINV_2516,
      CLK => r_q_6_CLKINV_2517,
      SET => GND,
      RST => r_q_6_FFX_RSTAND_2540,
      O => r_q(6)
    );
  r_q_6_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_6_FFX_RSTAND_2540
    );
  rest_7_1 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X30Y33"
    )
    port map (
      ADR0 => N102_0,
      ADR1 => VCC,
      ADR2 => gestore_shift_rca_carry_8_21_SW9_O,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => rest_7_Q
    );
  r_q_7 : X_FF
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => '0'
    )
    port map (
      I => r_q_7_DXMUX_2572,
      CE => r_q_7_CEINV_2553,
      CLK => r_q_7_CLKINV_2554,
      SET => GND,
      RST => r_q_7_FFX_RSTAND_2578,
      O => r_q(7)
    );
  r_q_7_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_7_FFX_RSTAND_2578
    );
  operation_counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => operation_counter_count(0),
      ADR1 => operation_counter_count(1),
      ADR2 => VCC,
      ADR3 => operation_counter_count(2),
      O => operation_counter_hit_cmp_eq0000
    );
  operation_counter_hit : X_FF
    generic map(
      LOC => "SLICE_X28Y32",
      INIT => '0'
    )
    port map (
      I => operation_counter_hit_DYMUX_2596,
      CE => operation_counter_hit_CEINV_2586,
      CLK => operation_counter_hit_CLKINV_2587,
      SET => GND,
      RST => GND,
      O => operation_counter_hit_927
    );
  remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2621,
      CE => VCC,
      CLK => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2611,
      SET => GND,
      RST => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      O => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd2,
      ADR1 => VCC,
      ADR2 => N65_0,
      ADR3 => N66_0,
      O => remainder_x_7_Q
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2636,
      CE => VCC,
      CLK => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2611,
      SET => GND,
      RST => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q
    );
  gestore_shift_rca_s_7_SW8_SW0 : X_LUT4
    generic map(
      INIT => X"CCC3",
      LOC => "SLICE_X30Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => divisor_q(7),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(6),
      O => N162
    );
  gestore_shift_rca_s_7_SW0 : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X30Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => divisor_q(7),
      ADR2 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => a_s,
      O => N43
    );
  gestore_shift_rca_s_7_SW7 : X_LUT4
    generic map(
      INIT => X"7B84",
      LOC => "SLICE_X31Y32"
    )
    port map (
      ADR0 => a_s,
      ADR1 => cu_bit_q_974,
      ADR2 => gestore_shift_rca_s_7_SW7_SW0_O,
      ADR3 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      O => N80
    );
  cu_en_r16_SW0 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X29Y21"
    )
    port map (
      ADR0 => N38_0,
      ADR1 => cu_en_r6_0,
      ADR2 => N56,
      ADR3 => N37,
      O => N68
    );
  gestore_shift_rca_s_7_SW9 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X26Y24"
    )
    port map (
      ADR0 => operation_counter_hit_927,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd3_1026,
      ADR3 => gestore_shift_rca_s_7_SW9_SW0_O,
      O => N83
    );
  cu_en_r16_SW1 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X28Y20"
    )
    port map (
      ADR0 => N37,
      ADR1 => N38_0,
      ADR2 => cu_en_r6_0,
      ADR3 => N57,
      O => N69
    );
  q_q_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      I => q_q_7_DYMUX_3304,
      CE => q_q_7_CEINV_3300,
      CLK => q_q_7_CLKINV_3301,
      SET => GND,
      RST => q_q_7_SRINVNOT,
      O => q_q(6)
    );
  q_q_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      I => q_q_7_DXMUX_3313,
      CE => q_q_7_CEINV_3300,
      CLK => q_q_7_CLKINV_3301,
      SET => GND,
      RST => q_q_7_SRINVNOT,
      O => q_q(7)
    );
  cu_current_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd1_1_DYMUX_3328,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd1_1_CLKINV_3325,
      SET => GND,
      RST => cu_current_state_FSM_FFd1_1_FFY_RSTAND_3333,
      O => cu_current_state_FSM_FFd1_1_1030
    );
  cu_current_state_FSM_FFd1_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd1_1_FFY_RSTAND_3333
    );
  cu_current_state_FSM_FFd1_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y27",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd1_2_DYMUX_3342,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd1_2_CLKINV_3339,
      SET => GND,
      RST => cu_current_state_FSM_FFd1_2_FFY_RSTAND_3347,
      O => cu_current_state_FSM_FFd1_2_1075
    );
  cu_current_state_FSM_FFd1_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd1_2_FFY_RSTAND_3347
    );
  cu_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DYMUX_3373,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_3362,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd1_959
    );
  cu_current_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"082A",
      LOC => "SLICE_X30Y27"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1026,
      ADR1 => gestore_shift_rca_carry_8_bdd6,
      ADR2 => gestore_shift_rca_carry_8_21_SW7_O,
      ADR3 => N99_0,
      O => cu_current_state_FSM_FFd2_In
    );
  cu_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DXMUX_3387,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_3362,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd2_1062
    );
  gestore_shift_rca_carry_8_31_SW0 : X_LUT4
    generic map(
      INIT => X"E8A0",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_5_0,
      ADR3 => gestore_shift_b_add_sub(4),
      O => N47
    );
  cu_current_state_FSM_FFd4_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_1_DYMUX_3425,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_1_CLKINV_3422,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_1_FFY_RSTAND_3430,
      O => cu_current_state_FSM_FFd4_1_1029
    );
  cu_current_state_FSM_FFd4_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd4_1_FFY_RSTAND_3430
    );
  cu_current_state_FSM_FFd4_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y24",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_2_DYMUX_3439,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_2_CLKINV_3436,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_2_FFY_RSTAND_3444,
      O => cu_current_state_FSM_FFd4_2_1078
    );
  cu_current_state_FSM_FFd4_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X27Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd4_2_FFY_RSTAND_3444
    );
  operation_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => operation_counter_count(1),
      ADR3 => operation_counter_count(0),
      O => Result(1)
    );
  operation_counter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DYMUX_3478,
      CE => operation_counter_count_0_CEINV_3466,
      CLK => operation_counter_count_0_CLKINV_3467,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(1)
    );
  operation_counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DXMUX_3487,
      CE => operation_counter_count_0_CEINV_3466,
      CLK => operation_counter_count_0_CLKINV_3467,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(0)
    );
  gestore_shift_rca_carry_8_21_SW6 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X30Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N77_0,
      ADR2 => N78,
      ADR3 => N47_0,
      O => N99
    );
  gestore_shift_rca_carry_8_21_SW8 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X30Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N47_0,
      ADR2 => N80_0,
      ADR3 => N81,
      O => N102
    );
  gestore_shift_rca_carry_8_21_SW3_SW2 : X_LUT4
    generic map(
      INIT => X"033F",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => N48,
      O => N116
    );
  gestore_shift_rca_carry_8_61_SW1 : X_LUT4
    generic map(
      INIT => X"1117",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(2),
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(1),
      O => N119
    );
  cu_en_r6 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X31Y29"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_1018,
      ADR1 => cu_current_state_FSM_FFd4_961,
      ADR2 => VCC,
      ADR3 => cu_en_r5_O,
      O => cu_en_r6_2477
    );
  gestore_shift_rca_s_3_1 : X_LUT4
    generic map(
      INIT => X"A965",
      LOC => "SLICE_X31Y22"
    )
    port map (
      ADR0 => N61_0,
      ADR1 => gestore_shift_rca_carry_8_bdd12,
      ADR2 => gestore_shift_rca_carry_8_61_SW0_O,
      ADR3 => N119_0,
      O => sum1_3_Q
    );
  gestore_shift_rca_carry_8_21_SW4 : X_LUT4
    generic map(
      INIT => X"0CC0",
      LOC => "SLICE_X31Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_bit_q_974,
      ADR2 => N47_0,
      ADR3 => gestore_shift_b_add_sub(6),
      O => gestore_shift_rca_carry_8_21_SW4_O_pack_1
    );
  r_q_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => '0'
    )
    port map (
      I => r_q_3_DYMUX_2788,
      CE => r_q_3_CEINV_2778,
      CLK => r_q_3_CLKINV_2779,
      SET => GND,
      RST => r_q_3_SRINVNOT,
      O => r_q(2)
    );
  rest_3_1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X30Y19"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => sum1_3_0,
      ADR2 => VCC,
      ADR3 => cu_bit_q_974,
      O => rest_3_Q
    );
  r_q_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y19",
      INIT => '0'
    )
    port map (
      I => r_q_3_DXMUX_2804,
      CE => r_q_3_CEINV_2778,
      CLK => r_q_3_CLKINV_2779,
      SET => GND,
      RST => r_q_3_SRINVNOT,
      O => r_q(3)
    );
  rest_4_1 : X_LUT4
    generic map(
      INIT => X"D728",
      LOC => "SLICE_X30Y30"
    )
    port map (
      ADR0 => cu_bit_q_974,
      ADR1 => gestore_shift_b_add_sub(4),
      ADR2 => gestore_shift_rca_carry_8_bdd6,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => rest_4_Q
    );
  r_q_4 : X_FF
    generic map(
      LOC => "SLICE_X30Y30",
      INIT => '0'
    )
    port map (
      I => r_q_4_DYMUX_2834,
      CE => r_q_4_CEINV_2824,
      CLK => r_q_4_CLKINV_2825,
      SET => GND,
      RST => r_q_4_FFY_RSTAND_2840,
      O => r_q(4)
    );
  r_q_4_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => r_q_4_FFY_RSTAND_2840
    );
  gestore_shift_rca_s_5_1_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"FC03",
      LOC => "SLICE_X30Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gestore_shift_b_add_sub(4),
      ADR2 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => divisor_q(5),
      O => N158
    );
  operation_counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X28Y33"
    )
    port map (
      ADR0 => operation_counter_count(0),
      ADR1 => operation_counter_count(1),
      ADR2 => VCC,
      ADR3 => operation_counter_count(2),
      O => Result(2)
    );
  operation_counter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_2_DYMUX_2868,
      CE => operation_counter_count_2_CEINV_2857,
      CLK => operation_counter_count_2_CLKINV_2858,
      SET => GND,
      RST => operation_counter_count_2_FFY_RSTAND_2874,
      O => operation_counter_count(2)
    );
  operation_counter_count_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => operation_counter_count_2_FFY_RSTAND_2874
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X26Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_959,
      ADR1 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd4_961,
      ADR3 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N20
    );
  divisor_q_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y18",
      INIT => '0'
    )
    port map (
      I => divisor_q_1_DYMUX_3518,
      CE => divisor_q_1_CEINV_3514,
      CLK => divisor_q_1_CLKINV_3515,
      SET => GND,
      RST => divisor_q_1_SRINVNOT,
      O => divisor_q(0)
    );
  divisor_q_1 : X_FF
    generic map(
      LOC => "SLICE_X31Y18",
      INIT => '0'
    )
    port map (
      I => divisor_q_1_DXMUX_3527,
      CE => divisor_q_1_CEINV_3514,
      CLK => divisor_q_1_CLKINV_3515,
      SET => GND,
      RST => divisor_q_1_SRINVNOT,
      O => divisor_q(1)
    );
  divisor_q_2 : X_FF
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => '0'
    )
    port map (
      I => divisor_q_3_DYMUX_3546,
      CE => divisor_q_3_CEINV_3542,
      CLK => divisor_q_3_CLKINV_3543,
      SET => GND,
      RST => divisor_q_3_SRINVNOT,
      O => divisor_q(2)
    );
  divisor_q_3 : X_FF
    generic map(
      LOC => "SLICE_X31Y23",
      INIT => '0'
    )
    port map (
      I => divisor_q_3_DXMUX_3555,
      CE => divisor_q_3_CEINV_3542,
      CLK => divisor_q_3_CLKINV_3543,
      SET => GND,
      RST => divisor_q_3_SRINVNOT,
      O => divisor_q(3)
    );
  divisor_q_4 : X_FF
    generic map(
      LOC => "SLICE_X29Y28",
      INIT => '0'
    )
    port map (
      I => divisor_q_5_DYMUX_3574,
      CE => divisor_q_5_CEINV_3570,
      CLK => divisor_q_5_CLKINV_3571,
      SET => GND,
      RST => divisor_q_5_SRINVNOT,
      O => divisor_q(4)
    );
  cu_current_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd3_DYMUX_2664,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd3_CLKINV_2653,
      SET => GND,
      RST => cu_current_state_FSM_FFd3_FFY_RSTAND_2669,
      O => cu_current_state_FSM_FFd3_1026
    );
  cu_current_state_FSM_FFd3_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => cu_current_state_FSM_FFd3_FFY_RSTAND_2669
    );
  operation_counter_hit_and00001 : X_LUT4
    generic map(
      INIT => X"E0E0",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => reset_IBUF_943,
      ADR3 => VCC,
      O => operation_counter_hit_and0000
    );
  cu_current_state_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd6_DYMUX_2700,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd6_CLKINV_2689,
      SET => GND,
      RST => cu_current_state_FSM_FFd6_SRINVNOT,
      O => cu_current_state_FSM_FFd5_1018
    );
  cu_current_state_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"A0EC",
      LOC => "SLICE_X30Y28"
    )
    port map (
      ADR0 => operation_counter_hit_927,
      ADR1 => cu_current_state_FSM_FFd6_966,
      ADR2 => cu_current_state_FSM_FFd3_1026,
      ADR3 => start_IBUF_938,
      O => cu_current_state_FSM_FFd6_In
    );
  cu_current_state_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '1'
    )
    port map (
      I => cu_current_state_FSM_FFd6_DXMUX_2714,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd6_CLKINV_2689,
      SET => cu_current_state_FSM_FFd6_SRINVNOT,
      RST => GND,
      O => cu_current_state_FSM_FFd6_966
    );
  r_q_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y18",
      INIT => '0'
    )
    port map (
      I => r_q_1_DYMUX_2743,
      CE => r_q_1_CEINV_2732,
      CLK => r_q_1_CLKINV_2733,
      SET => GND,
      RST => r_q_1_SRINVNOT,
      O => r_q(0)
    );
  rest_1_1 : X_LUT4
    generic map(
      INIT => X"C66C",
      LOC => "SLICE_X30Y18"
    )
    port map (
      ADR0 => cu_bit_q_974,
      ADR1 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_rca_carry_8_bdd12,
      ADR3 => gestore_shift_b_add_sub(1),
      O => rest_1_Q
    );
  r_q_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y18",
      INIT => '0'
    )
    port map (
      I => r_q_1_DXMUX_2758,
      CE => r_q_1_CEINV_2732,
      CLK => r_q_1_CLKINV_2733,
      SET => GND,
      RST => r_q_1_SRINVNOT,
      O => r_q(1)
    );
  divisor_q_6 : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => divisor_q_7_DYMUX_2911,
      CE => divisor_q_7_CEINV_2907,
      CLK => divisor_q_7_CLKINV_2908,
      SET => GND,
      RST => divisor_q_7_SRINVNOT,
      O => divisor_q(6)
    );
  divisor_q_7 : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => divisor_q_7_DXMUX_2920,
      CE => divisor_q_7_CEINV_2907,
      CLK => divisor_q_7_CLKINV_2908,
      SET => GND,
      RST => divisor_q_7_SRINVNOT,
      O => divisor_q(7)
    );
  gestore_shift_rca_carry_8_51_SW2 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X31Y24"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N61
    );
  gestore_shift_rca_carry_8_31_SW2 : X_LUT4
    generic map(
      INIT => X"5AA5",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => divisor_q(5),
      ADR1 => VCC,
      ADR2 => a_s,
      ADR3 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N59
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X29Y18"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_961,
      ADR1 => cu_current_state_FSM_FFd1_959,
      ADR2 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => N38
    );
  gestore_shift_rca_carry_8_21_SW3 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => cu_current_state_FSM_FFd3_1026,
      ADR2 => operation_counter_hit_927,
      ADR3 => N116_0,
      O => N90
    );
  cu_bit_q_mux00012 : X_LUT4
    generic map(
      INIT => X"FCFE",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => en_res_0,
      ADR1 => cu_current_state_FSM_FFd2_1062,
      ADR2 => cu_current_state_FSM_FFd1_959,
      ADR3 => sum1_7_Q,
      O => cu_bit_q_mux0001
    );
  cu_bit_q : X_LATCHE
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => '0'
    )
    port map (
      I => cu_bit_q_DXMUX_3062,
      GE => VCC,
      CLK => NlwInverterSignal_cu_bit_q_CLK,
      SET => GND,
      RST => GND,
      O => cu_bit_q_974
    );
  gestore_shift_rca_carry_8_21_SW5 : X_LUT4
    generic map(
      INIT => X"30C0",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N48,
      ADR2 => cu_bit_q_974,
      ADR3 => gestore_shift_b_add_sub(6),
      O => N97
    );
  gestore_shift_rca_carry_8_21_SW1 : X_LUT4
    generic map(
      INIT => X"CC5A",
      LOC => "SLICE_X28Y24"
    )
    port map (
      ADR0 => N48,
      ADR1 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N45,
      ADR3 => en_c_0,
      O => N87
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X28Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => gestore_shift_rca_carry_8_bdd2,
      ADR2 => N71_0,
      ADR3 => N72,
      O => remainder_x_0_Q
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y18",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3142,
      CE => VCC,
      CLK => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3125,
      SET => GND,
      RST => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3147,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_943,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3147
    );
  cu_en_r16 : X_LUT4
    generic map(
      INIT => X"FAEE",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => cu_en_r6_0,
      ADR1 => N89_0,
      ADR2 => N90_0,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => en_r
    );
  q_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      I => q_q_1_DYMUX_3184,
      CE => q_q_1_CEINV_3180,
      CLK => q_q_1_CLKINV_3181,
      SET => GND,
      RST => q_q_1_SRINVNOT,
      O => q_q(0)
    );
  q_q_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => '0'
    )
    port map (
      I => q_q_1_DXMUX_3193,
      CE => q_q_1_CEINV_3180,
      CLK => q_q_1_CLKINV_3181,
      SET => GND,
      RST => q_q_1_SRINVNOT,
      O => q_q(1)
    );
  q_q_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y35",
      INIT => '0'
    )
    port map (
      I => q_q_3_DYMUX_3212,
      CE => q_q_3_CEINV_3208,
      CLK => q_q_3_CLKINV_3209,
      SET => GND,
      RST => q_q_3_SRINVNOT,
      O => q_q(2)
    );
  q_q_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y35",
      INIT => '0'
    )
    port map (
      I => q_q_3_DXMUX_3221,
      CE => q_q_3_CEINV_3208,
      CLK => q_q_3_CLKINV_3209,
      SET => GND,
      RST => q_q_3_SRINVNOT,
      O => q_q(3)
    );
  q_q_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      I => q_q_5_DYMUX_3240,
      CE => q_q_5_CEINV_3236,
      CLK => q_q_5_CLKINV_3237,
      SET => GND,
      RST => q_q_5_SRINVNOT,
      O => q_q(4)
    );
  q_q_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y38",
      INIT => '0'
    )
    port map (
      I => q_q_5_DXMUX_3249,
      CE => q_q_5_CEINV_3236,
      CLK => q_q_5_CLKINV_3237,
      SET => GND,
      RST => q_q_5_SRINVNOT,
      O => q_q(5)
    );
  gestore_shift_rca_s_7_SW4_SW0 : X_LUT4
    generic map(
      INIT => X"9699",
      LOC => "SLICE_X26Y20"
    )
    port map (
      ADR0 => divisor_q(7),
      ADR1 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => divisor_q(6),
      O => N130
    );
  divisor_q_5 : X_FF
    generic map(
      LOC => "SLICE_X29Y28",
      INIT => '0'
    )
    port map (
      I => divisor_q_5_DXMUX_3583,
      CE => divisor_q_5_CEINV_3570,
      CLK => divisor_q_5_CLKINV_3571,
      SET => GND,
      RST => divisor_q_5_SRINVNOT,
      O => divisor_q(5)
    );
  resto_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(0),
      O => resto_0_O
    );
  resto_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(1),
      O => resto_1_O
    );
  resto_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(2),
      O => resto_2_O
    );
  resto_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(3),
      O => resto_3_O
    );
  resto_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(4),
      O => resto_4_O
    );
  resto_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(5),
      O => resto_5_O
    );
  finish_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_927,
      O => finish_O
    );
  resto_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(6),
      O => resto_6_O
    );
  resto_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(7),
      O => resto_7_O
    );
  quoziente_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(0),
      O => quoziente_0_O
    );
  quoziente_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(1),
      O => quoziente_1_O
    );
  quoziente_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(2),
      O => quoziente_2_O
    );
  quoziente_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(3),
      O => quoziente_3_O
    );
  quoziente_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(4),
      O => quoziente_4_O
    );
  quoziente_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(5),
      O => quoziente_5_O
    );
  quoziente_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(6),
      O => quoziente_6_O
    );
  quoziente_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(7),
      O => quoziente_7_O
    );
  NlwBlock_divisore_restoring_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_divisore_restoring_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_cu_bit_q_CLK : X_INV
    port map (
      I => cu_bit_q_CLKINV_3047,
      O => NlwInverterSignal_cu_bit_q_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

