--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Booth_multiplier_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 10 23:56:05 2018
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
  signal start_IBUF_942 : STD_LOGIC; 
  signal dividendo_0_IBUF_946 : STD_LOGIC; 
  signal reset_IBUF_947 : STD_LOGIC; 
  signal dividendo_1_IBUF_949 : STD_LOGIC; 
  signal dividendo_2_IBUF_951 : STD_LOGIC; 
  signal dividendo_3_IBUF_953 : STD_LOGIC; 
  signal dividendo_4_IBUF_955 : STD_LOGIC; 
  signal dividendo_5_IBUF_957 : STD_LOGIC; 
  signal dividendo_6_IBUF_958 : STD_LOGIC; 
  signal dividendo_7_IBUF_959 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal en_r_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_963 : STD_LOGIC; 
  signal remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_965 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd10_0 : STD_LOGIC; 
  signal en_c_0 : STD_LOGIC; 
  signal N92_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_970 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_bit_q_978 : STD_LOGIC; 
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
  signal en_res : STD_LOGIC; 
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
  signal cu_current_state_FSM_FFd5_1022 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW10_O : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal N84_0 : STD_LOGIC; 
  signal N83_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In_0 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_1030 : STD_LOGIC; 
  signal N162_0 : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_1033 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_1034 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW7_SW0_O : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N136_0 : STD_LOGIC; 
  signal N68_0 : STD_LOGIC; 
  signal operation_counter_hit_1042 : STD_LOGIC; 
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
  signal cu_current_state_FSM_FFd2_1067 : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_61_SW0_O : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW4_O : STD_LOGIC; 
  signal N97_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW9_O : STD_LOGIC; 
  signal sum1_7_Q : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_1080 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW7_O : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_1083 : STD_LOGIC; 
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
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1368 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1366 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1359 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1351 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1404 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1402 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1395 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1393 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1387 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1440 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1438 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1431 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1429 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1423 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1476 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1474 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1467 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1465 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1459 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1512 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1510 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1503 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1501 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1495 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1548 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1546 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1539 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1537 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1531 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1584 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1582 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1575 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1573 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1567 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1620 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1618 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1611 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1609 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1603 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd2_F5MUX_1650 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd2_BXINV_1642 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N74_F5MUX_1675 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N74_BXINV_1668 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N75_F5MUX_1700 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N75_BXINV_1693 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1731 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1729 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1722 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1714 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1767 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1765 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_mux2_1_X : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1758 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1756 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1750 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1803 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1801 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1794 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1786 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1839 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1837 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1830 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1821 : STD_LOGIC; 
  signal r_q_5_DXMUX_1877 : STD_LOGIC; 
  signal r_q_5_F5MUX_1875 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal r_q_5_BXINV_1868 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal r_q_5_CLKINV_1860 : STD_LOGIC; 
  signal r_q_5_CEINV_1859 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1914 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1912 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1905 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1897 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW1_O_pack_1 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal gestore_shift_rca_s_7_SW2_O_pack_1 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N63_pack_1 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DXMUX_2046 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_FXMUX_2045 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW10_O_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_CLKINV_2029 : STD_LOGIC; 
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
  signal cu_en_r6_2482 : STD_LOGIC; 
  signal cu_en_r5_O_pack_1 : STD_LOGIC; 
  signal sum1_3_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_61_SW0_O_pack_1 : STD_LOGIC; 
  signal r_q_6_DXMUX_2539 : STD_LOGIC; 
  signal rest_6_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW4_O_pack_1 : STD_LOGIC; 
  signal r_q_6_CLKINV_2522 : STD_LOGIC; 
  signal r_q_6_CEINV_2521 : STD_LOGIC; 
  signal r_q_7_DXMUX_2577 : STD_LOGIC; 
  signal rest_7_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW9_O_pack_1 : STD_LOGIC; 
  signal r_q_7_CLKINV_2559 : STD_LOGIC; 
  signal r_q_7_CEINV_2558 : STD_LOGIC; 
  signal operation_counter_hit_DYMUX_2601 : STD_LOGIC; 
  signal operation_counter_hit_cmp_eq0000 : STD_LOGIC; 
  signal operation_counter_hit_CLKINV_2592 : STD_LOGIC; 
  signal operation_counter_hit_CEINV_2591 : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2641 : STD_LOGIC; 
  signal remainder_x_7_Q : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2626 : STD_LOGIC; 
  signal remainder_x_1_Q : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2616 : STD_LOGIC; 
  signal operation_counter_hit_and0000 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_DYMUX_2669 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_GYMUX_2668 : STD_LOGIC; 
  signal en_c : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_CLKINV_2658 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_DXMUX_2719 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_DYMUX_2705 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd6_CLKINV_2694 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal end_f_q_0_DYMUX_2749 : STD_LOGIC; 
  signal end_f_q_0_GYMUX_2748 : STD_LOGIC; 
  signal en_res_pack_3 : STD_LOGIC; 
  signal end_f_q_0_CLKINV_2738 : STD_LOGIC; 
  signal end_f_q_0_CEINV_2737 : STD_LOGIC; 
  signal r_q_1_DXMUX_2802 : STD_LOGIC; 
  signal rest_1_Q : STD_LOGIC; 
  signal r_q_1_DYMUX_2787 : STD_LOGIC; 
  signal rest_0_Q : STD_LOGIC; 
  signal r_q_1_SRINVNOT : STD_LOGIC; 
  signal r_q_1_CLKINV_2777 : STD_LOGIC; 
  signal r_q_1_CEINV_2776 : STD_LOGIC; 
  signal r_q_3_DXMUX_2848 : STD_LOGIC; 
  signal rest_3_Q : STD_LOGIC; 
  signal r_q_3_DYMUX_2832 : STD_LOGIC; 
  signal rest_2_Q : STD_LOGIC; 
  signal r_q_3_SRINVNOT : STD_LOGIC; 
  signal r_q_3_CLKINV_2823 : STD_LOGIC; 
  signal r_q_3_CEINV_2822 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal r_q_4_DYMUX_2878 : STD_LOGIC; 
  signal rest_4_Q : STD_LOGIC; 
  signal r_q_4_CLKINV_2869 : STD_LOGIC; 
  signal r_q_4_CEINV_2868 : STD_LOGIC; 
  signal operation_counter_count_2_DYMUX_2912 : STD_LOGIC; 
  signal operation_counter_count_2_CLKINV_2902 : STD_LOGIC; 
  signal operation_counter_count_2_CEINV_2901 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal divisor_q_7_DXMUX_2964 : STD_LOGIC; 
  signal divisor_q_7_DYMUX_2955 : STD_LOGIC; 
  signal divisor_q_7_SRINVNOT : STD_LOGIC; 
  signal divisor_q_7_CLKINV_2952 : STD_LOGIC; 
  signal divisor_q_7_CEINV_2951 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal cu_bit_q_DXMUX_3082 : STD_LOGIC; 
  signal cu_bit_q_mux0001 : STD_LOGIC; 
  signal sum1_7_pack_1 : STD_LOGIC; 
  signal cu_bit_q_CLKINV_3067 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3162 : STD_LOGIC; 
  signal remainder_x_0_Q : STD_LOGIC; 
  signal N72_pack_1 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3145 : STD_LOGIC; 
  signal en_r : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_bdd6_pack_1 : STD_LOGIC; 
  signal q_q_1_DXMUX_3213 : STD_LOGIC; 
  signal q_q_1_DYMUX_3204 : STD_LOGIC; 
  signal q_q_1_SRINVNOT : STD_LOGIC; 
  signal q_q_1_CLKINV_3201 : STD_LOGIC; 
  signal q_q_1_CEINV_3200 : STD_LOGIC; 
  signal q_q_3_DXMUX_3241 : STD_LOGIC; 
  signal q_q_3_DYMUX_3232 : STD_LOGIC; 
  signal q_q_3_SRINVNOT : STD_LOGIC; 
  signal q_q_3_CLKINV_3229 : STD_LOGIC; 
  signal q_q_3_CEINV_3228 : STD_LOGIC; 
  signal q_q_5_DXMUX_3269 : STD_LOGIC; 
  signal q_q_5_DYMUX_3260 : STD_LOGIC; 
  signal q_q_5_SRINVNOT : STD_LOGIC; 
  signal q_q_5_CLKINV_3257 : STD_LOGIC; 
  signal q_q_5_CEINV_3256 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal q_q_7_DXMUX_3333 : STD_LOGIC; 
  signal q_q_7_DYMUX_3324 : STD_LOGIC; 
  signal q_q_7_SRINVNOT : STD_LOGIC; 
  signal q_q_7_CLKINV_3321 : STD_LOGIC; 
  signal q_q_7_CEINV_3320 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_DYMUX_3348 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_CLKINV_3345 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_DYMUX_3362 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_CLKINV_3359 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DXMUX_3407 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DYMUX_3393 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_21_SW7_O_pack_2 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_CLKINV_3382 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_DYMUX_3445 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_CLKINV_3442 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_DYMUX_3459 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_CLKINV_3456 : STD_LOGIC; 
  signal operation_counter_count_0_DXMUX_3507 : STD_LOGIC; 
  signal operation_counter_count_0_DYMUX_3498 : STD_LOGIC; 
  signal operation_counter_count_0_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_0_CLKINV_3487 : STD_LOGIC; 
  signal operation_counter_count_0_CEINV_3486 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal divisor_q_1_DXMUX_3547 : STD_LOGIC; 
  signal divisor_q_1_DYMUX_3538 : STD_LOGIC; 
  signal divisor_q_1_SRINVNOT : STD_LOGIC; 
  signal divisor_q_1_CLKINV_3535 : STD_LOGIC; 
  signal divisor_q_1_CEINV_3534 : STD_LOGIC; 
  signal divisor_q_3_DXMUX_3575 : STD_LOGIC; 
  signal divisor_q_3_DYMUX_3566 : STD_LOGIC; 
  signal divisor_q_3_SRINVNOT : STD_LOGIC; 
  signal divisor_q_3_CLKINV_3563 : STD_LOGIC; 
  signal divisor_q_3_CEINV_3562 : STD_LOGIC; 
  signal divisor_q_5_FFX_RST : STD_LOGIC; 
  signal divisor_q_5_FFY_RST : STD_LOGIC; 
  signal divisor_q_5_DXMUX_3603 : STD_LOGIC; 
  signal divisor_q_5_DYMUX_3594 : STD_LOGIC; 
  signal divisor_q_5_SRINVNOT : STD_LOGIC; 
  signal divisor_q_5_CLKINV_3591 : STD_LOGIC; 
  signal divisor_q_5_CEINV_3590 : STD_LOGIC; 
  signal remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1919 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_FFX_RSTAND_2051 : STD_LOGIC; 
  signal remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1373 : STD_LOGIC; 
  signal quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1409 : STD_LOGIC; 
  signal quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1445 : STD_LOGIC; 
  signal quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1481 : STD_LOGIC; 
  signal quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1517 : STD_LOGIC; 
  signal quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1553 : STD_LOGIC; 
  signal quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1589 : STD_LOGIC; 
  signal quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1772 : STD_LOGIC; 
  signal remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1808 : STD_LOGIC; 
  signal remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1844 : STD_LOGIC; 
  signal r_q_5_FFX_RSTAND_1883 : STD_LOGIC; 
  signal quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1625 : STD_LOGIC; 
  signal remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1736 : STD_LOGIC; 
  signal r_q_6_FFX_RSTAND_2545 : STD_LOGIC; 
  signal r_q_7_FFX_RSTAND_2583 : STD_LOGIC; 
  signal remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3167 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_FFY_RSTAND_2674 : STD_LOGIC; 
  signal end_f_q_0_FFY_RSTAND_2755 : STD_LOGIC; 
  signal operation_counter_count_2_FFY_RSTAND_2918 : STD_LOGIC; 
  signal r_q_4_FFY_RSTAND_2884 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_1_FFY_RSTAND_3353 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd1_2_FFY_RSTAND_3367 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_1_FFY_RSTAND_3450 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2_FFY_RSTAND_3464 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_cu_bit_q_CLK : STD_LOGIC; 
  signal r_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal end_f_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal q_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal gestore_shift_b_add_sub : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal divisor_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal operation_counter_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  resto_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => resto_0_O,
      O => resto(0)
    );
  resto_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => resto_1_O,
      O => resto(1)
    );
  resto_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => resto_2_O,
      O => resto(2)
    );
  resto_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => resto_3_O,
      O => resto(3)
    );
  resto_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => resto_4_O,
      O => resto(4)
    );
  resto_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
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
      LOC => "PAD37"
    )
    port map (
      I => finish_O,
      O => finish
    );
  resto_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => resto_6_O,
      O => resto(6)
    );
  resto_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => resto_7_O,
      O => resto(7)
    );
  divisore_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(0),
      O => divisore_0_INBUF
    );
  divisore_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(1),
      O => divisore_1_INBUF
    );
  divisore_2_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(2),
      O => divisore_2_INBUF
    );
  divisore_3_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(3),
      O => divisore_3_INBUF
    );
  divisore_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(4),
      O => divisore_4_INBUF
    );
  divisore_5_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(5),
      O => divisore_5_INBUF
    );
  divisore_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(6),
      O => divisore_6_INBUF
    );
  divisore_7_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore(7),
      O => divisore_7_INBUF
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_942
    );
  quoziente_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => quoziente_0_O,
      O => quoziente(0)
    );
  quoziente_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => quoziente_1_O,
      O => quoziente(1)
    );
  quoziente_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => quoziente_2_O,
      O => quoziente(2)
    );
  dividendo_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(0),
      O => dividendo_0_INBUF
    );
  dividendo_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_0_INBUF,
      O => dividendo_0_IBUF_946
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_947
    );
  quoziente_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => quoziente_3_O,
      O => quoziente(3)
    );
  dividendo_1_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(1),
      O => dividendo_1_INBUF
    );
  dividendo_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_1_INBUF,
      O => dividendo_1_IBUF_949
    );
  quoziente_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => quoziente_4_O,
      O => quoziente(4)
    );
  dividendo_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(2),
      O => dividendo_2_INBUF
    );
  dividendo_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_2_INBUF,
      O => dividendo_2_IBUF_951
    );
  quoziente_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => quoziente_5_O,
      O => quoziente(5)
    );
  dividendo_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(3),
      O => dividendo_3_INBUF
    );
  dividendo_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_3_INBUF,
      O => dividendo_3_IBUF_953
    );
  quoziente_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => quoziente_6_O,
      O => quoziente(6)
    );
  dividendo_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(4),
      O => dividendo_4_INBUF
    );
  dividendo_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_4_INBUF,
      O => dividendo_4_IBUF_955
    );
  quoziente_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => quoziente_7_O,
      O => quoziente(7)
    );
  dividendo_5_IBUF : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(5),
      O => dividendo_5_INBUF
    );
  dividendo_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_5_INBUF,
      O => dividendo_5_IBUF_957
    );
  dividendo_6_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(6),
      O => dividendo_6_INBUF
    );
  dividendo_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_6_INBUF,
      O => dividendo_6_IBUF_958
    );
  dividendo_7_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo(7),
      O => dividendo_7_INBUF
    );
  dividendo_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 555 ps
    )
    port map (
      I => dividendo_7_INBUF,
      O => dividendo_7_IBUF_959
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
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1366,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1368
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y24"
    )
    port map (
      IA => N166,
      IB => N167,
      SEL => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1359,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1366
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1359
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1351
    );
  remainder_chain_gen_2_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F066",
      LOC => "SLICE_X13Y24"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd10_0,
      ADR1 => N92_0,
      ADR2 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => en_c_0,
      O => N166
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1402,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1404
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y31"
    )
    port map (
      IA => quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1393,
      IB => quotient_chain_gen_1_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1395,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_1402
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_1395
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1387
    );
  quotient_chain_gen_1_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X1Y31"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_1_sc_ch_inst_mux2_1_X1_1393
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1438,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1440
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y25"
    )
    port map (
      IA => quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1429,
      IB => quotient_chain_gen_2_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1431,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_1438
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_1431
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1423
    );
  quotient_chain_gen_2_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_2_sc_ch_inst_mux2_1_X1_1429
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1474,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1476
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X0Y15"
    )
    port map (
      IA => quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1465,
      IB => quotient_chain_gen_3_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1467,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1474
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1467
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1459
    );
  quotient_chain_gen_3_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X0Y15"
    )
    port map (
      ADR0 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_3_sc_ch_inst_mux2_1_X1_1465
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1510,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1512
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y12"
    )
    port map (
      IA => quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1501,
      IB => quotient_chain_gen_4_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1503,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1510
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1503
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1495
    );
  quotient_chain_gen_4_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X1Y12"
    )
    port map (
      ADR0 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_4_sc_ch_inst_mux2_1_X1_1501
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1546,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1548
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y11"
    )
    port map (
      IA => quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1537,
      IB => quotient_chain_gen_5_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1539,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1546
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1539
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1531
    );
  quotient_chain_gen_5_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X1Y11"
    )
    port map (
      ADR0 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_5_sc_ch_inst_mux2_1_X1_1537
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1582,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1584
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y10"
    )
    port map (
      IA => quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1573,
      IB => quotient_chain_gen_6_sc_ch_inst_mux2_1_X,
      SEL => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1575,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1582
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1575
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1567
    );
  quotient_chain_gen_6_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X1Y10"
    )
    port map (
      ADR0 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_6_sc_ch_inst_mux2_1_X1_1573
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1618,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1620
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X1Y30"
    )
    port map (
      IA => quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1609,
      IB => quotient_chain_gen_0_sc_in_inst_mux2_1_X,
      SEL => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1611,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_F5MUX_1618
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_BXINV_1611
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1603
    );
  quotient_chain_gen_0_sc_in_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X1Y30"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => cu_bit_q_978,
      O => quotient_chain_gen_0_sc_in_inst_mux2_1_X1_1609
    );
  gestore_shift_rca_carry_8_bdd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd2_F5MUX_1650,
      O => gestore_shift_rca_carry_8_bdd2
    );
  gestore_shift_rca_carry_8_bdd2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y18"
    )
    port map (
      IA => N172,
      IB => N173,
      SEL => gestore_shift_rca_carry_8_bdd2_BXINV_1642,
      O => gestore_shift_rca_carry_8_bdd2_F5MUX_1650
    );
  gestore_shift_rca_carry_8_bdd2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10_0,
      O => gestore_shift_rca_carry_8_bdd2_BXINV_1642
    );
  gestore_shift_rca_carry_8_21_F : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X15Y18"
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
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N74_F5MUX_1675,
      O => N74
    );
  N74_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y22"
    )
    port map (
      IA => N140,
      IB => N141,
      SEL => N74_BXINV_1668,
      O => N74_F5MUX_1675
    );
  N74_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(4),
      O => N74_BXINV_1668
    );
  gestore_shift_rca_s_5_1_SW0_F : X_LUT4
    generic map(
      INIT => X"EF01",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => N59_0,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N140
    );
  gestore_shift_rca_s_5_1_SW0_G : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X3Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => N59_0,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N141
    );
  N75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N75_F5MUX_1700,
      O => N75
    );
  N75_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y23"
    )
    port map (
      IA => N142,
      IB => N143,
      SEL => N75_BXINV_1693,
      O => N75_F5MUX_1700
    );
  N75_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(4),
      O => N75_BXINV_1693
    );
  gestore_shift_rca_s_5_1_SW1_F : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => N59_0,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N142
    );
  gestore_shift_rca_s_5_1_SW1_G : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X3Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => N59_0,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N143
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1729,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1731
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y26"
    )
    port map (
      IA => N148,
      IB => N149,
      SEL => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1722,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_1729
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_1722
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1714
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X14Y26"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => cu_en_r6_0,
      ADR2 => N89_0,
      ADR3 => N86_0,
      O => N148
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1765,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1767
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y10"
    )
    port map (
      IA => quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1756,
      IB => quotient_chain_gen_7_sc_out_inst_mux2_1_X,
      SEL => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1758,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_F5MUX_1765
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_BXINV_1758
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1750
    );
  quotient_chain_gen_7_sc_out_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_7_sc_out_inst_mux2_1_X1_1756
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1801,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1803
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y22"
    )
    port map (
      IA => N150,
      IB => N151,
      SEL => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1794,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_1801
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_1794
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1786
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => N74,
      ADR2 => N89_0,
      ADR3 => cu_en_r6_0,
      O => N150
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1837,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1839
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y25"
    )
    port map (
      IA => N164,
      IB => N165,
      SEL => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1830,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_1837
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_1830
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1821
    );
  remainder_chain_gen_4_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd10_0,
      ADR1 => VCC,
      ADR2 => N128_0,
      ADR3 => N127_0,
      O => N164
    );
  r_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q_5_F5MUX_1875,
      O => r_q_5_DXMUX_1877
    );
  r_q_5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y25"
    )
    port map (
      IA => N170,
      IB => N171,
      SEL => r_q_5_BXINV_1868,
      O => r_q_5_F5MUX_1875
    );
  r_q_5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6,
      O => r_q_5_BXINV_1868
    );
  r_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_5_CLKINV_1860
    );
  r_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_5_CEINV_1859
    );
  rest_5_1_F : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X3Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_bit_q_978,
      ADR2 => N156_0,
      ADR3 => a_s,
      O => N170
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1912,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1914
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y27"
    )
    port map (
      IA => N168,
      IB => N169,
      SEL => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1905,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_1912
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_1905
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1897
    );
  remainder_chain_gen_3_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X13Y27"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => sum1_3_0,
      ADR2 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => N168
    );
  N65_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N65,
      O => N65_0
    );
  N65_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW1_O_pack_1,
      O => gestore_shift_rca_s_7_SW1_O
    );
  gestore_shift_rca_s_7_SW1 : X_LUT4
    generic map(
      INIT => X"CC95",
      LOC => "SLICE_X16Y17"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => en_c_0,
      O => gestore_shift_rca_s_7_SW1_O_pack_1
    );
  N66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N66,
      O => N66_0
    );
  N66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW2_O_pack_1,
      O => gestore_shift_rca_s_7_SW2_O
    );
  gestore_shift_rca_s_7_SW2 : X_LUT4
    generic map(
      INIT => X"F4A1",
      LOC => "SLICE_X17Y17"
    )
    port map (
      ADR0 => en_c_0,
      ADR1 => gestore_shift_b_add_sub(6),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N43_0,
      O => gestore_shift_rca_s_7_SW2_O_pack_1
    );
  N128_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N128,
      O => N128_0
    );
  N128_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N63_pack_1,
      O => N63
    );
  gestore_shift_rca_s_4_1_SW0 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(4),
      ADR3 => VCC,
      O => N63_pack_1
    );
  N40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N40,
      O => N40_0
    );
  N40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1,
      O => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O
    );
  gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X14Y15"
    )
    port map (
      ADR0 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => divisor_q(0),
      ADR3 => VCC,
      O => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O_pack_1
    );
  cu_current_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_FXMUX_2045,
      O => cu_current_state_FSM_FFd4_DXMUX_2046
    );
  cu_current_state_FSM_FFd4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_FXMUX_2045,
      O => cu_current_state_FSM_FFd4_In_0
    );
  cu_current_state_FSM_FFd4_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In,
      O => cu_current_state_FSM_FFd4_FXMUX_2045
    );
  cu_current_state_FSM_FFd4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW10_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW10_O
    );
  cu_current_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_CLKINV_2029
    );
  gestore_shift_rca_carry_8_21_SW10 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X12Y25"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => N83_0,
      ADR2 => VCC,
      ADR3 => N84_0,
      O => gestore_shift_rca_carry_8_21_SW10_O_pack_1
    );
  N162_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N162,
      O => N162_0
    );
  N162_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_6_pack_1,
      O => gestore_shift_b_add_sub(6)
    );
  gestore_shift_Mxor_b_add_sub_6_Result1 : X_LUT4
    generic map(
      INIT => X"5556",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => divisor_q(6),
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_current_state_FSM_FFd3_1030,
      ADR3 => cu_current_state_FSM_FFd1_963,
      O => gestore_shift_b_add_sub_6_pack_1
    );
  N43_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N43,
      O => N43_0
    );
  N43_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => a_s_pack_1,
      O => a_s
    );
  cu_current_state_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd4_1_1033,
      ADR3 => cu_current_state_FSM_FFd1_1_1034,
      O => a_s_pack_1
    );
  N80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  N80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW7_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW7_SW0_O
    );
  gestore_shift_rca_s_7_SW7_SW0 : X_LUT4
    generic map(
      INIT => X"C30F",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => divisor_q(7),
      ADR3 => gestore_shift_b_add_sub(6),
      O => gestore_shift_rca_s_7_SW7_SW0_O_pack_1
    );
  N68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N68,
      O => N68_0
    );
  N68_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37_pack_1,
      O => N37
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"AA3C",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => N136_0,
      ADR2 => gestore_shift_b_add_sub(1),
      ADR3 => en_c_0,
      O => N37_pack_1
    );
  N83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N83,
      O => N83_0
    );
  N83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW9_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW9_SW0_O
    );
  gestore_shift_rca_s_7_SW9_SW0 : X_LUT4
    generic map(
      INIT => X"9C63",
      LOC => "SLICE_X15Y23"
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
      LOC => "SLICE_X15Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N69,
      O => N69_0
    );
  N69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => N57_pack_1,
      O => N57
    );
  gestore_shift_rca_s_7_SW4 : X_LUT4
    generic map(
      INIT => X"D0D0",
      LOC => "SLICE_X15Y17"
    )
    port map (
      ADR0 => N130_0,
      ADR1 => operation_counter_hit_1042,
      ADR2 => cu_current_state_FSM_FFd3_1030,
      ADR3 => VCC,
      O => N57_pack_1
    );
  N71_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N71,
      O => N71_0
    );
  N71_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N56_pack_1,
      O => N56
    );
  gestore_shift_rca_s_7_SW3 : X_LUT4
    generic map(
      INIT => X"88AA",
      LOC => "SLICE_X17Y16"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => operation_counter_hit_1042,
      ADR2 => VCC,
      ADR3 => N138_0,
      O => N56_pack_1
    );
  N50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N50,
      O => N50_0
    );
  N50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_2_pack_1,
      O => gestore_shift_b_add_sub(2)
    );
  gestore_shift_Mxor_b_add_sub_2_Result1 : X_LUT4
    generic map(
      INIT => X"3336",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => divisor_q(2),
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd3_1030,
      O => gestore_shift_b_add_sub_2_pack_1
    );
  N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_3_pack_1,
      O => gestore_shift_b_add_sub(3)
    );
  gestore_shift_Mxor_b_add_sub_3_Result1 : X_LUT4
    generic map(
      INIT => X"3336",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => divisor_q(3),
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd3_1030,
      O => gestore_shift_b_add_sub_3_pack_1
    );
  N84_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N84,
      O => N84_0
    );
  N84_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_s_7_SW10_SW0_O_pack_1,
      O => gestore_shift_rca_s_7_SW10_SW0_O
    );
  gestore_shift_rca_s_7_SW10_SW0 : X_LUT4
    generic map(
      INIT => X"695A",
      LOC => "SLICE_X14Y23"
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
      LOC => "SLICE_X15Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N86,
      O => N86_0
    );
  N86_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N45_pack_1,
      O => N45
    );
  gestore_shift_rca_s_6_1_SW0 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X15Y27"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => N45_pack_1
    );
  N89_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N89,
      O => N89_0
    );
  N89_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW2_SW2_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW2_SW2_O
    );
  gestore_shift_rca_carry_8_21_SW2_SW2 : X_LUT4
    generic map(
      INIT => X"1717",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => VCC,
      O => gestore_shift_rca_carry_8_21_SW2_SW2_O_pack_1
    );
  gestore_shift_rca_carry_8_bdd10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd10,
      O => gestore_shift_rca_carry_8_bdd10_0
    );
  gestore_shift_rca_carry_8_bdd10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd12_pack_1,
      O => gestore_shift_rca_carry_8_bdd12
    );
  gestore_shift_rca_carry_8_71 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => divisor_q(0),
      ADR1 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => a_s,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_8_bdd12_pack_1
    );
  N99_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N99,
      O => N99_0
    );
  N99_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N78_pack_1,
      O => N78
    );
  gestore_shift_rca_s_7_SW6 : X_LUT4
    generic map(
      INIT => X"FAEB",
      LOC => "SLICE_X14Y27"
    )
    port map (
      ADR0 => operation_counter_hit_1042,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N43_0,
      ADR3 => gestore_shift_b_add_sub(6),
      O => N78_pack_1
    );
  N102_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  N102_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N81_pack_1,
      O => N81
    );
  gestore_shift_rca_s_7_SW8 : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X16Y24"
    )
    port map (
      ADR0 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_bit_q_978,
      ADR2 => a_s,
      ADR3 => N162_0,
      O => N81_pack_1
    );
  N116_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N116,
      O => N116_0
    );
  N116_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => N48_pack_1,
      O => N48
    );
  gestore_shift_rca_carry_8_31_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8",
      LOC => "SLICE_X12Y22"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(4),
      ADR2 => gestore_shift_b_add_sub_5_0,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N48_pack_1
    );
  N119_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N119,
      O => N119_0
    );
  N119_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_1_pack_1,
      O => gestore_shift_b_add_sub(1)
    );
  gestore_shift_Mxor_b_add_sub_1_Result1 : X_LUT4
    generic map(
      INIT => X"5556",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => divisor_q(1),
      ADR1 => cu_current_state_FSM_FFd3_1030,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => gestore_shift_b_add_sub_1_pack_1
    );
  cu_en_r6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_r6_2482,
      O => cu_en_r6_0
    );
  cu_en_r6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_r5_O_pack_1,
      O => cu_en_r5_O
    );
  cu_en_r5 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => start_IBUF_942,
      ADR1 => cu_current_state_FSM_FFd6_970,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd2_1067,
      O => cu_en_r5_O_pack_1
    );
  sum1_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => sum1_3_Q,
      O => sum1_3_0
    );
  sum1_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_61_SW0_O_pack_1,
      O => gestore_shift_rca_carry_8_61_SW0_O
    );
  gestore_shift_rca_carry_8_61_SW0 : X_LUT4
    generic map(
      INIT => X"173F",
      LOC => "SLICE_X13Y26"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(2),
      ADR3 => gestore_shift_b_add_sub(1),
      O => gestore_shift_rca_carry_8_61_SW0_O_pack_1
    );
  r_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_6_Q,
      O => r_q_6_DXMUX_2539
    );
  r_q_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW4_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW4_O
    );
  r_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_6_CLKINV_2522
    );
  r_q_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_6_CEINV_2521
    );
  r_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_7_Q,
      O => r_q_7_DXMUX_2577
    );
  r_q_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW9_O_pack_1,
      O => gestore_shift_rca_carry_8_21_SW9_O
    );
  r_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_7_CLKINV_2559
    );
  r_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_7_CEINV_2558
    );
  gestore_shift_rca_carry_8_21_SW9 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => N48,
      ADR1 => VCC,
      ADR2 => N80_0,
      ADR3 => N81,
      O => gestore_shift_rca_carry_8_21_SW9_O_pack_1
    );
  operation_counter_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_cmp_eq0000,
      O => operation_counter_hit_DYMUX_2601
    );
  operation_counter_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_hit_CLKINV_2592
    );
  operation_counter_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_and0000,
      O => operation_counter_hit_CEINV_2591
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_7_Q,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2641
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_1_Q,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2626
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2616
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8B8",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => N69_0,
      ADR1 => gestore_shift_rca_carry_8_bdd2,
      ADR2 => N68_0,
      ADR3 => VCC,
      O => remainder_x_1_Q
    );
  cu_current_state_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_GYMUX_2668,
      O => cu_current_state_FSM_FFd3_DYMUX_2669
    );
  cu_current_state_FSM_FFd3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_GYMUX_2668,
      O => en_c_0
    );
  cu_current_state_FSM_FFd3_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c,
      O => cu_current_state_FSM_FFd3_GYMUX_2668
    );
  cu_current_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd3_CLKINV_2658
    );
  cu_current_state_FSM_Out81 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X15Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => en_c
    );
  cu_current_state_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_In,
      O => cu_current_state_FSM_FFd6_DXMUX_2719
    );
  cu_current_state_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd5_In,
      O => cu_current_state_FSM_FFd6_DYMUX_2705
    );
  cu_current_state_FSM_FFd6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd6_SRINVNOT
    );
  cu_current_state_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd6_CLKINV_2694
    );
  cu_current_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X3Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => start_IBUF_942,
      ADR2 => VCC,
      ADR3 => cu_current_state_FSM_FFd6_970,
      O => cu_current_state_FSM_FFd5_In
    );
  end_f_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  end_f_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => end_f_q_0_GYMUX_2748,
      O => end_f_q_0_DYMUX_2749
    );
  end_f_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => end_f_q_0_GYMUX_2748,
      O => en_res
    );
  end_f_q_0_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res_pack_3,
      O => end_f_q_0_GYMUX_2748
    );
  end_f_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => end_f_q_0_CLKINV_2738
    );
  end_f_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => end_f_q_0_CEINV_2737
    );
  cu_bit_q_mux000111 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => operation_counter_hit_1042,
      ADR3 => cu_current_state_FSM_FFd3_1030,
      O => en_res_pack_3
    );
  r_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_1_Q,
      O => r_q_1_DXMUX_2802
    );
  r_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_0_Q,
      O => r_q_1_DYMUX_2787
    );
  r_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_1_SRINVNOT
    );
  r_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_1_CLKINV_2777
    );
  r_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_1_CEINV_2776
    );
  rest_0_1 : X_LUT4
    generic map(
      INIT => X"5AF0",
      LOC => "SLICE_X12Y26"
    )
    port map (
      ADR0 => divisor_q(0),
      ADR1 => VCC,
      ADR2 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR3 => cu_bit_q_978,
      O => rest_0_Q
    );
  r_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_3_Q,
      O => r_q_3_DXMUX_2848
    );
  r_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_2_Q,
      O => r_q_3_DYMUX_2832
    );
  r_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_3_SRINVNOT
    );
  r_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_3_CLKINV_2823
    );
  r_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_3_CEINV_2822
    );
  rest_2_1 : X_LUT4
    generic map(
      INIT => X"D278",
      LOC => "SLICE_X12Y28"
    )
    port map (
      ADR0 => cu_bit_q_978,
      ADR1 => gestore_shift_rca_carry_8_bdd10_0,
      ADR2 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(2),
      O => rest_2_Q
    );
  r_q_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N158,
      O => N158_0
    );
  r_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => rest_4_Q,
      O => r_q_4_DYMUX_2878
    );
  r_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_q_4_CLKINV_2869
    );
  r_q_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => r_q_4_CEINV_2868
    );
  operation_counter_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => operation_counter_count_2_DYMUX_2912
    );
  operation_counter_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_2_CLKINV_2902
    );
  operation_counter_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => operation_counter_count_2_CEINV_2901
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  N20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CCD8",
      LOC => "SLICE_X15Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => N23
    );
  divisor_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_7_INBUF,
      O => divisor_q_7_DXMUX_2964
    );
  divisor_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_6_INBUF,
      O => divisor_q_7_DYMUX_2955
    );
  divisor_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => divisor_q_7_SRINVNOT
    );
  divisor_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_7_CLKINV_2952
    );
  divisor_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => divisor_q_7_CEINV_2951
    );
  N61_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  N61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => N127,
      O => N127_0
    );
  gestore_shift_rca_carry_8_41_SW2 : X_LUT4
    generic map(
      INIT => X"F606",
      LOC => "SLICE_X15Y25"
    )
    port map (
      ADR0 => N63,
      ADR1 => N50_0,
      ADR2 => en_c_0,
      ADR3 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N127
    );
  N59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N59,
      O => N59_0
    );
  N59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => N156,
      O => N156_0
    );
  gestore_shift_rca_s_5_1_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"8787",
      LOC => "SLICE_X2Y23"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(4),
      ADR2 => divisor_q(5),
      ADR3 => VCC,
      O => N156
    );
  N38_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  N38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N41,
      O => N41_0
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CDC8",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => N41
    );
  N136_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => N136,
      O => N136_0
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"35CA",
      LOC => "SLICE_X14Y18"
    )
    port map (
      ADR0 => a_s,
      ADR1 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => divisor_q(0),
      ADR3 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => N136
    );
  cu_bit_q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_bit_q_mux0001,
      O => cu_bit_q_DXMUX_3082
    );
  cu_bit_q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => sum1_7_pack_1,
      O => sum1_7_Q
    );
  cu_bit_q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => cu_bit_q_CLKINV_3067
    );
  gestore_shift_rca_s_7_Q : X_LUT4
    generic map(
      INIT => X"A995",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => N43_0,
      ADR1 => gestore_shift_b_add_sub(6),
      ADR2 => gestore_shift_rca_carry_8_bdd2,
      ADR3 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => sum1_7_pack_1
    );
  N97_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N97,
      O => N97_0
    );
  N97_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => N77,
      O => N77_0
    );
  gestore_shift_rca_s_7_SW5 : X_LUT4
    generic map(
      INIT => X"FF93",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => N43_0,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => operation_counter_hit_1042,
      O => N77
    );
  N87_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N87,
      O => N87_0
    );
  N87_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  gestore_shift_rca_carry_8_21_SW11 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X15Y28"
    )
    port map (
      ADR0 => N48,
      ADR1 => VCC,
      ADR2 => N84_0,
      ADR3 => N83_0,
      O => N106
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => remainder_x_0_Q,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3162
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N72_pack_1,
      O => N72
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3145
    );
  cu_en_r16_SW3 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X16Y16"
    )
    port map (
      ADR0 => N57,
      ADR1 => cu_en_r6_0,
      ADR2 => N41_0,
      ADR3 => N40_0,
      O => N72_pack_1
    );
  en_r_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r,
      O => en_r_0
    );
  en_r_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_bdd6_pack_1,
      O => gestore_shift_rca_carry_8_bdd6
    );
  gestore_shift_rca_carry_8_41 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X12Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N51_0,
      ADR2 => N50_0,
      ADR3 => gestore_shift_rca_carry_8_bdd10_0,
      O => gestore_shift_rca_carry_8_bdd6_pack_1
    );
  q_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => q_q_1_DXMUX_3213
    );
  q_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_bit_q_978,
      O => q_q_1_DYMUX_3204
    );
  q_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => q_q_1_SRINVNOT
    );
  q_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_1_CLKINV_3201
    );
  q_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => q_q_1_CEINV_3200
    );
  q_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_3_DXMUX_3241
    );
  q_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_3_DYMUX_3232
    );
  q_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => q_q_3_SRINVNOT
    );
  q_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_3_CLKINV_3229
    );
  q_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => q_q_3_CEINV_3228
    );
  q_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_5_DXMUX_3269
    );
  q_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_5_DYMUX_3260
    );
  q_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => q_q_5_SRINVNOT
    );
  q_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_5_CLKINV_3257
    );
  q_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => q_q_5_CEINV_3256
    );
  N130_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N130,
      O => N130_0
    );
  N130_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => N138,
      O => N138_0
    );
  gestore_shift_rca_s_7_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"6696",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => divisor_q(7),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => divisor_q(6),
      O => N138
    );
  N92_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => N92,
      O => N92_0
    );
  gestore_shift_rca_s_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X3Y24"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N92
    );
  q_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_7_DXMUX_3333
    );
  q_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_q_7_DYMUX_3324
    );
  q_q_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => q_q_7_SRINVNOT
    );
  q_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_q_7_CLKINV_3321
    );
  q_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_res,
      O => q_q_7_CEINV_3320
    );
  cu_current_state_FSM_FFd1_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1067,
      O => cu_current_state_FSM_FFd1_1_DYMUX_3348
    );
  cu_current_state_FSM_FFd1_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd1_1_CLKINV_3345
    );
  cu_current_state_FSM_FFd1_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1067,
      O => cu_current_state_FSM_FFd1_2_DYMUX_3362
    );
  cu_current_state_FSM_FFd1_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd1_2_CLKINV_3359
    );
  cu_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_In,
      O => cu_current_state_FSM_FFd2_DXMUX_3407
    );
  cu_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_1067,
      O => cu_current_state_FSM_FFd2_DYMUX_3393
    );
  cu_current_state_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_21_SW7_O_pack_2,
      O => gestore_shift_rca_carry_8_21_SW7_O
    );
  cu_current_state_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd2_SRINVNOT
    );
  cu_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd2_CLKINV_3382
    );
  gestore_shift_rca_carry_8_21_SW7 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X15Y26"
    )
    port map (
      ADR0 => N48,
      ADR1 => N78,
      ADR2 => N77_0,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_8_21_SW7_O_pack_2
    );
  N47_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => N47,
      O => N47_0
    );
  N47_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_4_pack_1,
      O => gestore_shift_b_add_sub(4)
    );
  gestore_shift_Mxor_b_add_sub_4_Result1 : X_LUT4
    generic map(
      INIT => X"01FE",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_1_1034,
      ADR1 => cu_current_state_FSM_FFd4_1_1033,
      ADR2 => cu_current_state_FSM_FFd3_1030,
      ADR3 => divisor_q(4),
      O => gestore_shift_b_add_sub_4_pack_1
    );
  cu_current_state_FSM_FFd4_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In_0,
      O => cu_current_state_FSM_FFd4_1_DYMUX_3445
    );
  cu_current_state_FSM_FFd4_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_1_CLKINV_3442
    );
  cu_current_state_FSM_FFd4_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In_0,
      O => cu_current_state_FSM_FFd4_2_DYMUX_3459
    );
  cu_current_state_FSM_FFd4_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_2_CLKINV_3456
    );
  gestore_shift_b_add_sub_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(5),
      O => gestore_shift_b_add_sub_5_0
    );
  gestore_shift_Mxor_b_add_sub_5_Result1 : X_LUT4
    generic map(
      INIT => X"3336",
      LOC => "SLICE_X13Y22"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => divisor_q(5),
      ADR2 => cu_current_state_FSM_FFd4_2_1083,
      ADR3 => cu_current_state_FSM_FFd1_2_1080,
      O => gestore_shift_b_add_sub(5)
    );
  operation_counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_count(0),
      O => operation_counter_count_0_DXMUX_3507
    );
  operation_counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => operation_counter_count_0_DYMUX_3498
    );
  operation_counter_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => operation_counter_count_0_SRINVNOT
    );
  operation_counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_0_CLKINV_3487
    );
  operation_counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => operation_counter_count_0_CEINV_3486
    );
  N26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => cu_current_state_FSM_FFd1_963,
      O => N26
    );
  divisor_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_1_INBUF,
      O => divisor_q_1_DXMUX_3547
    );
  divisor_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_0_INBUF,
      O => divisor_q_1_DYMUX_3538
    );
  divisor_q_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => divisor_q_1_SRINVNOT
    );
  divisor_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_1_CLKINV_3535
    );
  divisor_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => divisor_q_1_CEINV_3534
    );
  divisor_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_3_INBUF,
      O => divisor_q_3_DXMUX_3575
    );
  divisor_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_2_INBUF,
      O => divisor_q_3_DYMUX_3566
    );
  divisor_q_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => divisor_q_3_SRINVNOT
    );
  divisor_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_3_CLKINV_3563
    );
  divisor_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => divisor_q_3_CEINV_3562
    );
  divisor_q_5_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisor_q_5_SRINVNOT,
      O => divisor_q_5_FFX_RST
    );
  divisor_q_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      I => divisor_q_5_DXMUX_3603,
      CE => divisor_q_5_CEINV_3590,
      CLK => divisor_q_5_CLKINV_3591,
      SET => GND,
      RST => divisor_q_5_FFX_RST,
      O => divisor_q(5)
    );
  divisor_q_5_FFY_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisor_q_5_SRINVNOT,
      O => divisor_q_5_FFY_RST
    );
  divisor_q_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      I => divisor_q_5_DYMUX_3594,
      CE => divisor_q_5_CEINV_3590,
      CLK => divisor_q_5_CLKINV_3591,
      SET => GND,
      RST => divisor_q_5_FFY_RST,
      O => divisor_q(4)
    );
  divisor_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_5_INBUF,
      O => divisor_q_5_DXMUX_3603
    );
  divisor_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => divisore_4_INBUF,
      O => divisor_q_5_DYMUX_3594
    );
  divisor_q_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => divisor_q_5_SRINVNOT
    );
  divisor_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => divisor_q_5_CLKINV_3591
    );
  divisor_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd6_970,
      O => divisor_q_5_CEINV_3590
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1914,
      CE => VCC,
      CLK => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1897,
      SET => GND,
      RST => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1919,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1919
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X16Y17"
    )
    port map (
      ADR0 => N20_0,
      ADR1 => cu_en_r6_0,
      ADR2 => gestore_shift_rca_s_7_SW1_O,
      ADR3 => N56,
      O => N65
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW3 : X_LUT4
    generic map(
      INIT => X"CDC8",
      LOC => "SLICE_X17Y17"
    )
    port map (
      ADR0 => N57,
      ADR1 => N20_0,
      ADR2 => cu_en_r6_0,
      ADR3 => gestore_shift_rca_s_7_SW2_O,
      O => N66
    );
  gestore_shift_rca_carry_8_41_SW3 : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => N51_0,
      ADR2 => en_c_0,
      ADR3 => N63,
      O => N128
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X14Y15"
    )
    port map (
      ADR0 => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => gestore_shift_rca_rca_0_fa_ha2_Mxor_s_Result1_O,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => N40
    );
  cu_current_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"EEFC",
      LOC => "SLICE_X12Y25"
    )
    port map (
      ADR0 => N106_0,
      ADR1 => cu_current_state_FSM_FFd5_1022,
      ADR2 => gestore_shift_rca_carry_8_21_SW10_O,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => cu_current_state_FSM_FFd4_In
    );
  cu_current_state_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DXMUX_2046,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_2029,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_FFX_RSTAND_2051,
      O => cu_current_state_FSM_FFd4_965
    );
  cu_current_state_FSM_FFd4_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd4_FFX_RSTAND_2051
    );
  remainder_chain_gen_2_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X13Y24"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd1_963,
      O => N167
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y24",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1368,
      CE => VCC,
      CLK => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1351,
      SET => GND,
      RST => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1373,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1373
    );
  quotient_chain_gen_1_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X1Y31"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => dividendo_1_IBUF_949,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_1_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y31",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_1404,
      CE => VCC,
      CLK => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1387,
      SET => GND,
      RST => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1409,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1409
    );
  quotient_chain_gen_2_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => quotient_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => dividendo_2_IBUF_951,
      O => quotient_chain_gen_2_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y25",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1440,
      CE => VCC,
      CLK => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1423,
      SET => GND,
      RST => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1445,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1445
    );
  quotient_chain_gen_3_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X0Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => dividendo_3_IBUF_953,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => quotient_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_3_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y15",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1476,
      CE => VCC,
      CLK => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1459,
      SET => GND,
      RST => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1481,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X0Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1481
    );
  quotient_chain_gen_4_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X1Y12"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => dividendo_4_IBUF_955,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_4_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1512,
      CE => VCC,
      CLK => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1495,
      SET => GND,
      RST => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1517,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1517
    );
  quotient_chain_gen_5_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X1Y11"
    )
    port map (
      ADR0 => dividendo_5_IBUF_957,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_5_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y11",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1548,
      CE => VCC,
      CLK => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1531,
      SET => GND,
      RST => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1553,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1553
    );
  quotient_chain_gen_6_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X1Y10"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => dividendo_6_IBUF_958,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => quotient_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_6_sc_ch_inst_mux2_1_X
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y10",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1584,
      CE => VCC,
      CLK => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1567,
      SET => GND,
      RST => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1589,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1589
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_1767,
      CE => VCC,
      CLK => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_1750,
      SET => GND,
      RST => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1772,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_7_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_1772
    );
  remainder_chain_gen_5_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => N90_0,
      ADR2 => N75,
      ADR3 => cu_en_r6_0,
      O => N151
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1803,
      CE => VCC,
      CLK => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1786,
      SET => GND,
      RST => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1808,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1808
    );
  remainder_chain_gen_4_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X13Y25"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N165
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y25",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1839,
      CE => VCC,
      CLK => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1821,
      SET => GND,
      RST => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1844,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1844
    );
  rest_5_1_G : X_LUT4
    generic map(
      INIT => X"6AA6",
      LOC => "SLICE_X3Y25"
    )
    port map (
      ADR0 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_bit_q_978,
      ADR2 => N158_0,
      ADR3 => a_s,
      O => N171
    );
  r_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y25",
      INIT => '0'
    )
    port map (
      I => r_q_5_DXMUX_1877,
      CE => r_q_5_CEINV_1859,
      CLK => r_q_5_CLKINV_1860,
      SET => GND,
      RST => r_q_5_FFX_RSTAND_1883,
      O => r_q(5)
    );
  r_q_5_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_5_FFX_RSTAND_1883
    );
  remainder_chain_gen_3_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X13Y27"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N169
    );
  gestore_shift_rca_s_7_SW8_SW0 : X_LUT4
    generic map(
      INIT => X"F0C3",
      LOC => "SLICE_X17Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => divisor_q(7),
      ADR3 => gestore_shift_b_add_sub(6),
      O => N162
    );
  gestore_shift_rca_s_7_SW0 : X_LUT4
    generic map(
      INIT => X"5AA5",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => VCC,
      ADR2 => a_s,
      ADR3 => divisor_q(7),
      O => N43
    );
  gestore_shift_rca_s_7_SW7 : X_LUT4
    generic map(
      INIT => X"7D82",
      LOC => "SLICE_X17Y24"
    )
    port map (
      ADR0 => cu_bit_q_978,
      ADR1 => a_s,
      ADR2 => gestore_shift_rca_s_7_SW7_SW0_O,
      ADR3 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      O => N80
    );
  cu_en_r16_SW0 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => N38_0,
      ADR1 => N37,
      ADR2 => cu_en_r6_0,
      ADR3 => N56,
      O => N68
    );
  gestore_shift_rca_s_7_SW9 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X15Y23"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => operation_counter_hit_1042,
      ADR2 => VCC,
      ADR3 => gestore_shift_rca_s_7_SW9_SW0_O,
      O => N83
    );
  cu_en_r16_SW1 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X15Y17"
    )
    port map (
      ADR0 => cu_en_r6_0,
      ADR1 => N37,
      ADR2 => N38_0,
      ADR3 => N57,
      O => N69
    );
  quotient_chain_gen_0_sc_in_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X1Y30"
    )
    port map (
      ADR0 => cu_bit_q_978,
      ADR1 => dividendo_0_IBUF_946,
      ADR2 => cu_current_state_FSM_FFd4_965,
      ADR3 => cu_current_state_FSM_FFd1_963,
      O => quotient_chain_gen_0_sc_in_inst_mux2_1_X
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y30",
      INIT => '0'
    )
    port map (
      I => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_1620,
      CE => VCC,
      CLK => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_1603,
      SET => GND,
      RST => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1625,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q
    );
  quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => quotient_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_1625
    );
  gestore_shift_rca_carry_8_21_G : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X15Y18"
    )
    port map (
      ADR0 => N48,
      ADR1 => N51_0,
      ADR2 => VCC,
      ADR3 => N47_0,
      O => N173
    );
  remainder_chain_gen_6_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"AAAC",
      LOC => "SLICE_X14Y26"
    )
    port map (
      ADR0 => N23_0,
      ADR1 => N87_0,
      ADR2 => cu_en_r6_0,
      ADR3 => N90_0,
      O => N149
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1731,
      CE => VCC,
      CLK => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1714,
      SET => GND,
      RST => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1736,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1736
    );
  quotient_chain_gen_7_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X2Y10"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => dividendo_7_IBUF_959,
      ADR3 => quotient_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => quotient_chain_gen_7_sc_out_inst_mux2_1_X
    );
  rest_6_1 : X_LUT4
    generic map(
      INIT => X"663C",
      LOC => "SLICE_X16Y27"
    )
    port map (
      ADR0 => N97_0,
      ADR1 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_rca_carry_8_21_SW4_O,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => rest_6_Q
    );
  r_q_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => '0'
    )
    port map (
      I => r_q_6_DXMUX_2539,
      CE => r_q_6_CEINV_2521,
      CLK => r_q_6_CLKINV_2522,
      SET => GND,
      RST => r_q_6_FFX_RSTAND_2545,
      O => r_q(6)
    );
  r_q_6_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X16Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_6_FFX_RSTAND_2545
    );
  rest_7_1 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X16Y25"
    )
    port map (
      ADR0 => N102_0,
      ADR1 => gestore_shift_rca_carry_8_bdd6,
      ADR2 => VCC,
      ADR3 => gestore_shift_rca_carry_8_21_SW9_O,
      O => rest_7_Q
    );
  r_q_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '0'
    )
    port map (
      I => r_q_7_DXMUX_2577,
      CE => r_q_7_CEINV_2558,
      CLK => r_q_7_CLKINV_2559,
      SET => GND,
      RST => r_q_7_FFX_RSTAND_2583,
      O => r_q(7)
    );
  r_q_7_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X16Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_7_FFX_RSTAND_2583
    );
  operation_counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X31Y34"
    )
    port map (
      ADR0 => operation_counter_count(2),
      ADR1 => operation_counter_count(0),
      ADR2 => VCC,
      ADR3 => operation_counter_count(1),
      O => operation_counter_hit_cmp_eq0000
    );
  operation_counter_hit : X_FF
    generic map(
      LOC => "SLICE_X31Y34",
      INIT => '0'
    )
    port map (
      I => operation_counter_hit_DYMUX_2601,
      CE => operation_counter_hit_CEINV_2591,
      CLK => operation_counter_hit_CLKINV_2592,
      SET => GND,
      RST => GND,
      O => operation_counter_hit_1042
    );
  remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DYMUX_2626,
      CE => VCC,
      CLK => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2616,
      SET => GND,
      RST => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      O => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_8_bdd2,
      ADR1 => N65_0,
      ADR2 => N66_0,
      ADR3 => VCC,
      O => remainder_x_7_Q
    );
  remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_DXMUX_2641,
      CE => VCC,
      CLK => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_CLKINV_2616,
      SET => GND,
      RST => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      O => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q
    );
  cu_bit_q_mux00012 : X_LUT4
    generic map(
      INIT => X"FFCE",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => en_res,
      ADR1 => cu_current_state_FSM_FFd1_963,
      ADR2 => sum1_7_Q,
      ADR3 => cu_current_state_FSM_FFd2_1067,
      O => cu_bit_q_mux0001
    );
  cu_bit_q : X_LATCHE
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => '0'
    )
    port map (
      I => cu_bit_q_DXMUX_3082,
      GE => VCC,
      CLK => NlwInverterSignal_cu_bit_q_CLK,
      SET => GND,
      RST => GND,
      O => cu_bit_q_978
    );
  gestore_shift_rca_carry_8_21_SW5 : X_LUT4
    generic map(
      INIT => X"4488",
      LOC => "SLICE_X17Y27"
    )
    port map (
      ADR0 => N48,
      ADR1 => cu_bit_q_978,
      ADR2 => VCC,
      ADR3 => gestore_shift_b_add_sub(6),
      O => N97
    );
  gestore_shift_rca_carry_8_21_SW1 : X_LUT4
    generic map(
      INIT => X"D1E2",
      LOC => "SLICE_X15Y28"
    )
    port map (
      ADR0 => N48,
      ADR1 => en_c_0,
      ADR2 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N45,
      O => N87
    );
  remainder_chain_gen_0_sc_in_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X16Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N71_0,
      ADR2 => gestore_shift_rca_carry_8_bdd2,
      ADR3 => N72,
      O => remainder_x_0_Q
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      I => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_DXMUX_3162,
      CE => VCC,
      CLK => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_CLKINV_3145,
      SET => GND,
      RST => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3167,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q
    );
  remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_3167
    );
  cu_en_r16 : X_LUT4
    generic map(
      INIT => X"EEFA",
      LOC => "SLICE_X12Y24"
    )
    port map (
      ADR0 => cu_en_r6_0,
      ADR1 => N90_0,
      ADR2 => N89_0,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => en_r
    );
  cu_en_r16_SW2 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X17Y16"
    )
    port map (
      ADR0 => N40_0,
      ADR1 => N41_0,
      ADR2 => N56,
      ADR3 => cu_en_r6_0,
      O => N71
    );
  gestore_shift_rca_carry_8_51_SW0 : X_LUT4
    generic map(
      INIT => X"E8A0",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(3),
      ADR3 => gestore_shift_b_add_sub(2),
      O => N50
    );
  gestore_shift_rca_carry_8_51_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(3),
      ADR3 => gestore_shift_b_add_sub(2),
      O => N51
    );
  gestore_shift_rca_s_7_SW10 : X_LUT4
    generic map(
      INIT => X"00C0",
      LOC => "SLICE_X14Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_state_FSM_FFd3_1030,
      ADR2 => gestore_shift_rca_s_7_SW10_SW0_O,
      ADR3 => operation_counter_hit_1042,
      O => N84
    );
  gestore_shift_rca_carry_8_21_SW0 : X_LUT4
    generic map(
      INIT => X"D1E2",
      LOC => "SLICE_X15Y27"
    )
    port map (
      ADR0 => N45,
      ADR1 => en_c_0,
      ADR2 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N47_0,
      O => N86
    );
  gestore_shift_rca_carry_8_21_SW2 : X_LUT4
    generic map(
      INIT => X"8AA8",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => operation_counter_hit_1042,
      ADR2 => gestore_shift_rca_carry_8_21_SW2_SW2_O,
      ADR3 => N43_0,
      O => N89
    );
  gestore_shift_rca_carry_8_61 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(1),
      ADR2 => VCC,
      ADR3 => gestore_shift_rca_carry_8_bdd12,
      O => gestore_shift_rca_carry_8_bdd10
    );
  gestore_shift_rca_carry_8_21_SW6 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X14Y27"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => N77_0,
      ADR2 => N78,
      ADR3 => VCC,
      O => N99
    );
  gestore_shift_rca_carry_8_21_SW8 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X16Y24"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => VCC,
      ADR2 => N80_0,
      ADR3 => N81,
      O => N102
    );
  gestore_shift_rca_carry_8_21_SW3_SW2 : X_LUT4
    generic map(
      INIT => X"055F",
      LOC => "SLICE_X12Y22"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(6),
      ADR1 => VCC,
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N48,
      O => N116
    );
  gestore_shift_rca_carry_8_61_SW1 : X_LUT4
    generic map(
      INIT => X"0137",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(1),
      ADR3 => gestore_shift_b_add_sub(2),
      O => N119
    );
  cu_en_r6 : X_LUT4
    generic map(
      INIT => X"FEFE",
      LOC => "SLICE_X3Y28"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_1022,
      ADR1 => cu_current_state_FSM_FFd4_965,
      ADR2 => cu_en_r5_O,
      ADR3 => VCC,
      O => cu_en_r6_2482
    );
  gestore_shift_rca_s_3_1 : X_LUT4
    generic map(
      INIT => X"A965",
      LOC => "SLICE_X13Y26"
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
      INIT => X"50A0",
      LOC => "SLICE_X16Y27"
    )
    port map (
      ADR0 => N47_0,
      ADR1 => VCC,
      ADR2 => cu_bit_q_978,
      ADR3 => gestore_shift_b_add_sub(6),
      O => gestore_shift_rca_carry_8_21_SW4_O_pack_1
    );
  cu_current_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd3_DYMUX_2669,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd3_CLKINV_2658,
      SET => GND,
      RST => cu_current_state_FSM_FFd3_FFY_RSTAND_2674,
      O => cu_current_state_FSM_FFd3_1030
    );
  cu_current_state_FSM_FFd3_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X15Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd3_FFY_RSTAND_2674
    );
  operation_counter_hit_and00001 : X_LUT4
    generic map(
      INIT => X"AAA0",
      LOC => "SLICE_X15Y22"
    )
    port map (
      ADR0 => reset_IBUF_947,
      ADR1 => VCC,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => operation_counter_hit_and0000
    );
  cu_current_state_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd6_DYMUX_2705,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd6_CLKINV_2694,
      SET => GND,
      RST => cu_current_state_FSM_FFd6_SRINVNOT,
      O => cu_current_state_FSM_FFd5_1022
    );
  cu_current_state_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X3Y29"
    )
    port map (
      ADR0 => operation_counter_hit_1042,
      ADR1 => start_IBUF_942,
      ADR2 => cu_current_state_FSM_FFd3_1030,
      ADR3 => cu_current_state_FSM_FFd6_970,
      O => cu_current_state_FSM_FFd6_In
    );
  cu_current_state_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '1'
    )
    port map (
      I => cu_current_state_FSM_FFd6_DXMUX_2719,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd6_CLKINV_2694,
      SET => cu_current_state_FSM_FFd6_SRINVNOT,
      RST => GND,
      O => cu_current_state_FSM_FFd6_970
    );
  end_f_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => '0'
    )
    port map (
      I => end_f_q_0_DYMUX_2749,
      CE => end_f_q_0_CEINV_2737,
      CLK => end_f_q_0_CLKINV_2738,
      SET => GND,
      RST => end_f_q_0_FFY_RSTAND_2755,
      O => end_f_q(0)
    );
  end_f_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => end_f_q_0_FFY_RSTAND_2755
    );
  gestore_shift_rca_carry_8_21_SW3 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X12Y23"
    )
    port map (
      ADR0 => N116_0,
      ADR1 => operation_counter_hit_1042,
      ADR2 => N43_0,
      ADR3 => cu_current_state_FSM_FFd3_1030,
      O => N90
    );
  r_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      I => r_q_1_DYMUX_2787,
      CE => r_q_1_CEINV_2776,
      CLK => r_q_1_CLKINV_2777,
      SET => GND,
      RST => r_q_1_SRINVNOT,
      O => r_q(0)
    );
  operation_counter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_2_DYMUX_2912,
      CE => operation_counter_count_2_CEINV_2901,
      CLK => operation_counter_count_2_CLKINV_2902,
      SET => GND,
      RST => operation_counter_count_2_FFY_RSTAND_2918,
      O => operation_counter_count(2)
    );
  operation_counter_count_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => operation_counter_count_2_FFY_RSTAND_2918
    );
  remainder_chain_gen_7_sc_out_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X15Y21"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd1_963,
      ADR1 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_current_state_FSM_FFd4_965,
      O => N20
    );
  divisor_q_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      I => divisor_q_7_DYMUX_2955,
      CE => divisor_q_7_CEINV_2951,
      CLK => divisor_q_7_CLKINV_2952,
      SET => GND,
      RST => divisor_q_7_SRINVNOT,
      O => divisor_q(6)
    );
  divisor_q_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      I => divisor_q_7_DXMUX_2964,
      CE => divisor_q_7_CEINV_2951,
      CLK => divisor_q_7_CLKINV_2952,
      SET => GND,
      RST => divisor_q_7_SRINVNOT,
      O => divisor_q(7)
    );
  gestore_shift_rca_carry_8_51_SW2 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X15Y25"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N61
    );
  gestore_shift_rca_carry_8_31_SW2 : X_LUT4
    generic map(
      INIT => X"5AA5",
      LOC => "SLICE_X2Y23"
    )
    port map (
      ADR0 => a_s,
      ADR1 => VCC,
      ADR2 => divisor_q(5),
      ADR3 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N59
    );
  remainder_chain_gen_1_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_965,
      ADR1 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd1_963,
      ADR3 => remainder_chain_gen_0_sc_in_inst_edge_triggered_q_0_Q,
      O => N38
    );
  rest_1_1 : X_LUT4
    generic map(
      INIT => X"96CC",
      LOC => "SLICE_X12Y26"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(1),
      ADR1 => remainder_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_rca_carry_8_bdd12,
      ADR3 => cu_bit_q_978,
      O => rest_1_Q
    );
  r_q_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      I => r_q_1_DXMUX_2802,
      CE => r_q_1_CEINV_2776,
      CLK => r_q_1_CLKINV_2777,
      SET => GND,
      RST => r_q_1_SRINVNOT,
      O => r_q(1)
    );
  r_q_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      I => r_q_3_DYMUX_2832,
      CE => r_q_3_CEINV_2822,
      CLK => r_q_3_CLKINV_2823,
      SET => GND,
      RST => r_q_3_SRINVNOT,
      O => r_q(2)
    );
  rest_3_1 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X12Y28"
    )
    port map (
      ADR0 => remainder_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => sum1_3_0,
      ADR2 => cu_bit_q_978,
      ADR3 => VCC,
      O => rest_3_Q
    );
  r_q_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      I => r_q_3_DXMUX_2848,
      CE => r_q_3_CEINV_2822,
      CLK => r_q_3_CLKINV_2823,
      SET => GND,
      RST => r_q_3_SRINVNOT,
      O => r_q(3)
    );
  rest_4_1 : X_LUT4
    generic map(
      INIT => X"9A6A",
      LOC => "SLICE_X2Y24"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(4),
      ADR2 => cu_bit_q_978,
      ADR3 => gestore_shift_rca_carry_8_bdd6,
      O => rest_4_Q
    );
  r_q_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y24",
      INIT => '0'
    )
    port map (
      I => r_q_4_DYMUX_2878,
      CE => r_q_4_CEINV_2868,
      CLK => r_q_4_CLKINV_2869,
      SET => GND,
      RST => r_q_4_FFY_RSTAND_2884,
      O => r_q(4)
    );
  r_q_4_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => r_q_4_FFY_RSTAND_2884
    );
  gestore_shift_rca_s_5_1_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"AAA5",
      LOC => "SLICE_X2Y24"
    )
    port map (
      ADR0 => divisor_q(5),
      ADR1 => VCC,
      ADR2 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(4),
      O => N158
    );
  operation_counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5FA0",
      LOC => "SLICE_X30Y34"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => VCC,
      ADR2 => operation_counter_count(0),
      ADR3 => operation_counter_count(2),
      O => Result(2)
    );
  gestore_shift_rca_s_7_SW4_SW0 : X_LUT4
    generic map(
      INIT => X"9699",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => remainder_chain_gen_7_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => divisor_q(7),
      ADR2 => remainder_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => divisor_q(6),
      O => N130
    );
  q_q_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      I => q_q_7_DYMUX_3324,
      CE => q_q_7_CEINV_3320,
      CLK => q_q_7_CLKINV_3321,
      SET => GND,
      RST => q_q_7_SRINVNOT,
      O => q_q(6)
    );
  q_q_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y11",
      INIT => '0'
    )
    port map (
      I => q_q_7_DXMUX_3333,
      CE => q_q_7_CEINV_3320,
      CLK => q_q_7_CLKINV_3321,
      SET => GND,
      RST => q_q_7_SRINVNOT,
      O => q_q(7)
    );
  cu_current_state_FSM_FFd1_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd1_1_DYMUX_3348,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd1_1_CLKINV_3345,
      SET => GND,
      RST => cu_current_state_FSM_FFd1_1_FFY_RSTAND_3353,
      O => cu_current_state_FSM_FFd1_1_1034
    );
  cu_current_state_FSM_FFd1_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd1_1_FFY_RSTAND_3353
    );
  cu_current_state_FSM_FFd1_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd1_2_DYMUX_3362,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd1_2_CLKINV_3359,
      SET => GND,
      RST => cu_current_state_FSM_FFd1_2_FFY_RSTAND_3367,
      O => cu_current_state_FSM_FFd1_2_1080
    );
  cu_current_state_FSM_FFd1_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd1_2_FFY_RSTAND_3367
    );
  cu_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DYMUX_3393,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_3382,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd1_963
    );
  q_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => q_q_1_DYMUX_3204,
      CE => q_q_1_CEINV_3200,
      CLK => q_q_1_CLKINV_3201,
      SET => GND,
      RST => q_q_1_SRINVNOT,
      O => q_q(0)
    );
  q_q_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => q_q_1_DXMUX_3213,
      CE => q_q_1_CEINV_3200,
      CLK => q_q_1_CLKINV_3201,
      SET => GND,
      RST => q_q_1_SRINVNOT,
      O => q_q(1)
    );
  q_q_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y25",
      INIT => '0'
    )
    port map (
      I => q_q_3_DYMUX_3232,
      CE => q_q_3_CEINV_3228,
      CLK => q_q_3_CLKINV_3229,
      SET => GND,
      RST => q_q_3_SRINVNOT,
      O => q_q(2)
    );
  q_q_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y25",
      INIT => '0'
    )
    port map (
      I => q_q_3_DXMUX_3241,
      CE => q_q_3_CEINV_3228,
      CLK => q_q_3_CLKINV_3229,
      SET => GND,
      RST => q_q_3_SRINVNOT,
      O => q_q(3)
    );
  q_q_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => q_q_5_DYMUX_3260,
      CE => q_q_5_CEINV_3256,
      CLK => q_q_5_CLKINV_3257,
      SET => GND,
      RST => q_q_5_SRINVNOT,
      O => q_q(4)
    );
  q_q_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y13",
      INIT => '0'
    )
    port map (
      I => q_q_5_DXMUX_3269,
      CE => q_q_5_CEINV_3256,
      CLK => q_q_5_CLKINV_3257,
      SET => GND,
      RST => q_q_5_SRINVNOT,
      O => q_q(5)
    );
  cu_current_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"028A",
      LOC => "SLICE_X15Y26"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd3_1030,
      ADR1 => gestore_shift_rca_carry_8_bdd6,
      ADR2 => N99_0,
      ADR3 => gestore_shift_rca_carry_8_21_SW7_O,
      O => cu_current_state_FSM_FFd2_In
    );
  cu_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DXMUX_3407,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_3382,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd2_1067
    );
  gestore_shift_rca_carry_8_31_SW0 : X_LUT4
    generic map(
      INIT => X"E8C0",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => remainder_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => remainder_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_5_0,
      ADR3 => gestore_shift_b_add_sub(4),
      O => N47
    );
  cu_current_state_FSM_FFd4_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_1_DYMUX_3445,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_1_CLKINV_3442,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_1_FFY_RSTAND_3450,
      O => cu_current_state_FSM_FFd4_1_1033
    );
  cu_current_state_FSM_FFd4_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd4_1_FFY_RSTAND_3450
    );
  cu_current_state_FSM_FFd4_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_2_DYMUX_3459,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_2_CLKINV_3456,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_2_FFY_RSTAND_3464,
      O => cu_current_state_FSM_FFd4_2_1083
    );
  cu_current_state_FSM_FFd4_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_947,
      O => cu_current_state_FSM_FFd4_2_FFY_RSTAND_3464
    );
  operation_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X31Y35"
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
      LOC => "SLICE_X31Y35",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DYMUX_3498,
      CE => operation_counter_count_0_CEINV_3486,
      CLK => operation_counter_count_0_CLKINV_3487,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(1)
    );
  operation_counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y35",
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DXMUX_3507,
      CE => operation_counter_count_0_CEINV_3486,
      CLK => operation_counter_count_0_CLKINV_3487,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(0)
    );
  divisor_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => divisor_q_1_DYMUX_3538,
      CE => divisor_q_1_CEINV_3534,
      CLK => divisor_q_1_CLKINV_3535,
      SET => GND,
      RST => divisor_q_1_SRINVNOT,
      O => divisor_q(0)
    );
  divisor_q_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => divisor_q_1_DXMUX_3547,
      CE => divisor_q_1_CEINV_3534,
      CLK => divisor_q_1_CLKINV_3535,
      SET => GND,
      RST => divisor_q_1_SRINVNOT,
      O => divisor_q(1)
    );
  divisor_q_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      I => divisor_q_3_DYMUX_3566,
      CE => divisor_q_3_CEINV_3562,
      CLK => divisor_q_3_CLKINV_3563,
      SET => GND,
      RST => divisor_q_3_SRINVNOT,
      O => divisor_q(2)
    );
  divisor_q_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      I => divisor_q_3_DXMUX_3575,
      CE => divisor_q_3_CEINV_3562,
      CLK => divisor_q_3_CLKINV_3563,
      SET => GND,
      RST => divisor_q_3_SRINVNOT,
      O => divisor_q(3)
    );
  resto_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(0),
      O => resto_0_O
    );
  resto_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(1),
      O => resto_1_O
    );
  resto_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(2),
      O => resto_2_O
    );
  resto_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(3),
      O => resto_3_O
    );
  resto_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(4),
      O => resto_4_O
    );
  resto_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(5),
      O => resto_5_O
    );
  finish_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => end_f_q(0),
      O => finish_O
    );
  resto_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(6),
      O => resto_6_O
    );
  resto_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_q(7),
      O => resto_7_O
    );
  quoziente_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(0),
      O => quoziente_0_O
    );
  quoziente_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(1),
      O => quoziente_1_O
    );
  quoziente_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(2),
      O => quoziente_2_O
    );
  quoziente_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(3),
      O => quoziente_3_O
    );
  quoziente_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(4),
      O => quoziente_4_O
    );
  quoziente_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(5),
      O => quoziente_5_O
    );
  quoziente_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => q_q(6),
      O => quoziente_6_O
    );
  quoziente_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
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
      I => cu_bit_q_CLKINV_3067,
      O => NlwInverterSignal_cu_bit_q_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

