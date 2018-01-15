--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Booth_multiplier_map.vhd
-- /___/   /\     Timestamp: Fri Jan 12 19:10:45 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Booth_multiplier.pcf -rpw 100 -tpw 0 -ar Structure -tm Booth_multiplier -w -dir netgen/map -ofmt vhdl -sim Booth_multiplier_map.ncd Booth_multiplier_map.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Booth_multiplier_map.ncd
-- Output file	: /media/sf_ASE/VHDL/Milo/moltiplicatore_B_buono/netgen/map/Booth_multiplier_map.vhd
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
    product : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    mul1 : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    mul2 : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end Booth_multiplier;

architecture Structure of Booth_multiplier is
  signal cu_current_state_FSM_FFd1_2432 : STD_LOGIC; 
  signal mul2_0_IBUF_2437 : STD_LOGIC; 
  signal mul2_1_IBUF_2439 : STD_LOGIC; 
  signal mul2_2_IBUF_2441 : STD_LOGIC; 
  signal mul2_3_IBUF_2443 : STD_LOGIC; 
  signal mul2_4_IBUF_2445 : STD_LOGIC; 
  signal mul2_5_IBUF_2447 : STD_LOGIC; 
  signal mul2_6_IBUF_2449 : STD_LOGIC; 
  signal mul2_7_IBUF_2450 : STD_LOGIC; 
  signal mul2_8_IBUF_2451 : STD_LOGIC; 
  signal mul2_9_IBUF_2452 : STD_LOGIC; 
  signal reset_IBUF_2453 : STD_LOGIC; 
  signal start_IBUF_2454 : STD_LOGIC; 
  signal mul2_10_IBUF_2482 : STD_LOGIC; 
  signal mul2_11_IBUF_2485 : STD_LOGIC; 
  signal mul2_20_IBUF_2488 : STD_LOGIC; 
  signal mul2_12_IBUF_2489 : STD_LOGIC; 
  signal mul2_21_IBUF_2491 : STD_LOGIC; 
  signal mul2_13_IBUF_2492 : STD_LOGIC; 
  signal mul2_30_IBUF_2494 : STD_LOGIC; 
  signal mul2_22_IBUF_2495 : STD_LOGIC; 
  signal mul2_14_IBUF_2496 : STD_LOGIC; 
  signal mul2_31_IBUF_2497 : STD_LOGIC; 
  signal mul2_23_IBUF_2498 : STD_LOGIC; 
  signal mul2_15_IBUF_2499 : STD_LOGIC; 
  signal mul2_24_IBUF_2500 : STD_LOGIC; 
  signal mul2_16_IBUF_2501 : STD_LOGIC; 
  signal mul2_25_IBUF_2502 : STD_LOGIC; 
  signal mul2_17_IBUF_2503 : STD_LOGIC; 
  signal mul2_26_IBUF_2504 : STD_LOGIC; 
  signal mul2_18_IBUF_2505 : STD_LOGIC; 
  signal mul2_27_IBUF_2506 : STD_LOGIC; 
  signal mul2_19_IBUF_2507 : STD_LOGIC; 
  signal mul2_28_IBUF_2508 : STD_LOGIC; 
  signal mul2_29_IBUF_2509 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_2567 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_2568 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal en_a_0 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_13_0 : STD_LOGIC; 
  signal N186_0 : STD_LOGIC; 
  signal N115_0 : STD_LOGIC; 
  signal N114_0 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_9_Q : STD_LOGIC; 
  signal N293_0 : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal N105_0 : STD_LOGIC; 
  signal N292_0 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N260_0 : STD_LOGIC; 
  signal N118_0 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal N259_0 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N192_0 : STD_LOGIC; 
  signal N103_0 : STD_LOGIC; 
  signal N102_0 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N197_0 : STD_LOGIC; 
  signal N195_0 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_7_0 : STD_LOGIC; 
  signal N229_0 : STD_LOGIC; 
  signal N188_0 : STD_LOGIC; 
  signal N189_0 : STD_LOGIC; 
  signal a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_9_0 : STD_LOGIC; 
  signal N226_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_16_fa_c1_SW0_O : STD_LOGIC; 
  signal N248_0 : STD_LOGIC; 
  signal N220_0 : STD_LOGIC; 
  signal N221_0 : STD_LOGIC; 
  signal N241_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_21_0 : STD_LOGIC; 
  signal N182_0 : STD_LOGIC; 
  signal a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N170_0 : STD_LOGIC; 
  signal N183_0 : STD_LOGIC; 
  signal N171_0 : STD_LOGIC; 
  signal N244_0 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N141_0 : STD_LOGIC; 
  signal a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N286_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_22_fa_c1_SW3_O : STD_LOGIC; 
  signal N174_0 : STD_LOGIC; 
  signal N287_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_5_fa_c1_O : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_5_0 : STD_LOGIC; 
  signal N336_0 : STD_LOGIC; 
  signal N156_0 : STD_LOGIC; 
  signal N215_0 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N266_0 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N232_0 : STD_LOGIC; 
  signal N212_0 : STD_LOGIC; 
  signal N272_0 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_2_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_16_fa_c1_SW2_O : STD_LOGIC; 
  signal N314_0 : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_18_0 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_2700 : STD_LOGIC; 
  signal cu_en_a_SW0_O : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_2702 : STD_LOGIC; 
  signal gestore_shift_rca_carry_1_Q : STD_LOGIC; 
  signal N206_0 : STD_LOGIC; 
  signal N200_0 : STD_LOGIC; 
  signal N201_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_3_Q : STD_LOGIC; 
  signal N120_0 : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O : STD_LOGIC; 
  signal gestore_shift_rca_carry_17_0 : STD_LOGIC; 
  signal a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_7_Q : STD_LOGIC; 
  signal N198_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_0 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218_0 : STD_LOGIC; 
  signal N275_0 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N223_0 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N144_0 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N238_0 : STD_LOGIC; 
  signal a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N295_0 : STD_LOGIC; 
  signal N251_0 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N150_0 : STD_LOGIC; 
  signal N167_0 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N298_0 : STD_LOGIC; 
  signal N254_0 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N153_0 : STD_LOGIC; 
  signal N235_0 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N301_0 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N214_0 : STD_LOGIC; 
  signal N304_0 : STD_LOGIC; 
  signal N99_0 : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_9_fa_c1_O : STD_LOGIC; 
  signal N211_0 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N209_0 : STD_LOGIC; 
  signal N208_0 : STD_LOGIC; 
  signal N307_0 : STD_LOGIC; 
  signal N308_0 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N311_0 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N230_0 : STD_LOGIC; 
  signal N263_0 : STD_LOGIC; 
  signal N173_0 : STD_LOGIC; 
  signal N179_0 : STD_LOGIC; 
  signal N180_0 : STD_LOGIC; 
  signal N168_0 : STD_LOGIC; 
  signal N147_0 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal gestore_shift_rca_rca_24_fa_c1_SW0_O : STD_LOGIC; 
  signal N289_0 : STD_LOGIC; 
  signal a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N290_0 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O : STD_LOGIC; 
  signal a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_b_add_sub_13_0 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N126_0 : STD_LOGIC; 
  signal a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N277_0 : STD_LOGIC; 
  signal a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal gestore_shift_rca_rca_29_fa_c1_SW0_O : STD_LOGIC; 
  signal gestore_shift_rca_rca_29_fa_c1_SW1_O : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N138_0 : STD_LOGIC; 
  signal N283_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_3_fa_c1_O : STD_LOGIC; 
  signal N332_0 : STD_LOGIC; 
  signal N176_0 : STD_LOGIC; 
  signal N164_0 : STD_LOGIC; 
  signal N177_0 : STD_LOGIC; 
  signal N165_0 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N129_0 : STD_LOGIC; 
  signal N280_0 : STD_LOGIC; 
  signal gestore_shift_rca_rca_18_fa_c1_SW3_O : STD_LOGIC; 
  signal N281_0 : STD_LOGIC; 
  signal N236_0 : STD_LOGIC; 
  signal operation_counter_hit_2839 : STD_LOGIC; 
  signal N305_0 : STD_LOGIC; 
  signal N299_0 : STD_LOGIC; 
  signal N302_0 : STD_LOGIC; 
  signal N296_0 : STD_LOGIC; 
  signal N284_0 : STD_LOGIC; 
  signal N278_0 : STD_LOGIC; 
  signal N123_0 : STD_LOGIC; 
  signal N124_0 : STD_LOGIC; 
  signal N93_0 : STD_LOGIC; 
  signal N94_0 : STD_LOGIC; 
  signal N310_0 : STD_LOGIC; 
  signal N132_0 : STD_LOGIC; 
  signal N133_0 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_14_Q : STD_LOGIC; 
  signal N135_0 : STD_LOGIC; 
  signal N136_0 : STD_LOGIC; 
  signal gestore_shift_rca_carry_22_Q : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal en_i_O : STD_LOGIC; 
  signal mul1_0_INBUF : STD_LOGIC; 
  signal mul1_1_INBUF : STD_LOGIC; 
  signal mul1_2_INBUF : STD_LOGIC; 
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
  signal mul1_8_INBUF : STD_LOGIC; 
  signal mul2_5_INBUF : STD_LOGIC; 
  signal mul1_9_INBUF : STD_LOGIC; 
  signal mul2_6_INBUF : STD_LOGIC; 
  signal mul2_7_INBUF : STD_LOGIC; 
  signal mul2_8_INBUF : STD_LOGIC; 
  signal mul2_9_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal product_0_O : STD_LOGIC; 
  signal product_1_O : STD_LOGIC; 
  signal product_2_O : STD_LOGIC; 
  signal product_3_O : STD_LOGIC; 
  signal product_4_O : STD_LOGIC; 
  signal product_5_O : STD_LOGIC; 
  signal product_6_O : STD_LOGIC; 
  signal product_7_O : STD_LOGIC; 
  signal product_8_O : STD_LOGIC; 
  signal product_9_O : STD_LOGIC; 
  signal fin_0_O : STD_LOGIC; 
  signal mul1_10_INBUF : STD_LOGIC; 
  signal mul1_11_INBUF : STD_LOGIC; 
  signal mul1_20_INBUF : STD_LOGIC; 
  signal mul1_12_INBUF : STD_LOGIC; 
  signal mul1_21_INBUF : STD_LOGIC; 
  signal mul1_13_INBUF : STD_LOGIC; 
  signal mul1_30_INBUF : STD_LOGIC; 
  signal mul1_22_INBUF : STD_LOGIC; 
  signal mul1_14_INBUF : STD_LOGIC; 
  signal mul1_31_INBUF : STD_LOGIC; 
  signal mul1_23_INBUF : STD_LOGIC; 
  signal mul1_15_INBUF : STD_LOGIC; 
  signal mul1_24_INBUF : STD_LOGIC; 
  signal mul1_16_INBUF : STD_LOGIC; 
  signal mul1_25_INBUF : STD_LOGIC; 
  signal mul1_17_INBUF : STD_LOGIC; 
  signal mul2_10_INBUF : STD_LOGIC; 
  signal mul1_26_INBUF : STD_LOGIC; 
  signal mul1_18_INBUF : STD_LOGIC; 
  signal mul2_11_INBUF : STD_LOGIC; 
  signal mul1_27_INBUF : STD_LOGIC; 
  signal mul1_19_INBUF : STD_LOGIC; 
  signal mul2_20_INBUF : STD_LOGIC; 
  signal mul2_12_INBUF : STD_LOGIC; 
  signal mul1_28_INBUF : STD_LOGIC; 
  signal mul2_21_INBUF : STD_LOGIC; 
  signal mul2_13_INBUF : STD_LOGIC; 
  signal mul1_29_INBUF : STD_LOGIC; 
  signal mul2_30_INBUF : STD_LOGIC; 
  signal mul2_22_INBUF : STD_LOGIC; 
  signal mul2_14_INBUF : STD_LOGIC; 
  signal mul2_31_INBUF : STD_LOGIC; 
  signal mul2_23_INBUF : STD_LOGIC; 
  signal mul2_15_INBUF : STD_LOGIC; 
  signal mul2_24_INBUF : STD_LOGIC; 
  signal mul2_16_INBUF : STD_LOGIC; 
  signal mul2_25_INBUF : STD_LOGIC; 
  signal mul2_17_INBUF : STD_LOGIC; 
  signal mul2_26_INBUF : STD_LOGIC; 
  signal mul2_18_INBUF : STD_LOGIC; 
  signal mul2_27_INBUF : STD_LOGIC; 
  signal mul2_19_INBUF : STD_LOGIC; 
  signal mul2_28_INBUF : STD_LOGIC; 
  signal mul2_29_INBUF : STD_LOGIC; 
  signal product_10_O : STD_LOGIC; 
  signal product_11_O : STD_LOGIC; 
  signal product_20_O : STD_LOGIC; 
  signal product_12_O : STD_LOGIC; 
  signal product_21_O : STD_LOGIC; 
  signal product_13_O : STD_LOGIC; 
  signal product_30_O : STD_LOGIC; 
  signal product_22_O : STD_LOGIC; 
  signal product_14_O : STD_LOGIC; 
  signal product_31_O : STD_LOGIC; 
  signal product_23_O : STD_LOGIC; 
  signal product_15_O : STD_LOGIC; 
  signal product_40_O : STD_LOGIC; 
  signal product_32_O : STD_LOGIC; 
  signal product_24_O : STD_LOGIC; 
  signal product_16_O : STD_LOGIC; 
  signal product_41_O : STD_LOGIC; 
  signal product_33_O : STD_LOGIC; 
  signal product_25_O : STD_LOGIC; 
  signal product_17_O : STD_LOGIC; 
  signal product_50_O : STD_LOGIC; 
  signal product_42_O : STD_LOGIC; 
  signal product_34_O : STD_LOGIC; 
  signal product_26_O : STD_LOGIC; 
  signal product_18_O : STD_LOGIC; 
  signal product_51_O : STD_LOGIC; 
  signal product_43_O : STD_LOGIC; 
  signal product_35_O : STD_LOGIC; 
  signal product_27_O : STD_LOGIC; 
  signal product_19_O : STD_LOGIC; 
  signal product_60_O : STD_LOGIC; 
  signal product_52_O : STD_LOGIC; 
  signal product_44_O : STD_LOGIC; 
  signal product_36_O : STD_LOGIC; 
  signal product_28_O : STD_LOGIC; 
  signal product_61_O : STD_LOGIC; 
  signal product_53_O : STD_LOGIC; 
  signal product_45_O : STD_LOGIC; 
  signal product_37_O : STD_LOGIC; 
  signal product_29_O : STD_LOGIC; 
  signal product_62_O : STD_LOGIC; 
  signal product_54_O : STD_LOGIC; 
  signal product_46_O : STD_LOGIC; 
  signal product_38_O : STD_LOGIC; 
  signal product_63_O : STD_LOGIC; 
  signal product_55_O : STD_LOGIC; 
  signal product_47_O : STD_LOGIC; 
  signal product_39_O : STD_LOGIC; 
  signal product_56_O : STD_LOGIC; 
  signal product_48_O : STD_LOGIC; 
  signal product_57_O : STD_LOGIC; 
  signal product_49_O : STD_LOGIC; 
  signal product_58_O : STD_LOGIC; 
  signal product_59_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_3835 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_3833 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_3826 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_mux2_1_X1_3824 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_3818 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_3871 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_F5MUX_3869 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_BXINV_3862 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_mux2_1_X1_3860 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_3854 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_3907 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_F5MUX_3905 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_BXINV_3898 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_mux2_1_X1_3896 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_3890 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_3943 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_3941 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_3934 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_mux2_1_X1_3932 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_3925 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_3979 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_F5MUX_3977 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_BXINV_3970 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_mux2_1_X1_3968 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_3962 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_4015 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_F5MUX_4013 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_BXINV_4006 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_mux2_1_X1_4004 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_3998 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_4051 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_F5MUX_4049 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_BXINV_4042 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_mux2_1_X1_4040 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_4034 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_4087 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_4085 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_4078 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_4070 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_4123 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_F5MUX_4121 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_BXINV_4114 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_mux2_1_X1_4112 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_4106 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_4159 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_F5MUX_4157 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_BXINV_4150 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_mux2_1_X1_4148 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_4142 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_DXMUX_4195 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_F5MUX_4193 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_BXINV_4186 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_mux2_1_X1_4184 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_CLKINV_4178 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_4231 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_4229 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_4222 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_mux2_1_X1_4220 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_4214 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4267 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4265 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4258 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_mux2_1_X1_4256 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4250 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_DXMUX_4303 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_F5MUX_4301 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_BXINV_4294 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_mux2_1_X1_4292 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_CLKINV_4286 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_4339 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_4337 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_4330 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_mux2_1_X1_4328 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_4322 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_4375 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_F5MUX_4373 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_BXINV_4366 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_mux2_1_X1_4364 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_4358 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_4411 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_F5MUX_4409 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_BXINV_4402 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_mux2_1_X1_4400 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_4394 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_DXMUX_4447 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_F5MUX_4445 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_BXINV_4438 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_mux2_1_X1_4436 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_CLKINV_4430 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4483 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4481 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4474 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4466 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_4519 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_4517 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_4510 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_mux2_1_X1_4508 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_4502 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4555 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4553 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4546 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_mux2_1_X1_4544 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4538 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_DXMUX_4591 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_F5MUX_4589 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_BXINV_4582 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_mux2_1_X1_4580 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_CLKINV_4574 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_4627 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_F5MUX_4625 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_BXINV_4618 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_mux2_1_X1_4616 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_4610 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DXMUX_4663 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_F5MUX_4661 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_BXINV_4654 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_mux2_1_X1_4652 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_4646 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_DXMUX_4699 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_F5MUX_4697 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_BXINV_4690 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_mux2_1_X1_4688 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_CLKINV_4682 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_4735 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_F5MUX_4733 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_BXINV_4726 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_mux2_1_X1_4724 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_4718 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_DXMUX_4771 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_F5MUX_4769 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_BXINV_4762 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_mux2_1_X1_4760 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_CLKINV_4754 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4807 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4805 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4798 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4790 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4843 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4841 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4834 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_mux2_1_X1_4832 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4826 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_4879 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_4877 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_4870 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_mux2_1_X1_4868 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_4862 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_4915 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_F5MUX_4913 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_BXINV_4906 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_mux2_1_X1_4904 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_4898 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DXMUX_4951 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_F5MUX_4949 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_BXINV_4942 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_mux2_1_X1_4940 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_4934 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4987 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4985 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4978 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4970 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_5023 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_5021 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_5014 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_mux2_1_X1_5012 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_5006 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_5059 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_5057 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_5050 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_mux2_1_X1_5048 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_5042 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_5095 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_F5MUX_5093 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_BXINV_5086 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_mux2_1_X1_5084 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_5078 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_DXMUX_5131 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_F5MUX_5129 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_mux2_1_X : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_BXINV_5122 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_mux2_1_X1_5120 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_CLKINV_5114 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N194_pack_1 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N191_pack_1 : STD_LOGIC; 
  signal gestore_shift_rca_carry_21_Q : STD_LOGIC; 
  signal gestore_shift_rca_rca_16_fa_c1_SW0_O_pack_1 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_15_pack_1 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_23_pack_1 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_16_pack_1 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_24_pack_1 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N142_pack_1 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal gestore_shift_rca_rca_22_fa_c1_SW3_O_pack_1 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal gestore_shift_rca_rca_5_fa_c1_O_pack_2 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N157_pack_1 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N233_pack_1 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_5454 : STD_LOGIC; 
  signal a_x_2_Q : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_5438 : STD_LOGIC; 
  signal gestore_shift_rca_carry_18_Q : STD_LOGIC; 
  signal gestore_shift_rca_rca_16_fa_c1_SW2_O_pack_1 : STD_LOGIC; 
  signal en_a : STD_LOGIC; 
  signal cu_en_a_SW0_O_pack_1 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal gestore_shift_rca_carry_1_pack_2 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_8_pack_1 : STD_LOGIC; 
  signal gestore_shift_rca_carry_5_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_3_pack_1 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_11_pack_1 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_12_pack_1 : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_5657 : STD_LOGIC; 
  signal a_x_17_Q : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_5641 : STD_LOGIC; 
  signal gestore_shift_rca_carry_8_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_7_pack_1 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N239_pack_1 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N242_pack_1 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N145_pack_1 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N250_pack_1 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N253_pack_1 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N265_pack_1 : STD_LOGIC; 
  signal a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_5860 : STD_LOGIC; 
  signal a_x_10_Q : STD_LOGIC; 
  signal gestore_shift_rca_rca_9_fa_c1_O_pack_1 : STD_LOGIC; 
  signal a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_5844 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_29_pack_1 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_30_pack_1 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N269_pack_1 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N268_pack_1 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N271_pack_1 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_3_pack_1 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_4_pack_1 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N227_pack_1 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N224_pack_1 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N217_pack_1 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_31_pack_1 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_17_pack_1 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_25_pack_1 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_18_pack_1 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_26_pack_1 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal gestore_shift_rca_rca_24_fa_c1_SW0_O_pack_1 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N148_pack_1 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_6303 : STD_LOGIC; 
  signal a_x_1_Q : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_6287 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_10_pack_1 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_21_pack_1 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_14_pack_1 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_22_pack_1 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_6434 : STD_LOGIC; 
  signal a_x_3_Q : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O_pack_2 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_6418 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N127_pack_1 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N151_pack_1 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal gestore_shift_rca_rca_29_fa_c1_SW0_O_pack_1 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal gestore_shift_rca_rca_29_fa_c1_SW1_O_pack_1 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_5_pack_1 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_6_pack_1 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N185_pack_1 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N139_pack_1 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal gestore_shift_rca_rca_3_fa_c1_O_pack_2 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_19_pack_1 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_27_pack_1 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_20_pack_1 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal gestore_shift_b_add_sub_28_pack_1 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N130_pack_1 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal gestore_shift_rca_rca_18_fa_c1_SW3_O_pack_1 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N154_pack_1 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DXMUX_6860 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_DYMUX_6844 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd3_In : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd4_CLKINV_6834 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_6901 : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_6888 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd5_In : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_6879 : STD_LOGIC; 
  signal a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_6943 : STD_LOGIC; 
  signal a_x_29_Q : STD_LOGIC; 
  signal a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DYMUX_6928 : STD_LOGIC; 
  signal a_x_30_Q : STD_LOGIC; 
  signal a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_6918 : STD_LOGIC; 
  signal a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_6985 : STD_LOGIC; 
  signal a_x_27_Q : STD_LOGIC; 
  signal a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DYMUX_6970 : STD_LOGIC; 
  signal a_x_28_Q : STD_LOGIC; 
  signal a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_6960 : STD_LOGIC; 
  signal a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_7027 : STD_LOGIC; 
  signal a_x_25_Q : STD_LOGIC; 
  signal a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DYMUX_7012 : STD_LOGIC; 
  signal a_x_26_Q : STD_LOGIC; 
  signal a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_7002 : STD_LOGIC; 
  signal a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_7069 : STD_LOGIC; 
  signal a_x_23_Q : STD_LOGIC; 
  signal a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DYMUX_7054 : STD_LOGIC; 
  signal a_x_24_Q : STD_LOGIC; 
  signal a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_7044 : STD_LOGIC; 
  signal a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_7111 : STD_LOGIC; 
  signal a_x_19_Q : STD_LOGIC; 
  signal a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DYMUX_7096 : STD_LOGIC; 
  signal a_x_20_Q : STD_LOGIC; 
  signal a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_7086 : STD_LOGIC; 
  signal a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DYMUX_7134 : STD_LOGIC; 
  signal a_x_18_Q : STD_LOGIC; 
  signal a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_7125 : STD_LOGIC; 
  signal a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DYMUX_7157 : STD_LOGIC; 
  signal a_x_8_Q : STD_LOGIC; 
  signal a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_7148 : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_7180 : STD_LOGIC; 
  signal a_x_6_Q : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_7171 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_7203 : STD_LOGIC; 
  signal a_x_4_Q : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_7194 : STD_LOGIC; 
  signal a_chain_gen_31_sc_in_inst_edge_triggered_q_0_DYMUX_7226 : STD_LOGIC; 
  signal a_x_31_Q : STD_LOGIC; 
  signal a_chain_gen_31_sc_in_inst_edge_triggered_q_0_CLKINV_7217 : STD_LOGIC; 
  signal a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DYMUX_7249 : STD_LOGIC; 
  signal a_x_21_Q : STD_LOGIC; 
  signal a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_7240 : STD_LOGIC; 
  signal operation_counter_count_3_DXMUX_7294 : STD_LOGIC; 
  signal operation_counter_count_3_DYMUX_7279 : STD_LOGIC; 
  signal operation_counter_count_3_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_3_CLKINV_7269 : STD_LOGIC; 
  signal operation_counter_count_3_CEINV_7268 : STD_LOGIC; 
  signal operation_counter_count_4_DYMUX_7320 : STD_LOGIC; 
  signal operation_counter_count_4_CLKINV_7309 : STD_LOGIC; 
  signal operation_counter_count_4_CEINV_7308 : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_7356 : STD_LOGIC; 
  signal a_x_5_Q : STD_LOGIC; 
  signal N334_pack_2 : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_7340 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal operation_counter_hit_DXMUX_7441 : STD_LOGIC; 
  signal operation_counter_hit_cmp_eq0000 : STD_LOGIC; 
  signal N02_pack_1 : STD_LOGIC; 
  signal operation_counter_hit_CLKINV_7423 : STD_LOGIC; 
  signal operation_counter_hit_CEINV_7422 : STD_LOGIC; 
  signal prod1_q_11_DXMUX_7469 : STD_LOGIC; 
  signal prod1_q_11_DYMUX_7460 : STD_LOGIC; 
  signal prod1_q_11_SRINVNOT : STD_LOGIC; 
  signal prod1_q_11_CLKINV_7457 : STD_LOGIC; 
  signal prod1_q_11_CEINV_7456 : STD_LOGIC; 
  signal prod1_q_13_DXMUX_7497 : STD_LOGIC; 
  signal prod1_q_13_DYMUX_7488 : STD_LOGIC; 
  signal prod1_q_13_SRINVNOT : STD_LOGIC; 
  signal prod1_q_13_CLKINV_7485 : STD_LOGIC; 
  signal prod1_q_13_CEINV_7484 : STD_LOGIC; 
  signal prod1_q_21_DXMUX_7525 : STD_LOGIC; 
  signal prod1_q_21_DYMUX_7516 : STD_LOGIC; 
  signal prod1_q_21_SRINVNOT : STD_LOGIC; 
  signal prod1_q_21_CLKINV_7513 : STD_LOGIC; 
  signal prod1_q_21_CEINV_7512 : STD_LOGIC; 
  signal prod1_q_15_DXMUX_7553 : STD_LOGIC; 
  signal prod1_q_15_DYMUX_7544 : STD_LOGIC; 
  signal prod1_q_15_SRINVNOT : STD_LOGIC; 
  signal prod1_q_15_CLKINV_7541 : STD_LOGIC; 
  signal prod1_q_15_CEINV_7540 : STD_LOGIC; 
  signal prod1_q_23_DXMUX_7581 : STD_LOGIC; 
  signal prod1_q_23_DYMUX_7572 : STD_LOGIC; 
  signal prod1_q_23_SRINVNOT : STD_LOGIC; 
  signal prod1_q_23_CLKINV_7569 : STD_LOGIC; 
  signal prod1_q_23_CEINV_7568 : STD_LOGIC; 
  signal prod1_q_31_DXMUX_7609 : STD_LOGIC; 
  signal prod1_q_31_DYMUX_7600 : STD_LOGIC; 
  signal prod1_q_31_SRINVNOT : STD_LOGIC; 
  signal prod1_q_31_CLKINV_7597 : STD_LOGIC; 
  signal prod1_q_31_CEINV_7596 : STD_LOGIC; 
  signal prod1_q_17_DXMUX_7637 : STD_LOGIC; 
  signal prod1_q_17_DYMUX_7628 : STD_LOGIC; 
  signal prod1_q_17_SRINVNOT : STD_LOGIC; 
  signal prod1_q_17_CLKINV_7625 : STD_LOGIC; 
  signal prod1_q_17_CEINV_7624 : STD_LOGIC; 
  signal prod1_q_25_DXMUX_7665 : STD_LOGIC; 
  signal prod1_q_25_DYMUX_7656 : STD_LOGIC; 
  signal prod1_q_25_SRINVNOT : STD_LOGIC; 
  signal prod1_q_25_CLKINV_7653 : STD_LOGIC; 
  signal prod1_q_25_CEINV_7652 : STD_LOGIC; 
  signal prod1_q_33_DXMUX_7693 : STD_LOGIC; 
  signal prod1_q_33_DYMUX_7684 : STD_LOGIC; 
  signal prod1_q_33_SRINVNOT : STD_LOGIC; 
  signal prod1_q_33_CLKINV_7681 : STD_LOGIC; 
  signal prod1_q_33_CEINV_7680 : STD_LOGIC; 
  signal prod1_q_41_DXMUX_7721 : STD_LOGIC; 
  signal prod1_q_41_DYMUX_7712 : STD_LOGIC; 
  signal prod1_q_41_SRINVNOT : STD_LOGIC; 
  signal prod1_q_41_CLKINV_7709 : STD_LOGIC; 
  signal prod1_q_41_CEINV_7708 : STD_LOGIC; 
  signal prod1_q_19_DXMUX_7749 : STD_LOGIC; 
  signal prod1_q_19_DYMUX_7740 : STD_LOGIC; 
  signal prod1_q_19_SRINVNOT : STD_LOGIC; 
  signal prod1_q_19_CLKINV_7737 : STD_LOGIC; 
  signal prod1_q_19_CEINV_7736 : STD_LOGIC; 
  signal prod1_q_27_DXMUX_7777 : STD_LOGIC; 
  signal prod1_q_27_DYMUX_7768 : STD_LOGIC; 
  signal prod1_q_27_SRINVNOT : STD_LOGIC; 
  signal prod1_q_27_CLKINV_7765 : STD_LOGIC; 
  signal prod1_q_27_CEINV_7764 : STD_LOGIC; 
  signal prod1_q_35_DXMUX_7805 : STD_LOGIC; 
  signal prod1_q_35_DYMUX_7796 : STD_LOGIC; 
  signal prod1_q_35_SRINVNOT : STD_LOGIC; 
  signal prod1_q_35_CLKINV_7793 : STD_LOGIC; 
  signal prod1_q_35_CEINV_7792 : STD_LOGIC; 
  signal prod1_q_43_DXMUX_7833 : STD_LOGIC; 
  signal prod1_q_43_DYMUX_7824 : STD_LOGIC; 
  signal prod1_q_43_SRINVNOT : STD_LOGIC; 
  signal prod1_q_43_CLKINV_7821 : STD_LOGIC; 
  signal prod1_q_43_CEINV_7820 : STD_LOGIC; 
  signal prod1_q_51_DXMUX_7861 : STD_LOGIC; 
  signal prod1_q_51_DYMUX_7852 : STD_LOGIC; 
  signal prod1_q_51_SRINVNOT : STD_LOGIC; 
  signal prod1_q_51_CLKINV_7849 : STD_LOGIC; 
  signal prod1_q_51_CEINV_7848 : STD_LOGIC; 
  signal prod1_q_29_DXMUX_7889 : STD_LOGIC; 
  signal prod1_q_29_DYMUX_7880 : STD_LOGIC; 
  signal prod1_q_29_SRINVNOT : STD_LOGIC; 
  signal prod1_q_29_CLKINV_7877 : STD_LOGIC; 
  signal prod1_q_29_CEINV_7876 : STD_LOGIC; 
  signal prod1_q_37_DXMUX_7917 : STD_LOGIC; 
  signal prod1_q_37_DYMUX_7908 : STD_LOGIC; 
  signal prod1_q_37_SRINVNOT : STD_LOGIC; 
  signal prod1_q_37_CLKINV_7905 : STD_LOGIC; 
  signal prod1_q_37_CEINV_7904 : STD_LOGIC; 
  signal prod1_q_45_DXMUX_7945 : STD_LOGIC; 
  signal prod1_q_45_DYMUX_7936 : STD_LOGIC; 
  signal prod1_q_45_SRINVNOT : STD_LOGIC; 
  signal prod1_q_45_CLKINV_7933 : STD_LOGIC; 
  signal prod1_q_45_CEINV_7932 : STD_LOGIC; 
  signal prod1_q_53_DXMUX_7973 : STD_LOGIC; 
  signal prod1_q_53_DYMUX_7964 : STD_LOGIC; 
  signal prod1_q_53_SRINVNOT : STD_LOGIC; 
  signal prod1_q_53_CLKINV_7961 : STD_LOGIC; 
  signal prod1_q_53_CEINV_7960 : STD_LOGIC; 
  signal prod1_q_61_DXMUX_8001 : STD_LOGIC; 
  signal prod1_q_61_DYMUX_7992 : STD_LOGIC; 
  signal prod1_q_61_SRINVNOT : STD_LOGIC; 
  signal prod1_q_61_CLKINV_7989 : STD_LOGIC; 
  signal prod1_q_61_CEINV_7988 : STD_LOGIC; 
  signal prod1_q_39_DXMUX_8029 : STD_LOGIC; 
  signal prod1_q_39_DYMUX_8020 : STD_LOGIC; 
  signal prod1_q_39_SRINVNOT : STD_LOGIC; 
  signal prod1_q_39_CLKINV_8017 : STD_LOGIC; 
  signal prod1_q_39_CEINV_8016 : STD_LOGIC; 
  signal prod1_q_47_DXMUX_8057 : STD_LOGIC; 
  signal prod1_q_47_DYMUX_8048 : STD_LOGIC; 
  signal prod1_q_47_SRINVNOT : STD_LOGIC; 
  signal prod1_q_47_CLKINV_8045 : STD_LOGIC; 
  signal prod1_q_47_CEINV_8044 : STD_LOGIC; 
  signal prod1_q_55_DXMUX_8085 : STD_LOGIC; 
  signal prod1_q_55_DYMUX_8076 : STD_LOGIC; 
  signal prod1_q_55_SRINVNOT : STD_LOGIC; 
  signal prod1_q_55_CLKINV_8073 : STD_LOGIC; 
  signal prod1_q_55_CEINV_8072 : STD_LOGIC; 
  signal prod1_q_63_DXMUX_8113 : STD_LOGIC; 
  signal prod1_q_63_DYMUX_8104 : STD_LOGIC; 
  signal prod1_q_63_SRINVNOT : STD_LOGIC; 
  signal prod1_q_63_CLKINV_8101 : STD_LOGIC; 
  signal prod1_q_63_CEINV_8100 : STD_LOGIC; 
  signal prod1_q_49_DXMUX_8141 : STD_LOGIC; 
  signal prod1_q_49_DYMUX_8132 : STD_LOGIC; 
  signal prod1_q_49_SRINVNOT : STD_LOGIC; 
  signal prod1_q_49_CLKINV_8129 : STD_LOGIC; 
  signal prod1_q_49_CEINV_8128 : STD_LOGIC; 
  signal prod1_q_57_DXMUX_8169 : STD_LOGIC; 
  signal prod1_q_57_DYMUX_8160 : STD_LOGIC; 
  signal prod1_q_57_SRINVNOT : STD_LOGIC; 
  signal prod1_q_57_CLKINV_8157 : STD_LOGIC; 
  signal prod1_q_57_CEINV_8156 : STD_LOGIC; 
  signal prod1_q_59_DXMUX_8197 : STD_LOGIC; 
  signal prod1_q_59_DYMUX_8188 : STD_LOGIC; 
  signal prod1_q_59_SRINVNOT : STD_LOGIC; 
  signal prod1_q_59_CLKINV_8185 : STD_LOGIC; 
  signal prod1_q_59_CEINV_8184 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_8269 : STD_LOGIC; 
  signal a_x_14_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_14_pack_1 : STD_LOGIC; 
  signal a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_8253 : STD_LOGIC; 
  signal a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_8304 : STD_LOGIC; 
  signal a_x_22_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_22_pack_1 : STD_LOGIC; 
  signal a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_8288 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_8387 : STD_LOGIC; 
  signal a_x_7_Q : STD_LOGIC; 
  signal N338_pack_2 : STD_LOGIC; 
  signal a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_8371 : STD_LOGIC; 
  signal gestore_shift_rca_carry_2_Q : STD_LOGIC; 
  signal f_q_0_DYMUX_8427 : STD_LOGIC; 
  signal f_q_0_CLKINV_8424 : STD_LOGIC; 
  signal f_q_0_CEINV_8423 : STD_LOGIC; 
  signal m_q_1_DXMUX_8455 : STD_LOGIC; 
  signal m_q_1_DYMUX_8446 : STD_LOGIC; 
  signal m_q_1_SRINVNOT : STD_LOGIC; 
  signal m_q_1_CLKINV_8443 : STD_LOGIC; 
  signal m_q_1_CEINV_8442 : STD_LOGIC; 
  signal m_q_3_DXMUX_8483 : STD_LOGIC; 
  signal m_q_3_DYMUX_8474 : STD_LOGIC; 
  signal m_q_3_SRINVNOT : STD_LOGIC; 
  signal m_q_3_CLKINV_8471 : STD_LOGIC; 
  signal m_q_3_CEINV_8470 : STD_LOGIC; 
  signal m_q_5_DXMUX_8511 : STD_LOGIC; 
  signal m_q_5_DYMUX_8502 : STD_LOGIC; 
  signal m_q_5_SRINVNOT : STD_LOGIC; 
  signal m_q_5_CLKINV_8499 : STD_LOGIC; 
  signal m_q_5_CEINV_8498 : STD_LOGIC; 
  signal m_q_7_DXMUX_8539 : STD_LOGIC; 
  signal m_q_7_DYMUX_8530 : STD_LOGIC; 
  signal m_q_7_SRINVNOT : STD_LOGIC; 
  signal m_q_7_CLKINV_8527 : STD_LOGIC; 
  signal m_q_7_CEINV_8526 : STD_LOGIC; 
  signal m_q_9_DXMUX_8567 : STD_LOGIC; 
  signal m_q_9_DYMUX_8558 : STD_LOGIC; 
  signal m_q_9_SRINVNOT : STD_LOGIC; 
  signal m_q_9_CLKINV_8555 : STD_LOGIC; 
  signal m_q_9_CEINV_8554 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal gestore_shift_rca_carry_17_Q : STD_LOGIC; 
  signal gestore_shift_rca_carry_9_pack_1 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DXMUX_8820 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_DYMUX_8812 : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_state_FSM_FFd2_CLKINV_8809 : STD_LOGIC; 
  signal a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_8855 : STD_LOGIC; 
  signal a_x_9_Q : STD_LOGIC; 
  signal N340_pack_2 : STD_LOGIC; 
  signal a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_8839 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_8914 : STD_LOGIC; 
  signal a_x_13_Q : STD_LOGIC; 
  signal N342_pack_2 : STD_LOGIC; 
  signal a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_8898 : STD_LOGIC; 
  signal gestore_shift_rca_carry_13_Q : STD_LOGIC; 
  signal N262_pack_1 : STD_LOGIC; 
  signal prod1_q_1_DXMUX_8965 : STD_LOGIC; 
  signal prod1_q_1_DYMUX_8956 : STD_LOGIC; 
  signal prod1_q_1_SRINVNOT : STD_LOGIC; 
  signal prod1_q_1_CLKINV_8953 : STD_LOGIC; 
  signal prod1_q_1_CEINV_8952 : STD_LOGIC; 
  signal prod1_q_3_DXMUX_8993 : STD_LOGIC; 
  signal prod1_q_3_DYMUX_8984 : STD_LOGIC; 
  signal prod1_q_3_SRINVNOT : STD_LOGIC; 
  signal prod1_q_3_CLKINV_8981 : STD_LOGIC; 
  signal prod1_q_3_CEINV_8980 : STD_LOGIC; 
  signal prod1_q_5_DXMUX_9021 : STD_LOGIC; 
  signal prod1_q_5_DYMUX_9012 : STD_LOGIC; 
  signal prod1_q_5_SRINVNOT : STD_LOGIC; 
  signal prod1_q_5_CLKINV_9009 : STD_LOGIC; 
  signal prod1_q_5_CEINV_9008 : STD_LOGIC; 
  signal prod1_q_7_DXMUX_9049 : STD_LOGIC; 
  signal prod1_q_7_DYMUX_9040 : STD_LOGIC; 
  signal prod1_q_7_SRINVNOT : STD_LOGIC; 
  signal prod1_q_7_CLKINV_9037 : STD_LOGIC; 
  signal prod1_q_7_CEINV_9036 : STD_LOGIC; 
  signal prod1_q_9_DXMUX_9077 : STD_LOGIC; 
  signal prod1_q_9_DYMUX_9068 : STD_LOGIC; 
  signal prod1_q_9_SRINVNOT : STD_LOGIC; 
  signal prod1_q_9_CLKINV_9065 : STD_LOGIC; 
  signal prod1_q_9_CEINV_9064 : STD_LOGIC; 
  signal m_q_11_DXMUX_9105 : STD_LOGIC; 
  signal m_q_11_DYMUX_9096 : STD_LOGIC; 
  signal m_q_11_SRINVNOT : STD_LOGIC; 
  signal m_q_11_CLKINV_9093 : STD_LOGIC; 
  signal m_q_11_CEINV_9092 : STD_LOGIC; 
  signal m_q_13_DXMUX_9133 : STD_LOGIC; 
  signal m_q_13_DYMUX_9124 : STD_LOGIC; 
  signal m_q_13_SRINVNOT : STD_LOGIC; 
  signal m_q_13_CLKINV_9121 : STD_LOGIC; 
  signal m_q_13_CEINV_9120 : STD_LOGIC; 
  signal m_q_21_DXMUX_9161 : STD_LOGIC; 
  signal m_q_21_DYMUX_9152 : STD_LOGIC; 
  signal m_q_21_SRINVNOT : STD_LOGIC; 
  signal m_q_21_CLKINV_9149 : STD_LOGIC; 
  signal m_q_21_CEINV_9148 : STD_LOGIC; 
  signal m_q_15_DXMUX_9189 : STD_LOGIC; 
  signal m_q_15_DYMUX_9180 : STD_LOGIC; 
  signal m_q_15_SRINVNOT : STD_LOGIC; 
  signal m_q_15_CLKINV_9177 : STD_LOGIC; 
  signal m_q_15_CEINV_9176 : STD_LOGIC; 
  signal m_q_23_DXMUX_9217 : STD_LOGIC; 
  signal m_q_23_DYMUX_9208 : STD_LOGIC; 
  signal m_q_23_SRINVNOT : STD_LOGIC; 
  signal m_q_23_CLKINV_9205 : STD_LOGIC; 
  signal m_q_23_CEINV_9204 : STD_LOGIC; 
  signal m_q_31_DXMUX_9245 : STD_LOGIC; 
  signal m_q_31_DYMUX_9236 : STD_LOGIC; 
  signal m_q_31_SRINVNOT : STD_LOGIC; 
  signal m_q_31_CLKINV_9233 : STD_LOGIC; 
  signal m_q_31_CEINV_9232 : STD_LOGIC; 
  signal m_q_17_DXMUX_9273 : STD_LOGIC; 
  signal m_q_17_DYMUX_9264 : STD_LOGIC; 
  signal m_q_17_SRINVNOT : STD_LOGIC; 
  signal m_q_17_CLKINV_9261 : STD_LOGIC; 
  signal m_q_17_CEINV_9260 : STD_LOGIC; 
  signal m_q_25_DXMUX_9301 : STD_LOGIC; 
  signal m_q_25_DYMUX_9292 : STD_LOGIC; 
  signal m_q_25_SRINVNOT : STD_LOGIC; 
  signal m_q_25_CLKINV_9289 : STD_LOGIC; 
  signal m_q_25_CEINV_9288 : STD_LOGIC; 
  signal m_q_19_DXMUX_9329 : STD_LOGIC; 
  signal m_q_19_DYMUX_9320 : STD_LOGIC; 
  signal m_q_19_SRINVNOT : STD_LOGIC; 
  signal m_q_19_CLKINV_9317 : STD_LOGIC; 
  signal m_q_19_CEINV_9316 : STD_LOGIC; 
  signal m_q_27_DXMUX_9357 : STD_LOGIC; 
  signal m_q_27_DYMUX_9348 : STD_LOGIC; 
  signal m_q_27_SRINVNOT : STD_LOGIC; 
  signal m_q_27_CLKINV_9345 : STD_LOGIC; 
  signal m_q_27_CEINV_9344 : STD_LOGIC; 
  signal m_q_29_DXMUX_9385 : STD_LOGIC; 
  signal m_q_29_DYMUX_9376 : STD_LOGIC; 
  signal m_q_29_SRINVNOT : STD_LOGIC; 
  signal m_q_29_CLKINV_9373 : STD_LOGIC; 
  signal m_q_29_CEINV_9372 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal operation_counter_count_0_DXMUX_9650 : STD_LOGIC; 
  signal operation_counter_count_0_DYMUX_9641 : STD_LOGIC; 
  signal operation_counter_count_0_SRINVNOT : STD_LOGIC; 
  signal operation_counter_count_0_CLKINV_9630 : STD_LOGIC; 
  signal operation_counter_count_0_CEINV_9629 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3840 : STD_LOGIC; 
  signal q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3876 : STD_LOGIC; 
  signal q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3912 : STD_LOGIC; 
  signal a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_3948 : STD_LOGIC; 
  signal q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4704 : STD_LOGIC; 
  signal q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4740 : STD_LOGIC; 
  signal q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4776 : STD_LOGIC; 
  signal a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4812 : STD_LOGIC; 
  signal a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5459 : STD_LOGIC; 
  signal q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4128 : STD_LOGIC; 
  signal q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4164 : STD_LOGIC; 
  signal q_chain_gen_32_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_4200 : STD_LOGIC; 
  signal q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4236 : STD_LOGIC; 
  signal q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3984 : STD_LOGIC; 
  signal q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4020 : STD_LOGIC; 
  signal q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4056 : STD_LOGIC; 
  signal a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4092 : STD_LOGIC; 
  signal q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5136 : STD_LOGIC; 
  signal q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4560 : STD_LOGIC; 
  signal q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4596 : STD_LOGIC; 
  signal q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4632 : STD_LOGIC; 
  signal q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4668 : STD_LOGIC; 
  signal q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4272 : STD_LOGIC; 
  signal q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4308 : STD_LOGIC; 
  signal q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4344 : STD_LOGIC; 
  signal q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4380 : STD_LOGIC; 
  signal a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5662 : STD_LOGIC; 
  signal q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4416 : STD_LOGIC; 
  signal q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4452 : STD_LOGIC; 
  signal a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4488 : STD_LOGIC; 
  signal q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4524 : STD_LOGIC; 
  signal q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4848 : STD_LOGIC; 
  signal q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4884 : STD_LOGIC; 
  signal q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4920 : STD_LOGIC; 
  signal q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4956 : STD_LOGIC; 
  signal a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4992 : STD_LOGIC; 
  signal q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5028 : STD_LOGIC; 
  signal q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5064 : STD_LOGIC; 
  signal q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5100 : STD_LOGIC; 
  signal a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8860 : STD_LOGIC; 
  signal a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8919 : STD_LOGIC; 
  signal a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5865 : STD_LOGIC; 
  signal a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6439 : STD_LOGIC; 
  signal a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6308 : STD_LOGIC; 
  signal operation_counter_hit_FFX_RSTAND_7447 : STD_LOGIC; 
  signal a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7139 : STD_LOGIC; 
  signal a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7162 : STD_LOGIC; 
  signal a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7185 : STD_LOGIC; 
  signal a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7208 : STD_LOGIC; 
  signal a_chain_gen_31_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_7231 : STD_LOGIC; 
  signal a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7254 : STD_LOGIC; 
  signal operation_counter_count_4_FFY_RSTAND_7326 : STD_LOGIC; 
  signal a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_7361 : STD_LOGIC; 
  signal a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8392 : STD_LOGIC; 
  signal f_q_0_FFY_RSTAND_8433 : STD_LOGIC; 
  signal a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8274 : STD_LOGIC; 
  signal a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8309 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal prod1_q : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal f_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal m_q : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal gestore_shift_b_add_sub : STD_LOGIC_VECTOR ( 31 downto 3 ); 
  signal operation_counter_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal q_x : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 1 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  en_i_OBUF : X_OBUF
    port map (
      I => en_i_O,
      O => en_i
    );
  mul1_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(0),
      O => mul1_0_INBUF
    );
  mul1_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(1),
      O => mul1_1_INBUF
    );
  mul1_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(2),
      O => mul1_2_INBUF
    );
  mul1_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(3),
      O => mul1_3_INBUF
    );
  mul2_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(0),
      O => mul2_0_INBUF
    );
  mul2_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_0_INBUF,
      O => mul2_0_IBUF_2437
    );
  mul1_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(4),
      O => mul1_4_INBUF
    );
  mul2_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(1),
      O => mul2_1_INBUF
    );
  mul2_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_1_INBUF,
      O => mul2_1_IBUF_2439
    );
  mul1_5_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(5),
      O => mul1_5_INBUF
    );
  mul2_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(2),
      O => mul2_2_INBUF
    );
  mul2_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_2_INBUF,
      O => mul2_2_IBUF_2441
    );
  mul1_6_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(6),
      O => mul1_6_INBUF
    );
  mul2_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(3),
      O => mul2_3_INBUF
    );
  mul2_3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_3_INBUF,
      O => mul2_3_IBUF_2443
    );
  mul1_7_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(7),
      O => mul1_7_INBUF
    );
  mul2_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(4),
      O => mul2_4_INBUF
    );
  mul2_4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_4_INBUF,
      O => mul2_4_IBUF_2445
    );
  mul1_8_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(8),
      O => mul1_8_INBUF
    );
  mul2_5_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(5),
      O => mul2_5_INBUF
    );
  mul2_5_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_5_INBUF,
      O => mul2_5_IBUF_2447
    );
  mul1_9_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(9),
      O => mul1_9_INBUF
    );
  mul2_6_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(6),
      O => mul2_6_INBUF
    );
  mul2_6_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_6_INBUF,
      O => mul2_6_IBUF_2449
    );
  mul2_7_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(7),
      O => mul2_7_INBUF
    );
  mul2_7_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_7_INBUF,
      O => mul2_7_IBUF_2450
    );
  mul2_8_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(8),
      O => mul2_8_INBUF
    );
  mul2_8_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_8_INBUF,
      O => mul2_8_IBUF_2451
    );
  mul2_9_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(9),
      O => mul2_9_INBUF
    );
  mul2_9_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_9_INBUF,
      O => mul2_9_IBUF_2452
    );
  reset_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_2453
    );
  start_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_2454
    );
  product_0_OBUF : X_OBUF
    port map (
      I => product_0_O,
      O => product(0)
    );
  product_1_OBUF : X_OBUF
    port map (
      I => product_1_O,
      O => product(1)
    );
  product_2_OBUF : X_OBUF
    port map (
      I => product_2_O,
      O => product(2)
    );
  product_3_OBUF : X_OBUF
    port map (
      I => product_3_O,
      O => product(3)
    );
  product_4_OBUF : X_OBUF
    port map (
      I => product_4_O,
      O => product(4)
    );
  product_5_OBUF : X_OBUF
    port map (
      I => product_5_O,
      O => product(5)
    );
  product_6_OBUF : X_OBUF
    port map (
      I => product_6_O,
      O => product(6)
    );
  product_7_OBUF : X_OBUF
    port map (
      I => product_7_O,
      O => product(7)
    );
  product_8_OBUF : X_OBUF
    port map (
      I => product_8_O,
      O => product(8)
    );
  product_9_OBUF : X_OBUF
    port map (
      I => product_9_O,
      O => product(9)
    );
  fin_0_OBUF : X_OBUF
    port map (
      I => fin_0_O,
      O => fin(0)
    );
  mul1_10_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(10),
      O => mul1_10_INBUF
    );
  mul1_11_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(11),
      O => mul1_11_INBUF
    );
  mul1_20_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(20),
      O => mul1_20_INBUF
    );
  mul1_12_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(12),
      O => mul1_12_INBUF
    );
  mul1_21_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(21),
      O => mul1_21_INBUF
    );
  mul1_13_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(13),
      O => mul1_13_INBUF
    );
  mul1_30_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(30),
      O => mul1_30_INBUF
    );
  mul1_22_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(22),
      O => mul1_22_INBUF
    );
  mul1_14_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(14),
      O => mul1_14_INBUF
    );
  mul1_31_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(31),
      O => mul1_31_INBUF
    );
  mul1_23_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(23),
      O => mul1_23_INBUF
    );
  mul1_15_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(15),
      O => mul1_15_INBUF
    );
  mul1_24_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(24),
      O => mul1_24_INBUF
    );
  mul1_16_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(16),
      O => mul1_16_INBUF
    );
  mul1_25_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(25),
      O => mul1_25_INBUF
    );
  mul1_17_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(17),
      O => mul1_17_INBUF
    );
  mul2_10_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(10),
      O => mul2_10_INBUF
    );
  mul2_10_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_10_INBUF,
      O => mul2_10_IBUF_2482
    );
  mul1_26_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(26),
      O => mul1_26_INBUF
    );
  mul1_18_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(18),
      O => mul1_18_INBUF
    );
  mul2_11_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(11),
      O => mul2_11_INBUF
    );
  mul2_11_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_11_INBUF,
      O => mul2_11_IBUF_2485
    );
  mul1_27_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(27),
      O => mul1_27_INBUF
    );
  mul1_19_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(19),
      O => mul1_19_INBUF
    );
  mul2_20_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(20),
      O => mul2_20_INBUF
    );
  mul2_20_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_20_INBUF,
      O => mul2_20_IBUF_2488
    );
  mul2_12_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(12),
      O => mul2_12_INBUF
    );
  mul2_12_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_12_INBUF,
      O => mul2_12_IBUF_2489
    );
  mul1_28_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(28),
      O => mul1_28_INBUF
    );
  mul2_21_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(21),
      O => mul2_21_INBUF
    );
  mul2_21_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_21_INBUF,
      O => mul2_21_IBUF_2491
    );
  mul2_13_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(13),
      O => mul2_13_INBUF
    );
  mul2_13_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_13_INBUF,
      O => mul2_13_IBUF_2492
    );
  mul1_29_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1(29),
      O => mul1_29_INBUF
    );
  mul2_30_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(30),
      O => mul2_30_INBUF
    );
  mul2_30_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_30_INBUF,
      O => mul2_30_IBUF_2494
    );
  mul2_22_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(22),
      O => mul2_22_INBUF
    );
  mul2_22_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_22_INBUF,
      O => mul2_22_IBUF_2495
    );
  mul2_14_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(14),
      O => mul2_14_INBUF
    );
  mul2_14_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_14_INBUF,
      O => mul2_14_IBUF_2496
    );
  mul2_31_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(31),
      O => mul2_31_INBUF
    );
  mul2_31_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_31_INBUF,
      O => mul2_31_IBUF_2497
    );
  mul2_23_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(23),
      O => mul2_23_INBUF
    );
  mul2_23_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_23_INBUF,
      O => mul2_23_IBUF_2498
    );
  mul2_15_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(15),
      O => mul2_15_INBUF
    );
  mul2_15_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_15_INBUF,
      O => mul2_15_IBUF_2499
    );
  mul2_24_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(24),
      O => mul2_24_INBUF
    );
  mul2_24_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_24_INBUF,
      O => mul2_24_IBUF_2500
    );
  mul2_16_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(16),
      O => mul2_16_INBUF
    );
  mul2_16_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_16_INBUF,
      O => mul2_16_IBUF_2501
    );
  mul2_25_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(25),
      O => mul2_25_INBUF
    );
  mul2_25_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_25_INBUF,
      O => mul2_25_IBUF_2502
    );
  mul2_17_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(17),
      O => mul2_17_INBUF
    );
  mul2_17_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_17_INBUF,
      O => mul2_17_IBUF_2503
    );
  mul2_26_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(26),
      O => mul2_26_INBUF
    );
  mul2_26_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_26_INBUF,
      O => mul2_26_IBUF_2504
    );
  mul2_18_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(18),
      O => mul2_18_INBUF
    );
  mul2_18_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_18_INBUF,
      O => mul2_18_IBUF_2505
    );
  mul2_27_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(27),
      O => mul2_27_INBUF
    );
  mul2_27_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_27_INBUF,
      O => mul2_27_IBUF_2506
    );
  mul2_19_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(19),
      O => mul2_19_INBUF
    );
  mul2_19_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_19_INBUF,
      O => mul2_19_IBUF_2507
    );
  mul2_28_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(28),
      O => mul2_28_INBUF
    );
  mul2_28_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_28_INBUF,
      O => mul2_28_IBUF_2508
    );
  mul2_29_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2(29),
      O => mul2_29_INBUF
    );
  mul2_29_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul2_29_INBUF,
      O => mul2_29_IBUF_2509
    );
  product_10_OBUF : X_OBUF
    port map (
      I => product_10_O,
      O => product(10)
    );
  product_11_OBUF : X_OBUF
    port map (
      I => product_11_O,
      O => product(11)
    );
  product_20_OBUF : X_OBUF
    port map (
      I => product_20_O,
      O => product(20)
    );
  product_12_OBUF : X_OBUF
    port map (
      I => product_12_O,
      O => product(12)
    );
  product_21_OBUF : X_OBUF
    port map (
      I => product_21_O,
      O => product(21)
    );
  product_13_OBUF : X_OBUF
    port map (
      I => product_13_O,
      O => product(13)
    );
  product_30_OBUF : X_OBUF
    port map (
      I => product_30_O,
      O => product(30)
    );
  product_22_OBUF : X_OBUF
    port map (
      I => product_22_O,
      O => product(22)
    );
  product_14_OBUF : X_OBUF
    port map (
      I => product_14_O,
      O => product(14)
    );
  product_31_OBUF : X_OBUF
    port map (
      I => product_31_O,
      O => product(31)
    );
  product_23_OBUF : X_OBUF
    port map (
      I => product_23_O,
      O => product(23)
    );
  product_15_OBUF : X_OBUF
    port map (
      I => product_15_O,
      O => product(15)
    );
  product_40_OBUF : X_OBUF
    port map (
      I => product_40_O,
      O => product(40)
    );
  product_32_OBUF : X_OBUF
    port map (
      I => product_32_O,
      O => product(32)
    );
  product_24_OBUF : X_OBUF
    port map (
      I => product_24_O,
      O => product(24)
    );
  product_16_OBUF : X_OBUF
    port map (
      I => product_16_O,
      O => product(16)
    );
  product_41_OBUF : X_OBUF
    port map (
      I => product_41_O,
      O => product(41)
    );
  product_33_OBUF : X_OBUF
    port map (
      I => product_33_O,
      O => product(33)
    );
  product_25_OBUF : X_OBUF
    port map (
      I => product_25_O,
      O => product(25)
    );
  product_17_OBUF : X_OBUF
    port map (
      I => product_17_O,
      O => product(17)
    );
  product_50_OBUF : X_OBUF
    port map (
      I => product_50_O,
      O => product(50)
    );
  product_42_OBUF : X_OBUF
    port map (
      I => product_42_O,
      O => product(42)
    );
  product_34_OBUF : X_OBUF
    port map (
      I => product_34_O,
      O => product(34)
    );
  product_26_OBUF : X_OBUF
    port map (
      I => product_26_O,
      O => product(26)
    );
  product_18_OBUF : X_OBUF
    port map (
      I => product_18_O,
      O => product(18)
    );
  product_51_OBUF : X_OBUF
    port map (
      I => product_51_O,
      O => product(51)
    );
  product_43_OBUF : X_OBUF
    port map (
      I => product_43_O,
      O => product(43)
    );
  product_35_OBUF : X_OBUF
    port map (
      I => product_35_O,
      O => product(35)
    );
  product_27_OBUF : X_OBUF
    port map (
      I => product_27_O,
      O => product(27)
    );
  product_19_OBUF : X_OBUF
    port map (
      I => product_19_O,
      O => product(19)
    );
  product_60_OBUF : X_OBUF
    port map (
      I => product_60_O,
      O => product(60)
    );
  product_52_OBUF : X_OBUF
    port map (
      I => product_52_O,
      O => product(52)
    );
  product_44_OBUF : X_OBUF
    port map (
      I => product_44_O,
      O => product(44)
    );
  product_36_OBUF : X_OBUF
    port map (
      I => product_36_O,
      O => product(36)
    );
  product_28_OBUF : X_OBUF
    port map (
      I => product_28_O,
      O => product(28)
    );
  product_61_OBUF : X_OBUF
    port map (
      I => product_61_O,
      O => product(61)
    );
  product_53_OBUF : X_OBUF
    port map (
      I => product_53_O,
      O => product(53)
    );
  product_45_OBUF : X_OBUF
    port map (
      I => product_45_O,
      O => product(45)
    );
  product_37_OBUF : X_OBUF
    port map (
      I => product_37_O,
      O => product(37)
    );
  product_29_OBUF : X_OBUF
    port map (
      I => product_29_O,
      O => product(29)
    );
  product_62_OBUF : X_OBUF
    port map (
      I => product_62_O,
      O => product(62)
    );
  product_54_OBUF : X_OBUF
    port map (
      I => product_54_O,
      O => product(54)
    );
  product_46_OBUF : X_OBUF
    port map (
      I => product_46_O,
      O => product(46)
    );
  product_38_OBUF : X_OBUF
    port map (
      I => product_38_O,
      O => product(38)
    );
  product_63_OBUF : X_OBUF
    port map (
      I => product_63_O,
      O => product(63)
    );
  product_55_OBUF : X_OBUF
    port map (
      I => product_55_O,
      O => product(55)
    );
  product_47_OBUF : X_OBUF
    port map (
      I => product_47_O,
      O => product(47)
    );
  product_39_OBUF : X_OBUF
    port map (
      I => product_39_O,
      O => product(39)
    );
  product_56_OBUF : X_OBUF
    port map (
      I => product_56_O,
      O => product(56)
    );
  product_48_OBUF : X_OBUF
    port map (
      I => product_48_O,
      O => product(48)
    );
  product_57_OBUF : X_OBUF
    port map (
      I => product_57_O,
      O => product(57)
    );
  product_49_OBUF : X_OBUF
    port map (
      I => product_49_O,
      O => product(49)
    );
  product_58_OBUF : X_OBUF
    port map (
      I => product_58_O,
      O => product(58)
    );
  product_59_OBUF : X_OBUF
    port map (
      I => product_59_O,
      O => product(59)
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_3833,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_3835
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_6_sc_ch_inst_mux2_1_X1_3824,
      IB => q_chain_gen_6_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_3826,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_F5MUX_3833
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_BXINV_3826
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_3818
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_5_IBUF_2447,
      O => q_chain_gen_6_sc_ch_inst_mux2_1_X1_3824
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_F5MUX_3869,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_3871
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_17_sc_ch_inst_mux2_1_X1_3860,
      IB => q_chain_gen_17_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_BXINV_3862,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_F5MUX_3869
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_BXINV_3862
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_3854
    );
  q_chain_gen_17_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_16_IBUF_2501,
      O => q_chain_gen_17_sc_ch_inst_mux2_1_X1_3860
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_F5MUX_3905,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_3907
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_25_sc_ch_inst_mux2_1_X1_3896,
      IB => q_chain_gen_25_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_BXINV_3898,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_F5MUX_3905
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_BXINV_3898
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_3890
    );
  q_chain_gen_25_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_24_IBUF_2500,
      O => q_chain_gen_25_sc_ch_inst_mux2_1_X1_3896
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_3941,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_3943
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => a_chain_gen_0_sc_out_inst_mux2_1_X1_3932,
      IB => a_chain_gen_0_sc_out_inst_mux2_1_X,
      SEL => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_3934,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_F5MUX_3941
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => m_q(0),
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_BXINV_3934
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_3925
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => a_chain_gen_0_sc_out_inst_mux2_1_X1_3932
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_F5MUX_3977,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_3979
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_8_sc_ch_inst_mux2_1_X1_3968,
      IB => q_chain_gen_8_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_BXINV_3970,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_F5MUX_3977
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_BXINV_3970
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_3962
    );
  q_chain_gen_8_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_7_IBUF_2450,
      O => q_chain_gen_8_sc_ch_inst_mux2_1_X1_3968
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_F5MUX_4013,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_4015
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_19_sc_ch_inst_mux2_1_X1_4004,
      IB => q_chain_gen_19_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_BXINV_4006,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_F5MUX_4013
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_BXINV_4006
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_3998
    );
  q_chain_gen_19_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_18_IBUF_2505,
      O => q_chain_gen_19_sc_ch_inst_mux2_1_X1_4004
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_F5MUX_4049,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_4051
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_27_sc_ch_inst_mux2_1_X1_4040,
      IB => q_chain_gen_27_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_BXINV_4042,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_F5MUX_4049
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_BXINV_4042
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_4034
    );
  q_chain_gen_27_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_26_IBUF_2504,
      O => q_chain_gen_27_sc_ch_inst_mux2_1_X1_4040
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_4085,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_4087
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => N322,
      IB => N323,
      SEL => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_4078,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_4085
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_13_0,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_4078
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_4070
    );
  a_chain_gen_15_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N185,
      ADR1 => gestore_shift_b_add_sub(15),
      ADR2 => N115_0,
      ADR3 => N114_0,
      O => N322
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_F5MUX_4121,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_4123
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_10_sc_ch_inst_mux2_1_X1_4112,
      IB => q_chain_gen_10_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_BXINV_4114,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_F5MUX_4121
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_BXINV_4114
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_4106
    );
  q_chain_gen_10_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_9_IBUF_2452,
      O => q_chain_gen_10_sc_ch_inst_mux2_1_X1_4112
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_F5MUX_4157,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_4159
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_29_sc_ch_inst_mux2_1_X1_4148,
      IB => q_chain_gen_29_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_BXINV_4150,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_F5MUX_4157
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_BXINV_4150
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_4142
    );
  q_chain_gen_29_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_28_IBUF_2508,
      O => q_chain_gen_29_sc_ch_inst_mux2_1_X1_4148
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_F5MUX_4193,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_DXMUX_4195
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_32_sc_in_inst_mux2_1_X1_4184,
      IB => q_chain_gen_32_sc_in_inst_mux2_1_X,
      SEL => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_BXINV_4186,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_F5MUX_4193
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_BXINV_4186
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_CLKINV_4178
    );
  q_chain_gen_32_sc_in_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => mul2_31_IBUF_2497,
      ADR3 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_32_sc_in_inst_mux2_1_X1_4184
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_4229,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_4231
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_1_sc_ch_inst_mux2_1_X1_4220,
      IB => q_chain_gen_1_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_4222,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_F5MUX_4229
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_BXINV_4222
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_4214
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_0_IBUF_2437,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X1_4220
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4265,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4267
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_12_sc_ch_inst_mux2_1_X1_4256,
      IB => q_chain_gen_12_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4258,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4265
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4258
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4250
    );
  q_chain_gen_12_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_11_IBUF_2485,
      O => q_chain_gen_12_sc_ch_inst_mux2_1_X1_4256
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_F5MUX_4301,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_DXMUX_4303
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_20_sc_ch_inst_mux2_1_X1_4292,
      IB => q_chain_gen_20_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_BXINV_4294,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_F5MUX_4301
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_BXINV_4294
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_CLKINV_4286
    );
  q_chain_gen_20_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_19_IBUF_2507,
      O => q_chain_gen_20_sc_ch_inst_mux2_1_X1_4292
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_4337,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_4339
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_3_sc_ch_inst_mux2_1_X1_4328,
      IB => q_chain_gen_3_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_4330,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_F5MUX_4337
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_BXINV_4330
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_4322
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_2_IBUF_2441,
      O => q_chain_gen_3_sc_ch_inst_mux2_1_X1_4328
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_F5MUX_4373,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_4375
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_14_sc_ch_inst_mux2_1_X1_4364,
      IB => q_chain_gen_14_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_BXINV_4366,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_F5MUX_4373
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_BXINV_4366
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_4358
    );
  q_chain_gen_14_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_13_IBUF_2492,
      O => q_chain_gen_14_sc_ch_inst_mux2_1_X1_4364
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_F5MUX_4409,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_4411
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_22_sc_ch_inst_mux2_1_X1_4400,
      IB => q_chain_gen_22_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_BXINV_4402,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_F5MUX_4409
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_BXINV_4402
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_4394
    );
  q_chain_gen_22_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_21_IBUF_2491,
      O => q_chain_gen_22_sc_ch_inst_mux2_1_X1_4400
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_F5MUX_4445,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_DXMUX_4447
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_30_sc_ch_inst_mux2_1_X1_4436,
      IB => q_chain_gen_30_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_BXINV_4438,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_F5MUX_4445
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_BXINV_4438
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_CLKINV_4430
    );
  q_chain_gen_30_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_29_IBUF_2509,
      O => q_chain_gen_30_sc_ch_inst_mux2_1_X1_4436
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4481,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4483
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => N316,
      IB => N317,
      SEL => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4474,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_F5MUX_4481
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_9_Q,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_BXINV_4474
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4466
    );
  a_chain_gen_12_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N292_0,
      ADR1 => gestore_shift_b_add_sub(12),
      ADR2 => N106_0,
      ADR3 => N105_0,
      O => N316
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_4517,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_4519
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_5_sc_ch_inst_mux2_1_X1_4508,
      IB => q_chain_gen_5_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_4510,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_F5MUX_4517
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_BXINV_4510
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_4502
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_4_IBUF_2445,
      O => q_chain_gen_5_sc_ch_inst_mux2_1_X1_4508
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4553,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4555
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_16_sc_ch_inst_mux2_1_X1_4544,
      IB => q_chain_gen_16_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4546,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4553
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4546
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4538
    );
  q_chain_gen_16_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_15_IBUF_2499,
      O => q_chain_gen_16_sc_ch_inst_mux2_1_X1_4544
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_F5MUX_4589,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_DXMUX_4591
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_24_sc_ch_inst_mux2_1_X1_4580,
      IB => q_chain_gen_24_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_BXINV_4582,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_F5MUX_4589
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_BXINV_4582
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_CLKINV_4574
    );
  q_chain_gen_24_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_23_IBUF_2498,
      O => q_chain_gen_24_sc_ch_inst_mux2_1_X1_4580
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_F5MUX_4625,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_4627
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_7_sc_ch_inst_mux2_1_X1_4616,
      IB => q_chain_gen_7_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_BXINV_4618,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_F5MUX_4625
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_BXINV_4618
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_4610
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_6_IBUF_2449,
      O => q_chain_gen_7_sc_ch_inst_mux2_1_X1_4616
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_F5MUX_4661,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DXMUX_4663
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_18_sc_ch_inst_mux2_1_X1_4652,
      IB => q_chain_gen_18_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_BXINV_4654,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_F5MUX_4661
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_BXINV_4654
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_4646
    );
  q_chain_gen_18_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_17_IBUF_2503,
      O => q_chain_gen_18_sc_ch_inst_mux2_1_X1_4652
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_F5MUX_4697,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_DXMUX_4699
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_26_sc_ch_inst_mux2_1_X1_4688,
      IB => q_chain_gen_26_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_BXINV_4690,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_F5MUX_4697
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_BXINV_4690
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_CLKINV_4682
    );
  q_chain_gen_26_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_25_IBUF_2502,
      O => q_chain_gen_26_sc_ch_inst_mux2_1_X1_4688
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_F5MUX_4733,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_4735
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_9_sc_ch_inst_mux2_1_X1_4724,
      IB => q_chain_gen_9_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_BXINV_4726,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_F5MUX_4733
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_BXINV_4726
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_4718
    );
  q_chain_gen_9_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => mul2_8_IBUF_2451,
      ADR3 => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_9_sc_ch_inst_mux2_1_X1_4724
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_F5MUX_4769,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_DXMUX_4771
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_28_sc_ch_inst_mux2_1_X1_4760,
      IB => q_chain_gen_28_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_BXINV_4762,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_F5MUX_4769
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_BXINV_4762
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_CLKINV_4754
    );
  q_chain_gen_28_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_27_IBUF_2506,
      O => q_chain_gen_28_sc_ch_inst_mux2_1_X1_4760
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4805,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4807
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => N318,
      IB => N319,
      SEL => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4798,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_F5MUX_4805
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_13_0,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_BXINV_4798
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4790
    );
  a_chain_gen_16_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N259_0,
      ADR1 => gestore_shift_b_add_sub(16),
      ADR2 => N118_0,
      ADR3 => N117_0,
      O => N318
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4841,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4843
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_11_sc_ch_inst_mux2_1_X1_4832,
      IB => q_chain_gen_11_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4834,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4841
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4834
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4826
    );
  q_chain_gen_11_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_10_IBUF_2482,
      O => q_chain_gen_11_sc_ch_inst_mux2_1_X1_4832
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_4877,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_4879
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_2_sc_ch_inst_mux2_1_X1_4868,
      IB => q_chain_gen_2_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_4870,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_F5MUX_4877
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_BXINV_4870
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_4862
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_1_IBUF_2439,
      O => q_chain_gen_2_sc_ch_inst_mux2_1_X1_4868
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_F5MUX_4913,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_4915
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_13_sc_ch_inst_mux2_1_X1_4904,
      IB => q_chain_gen_13_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_BXINV_4906,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_F5MUX_4913
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_BXINV_4906
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_4898
    );
  q_chain_gen_13_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_12_IBUF_2489,
      O => q_chain_gen_13_sc_ch_inst_mux2_1_X1_4904
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_F5MUX_4949,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DXMUX_4951
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_21_sc_ch_inst_mux2_1_X1_4940,
      IB => q_chain_gen_21_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_BXINV_4942,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_F5MUX_4949
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_BXINV_4942
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_4934
    );
  q_chain_gen_21_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_20_IBUF_2488,
      O => q_chain_gen_21_sc_ch_inst_mux2_1_X1_4940
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4985,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4987
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => N320,
      IB => N321,
      SEL => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4978,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_F5MUX_4985
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_9_Q,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_BXINV_4978
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4970
    );
  a_chain_gen_11_sc_ch_inst_mux2_1_X_F : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N191,
      ADR1 => gestore_shift_b_add_sub(11),
      ADR2 => N103_0,
      ADR3 => N102_0,
      O => N320
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_5021,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_5023
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_4_sc_ch_inst_mux2_1_X1_5012,
      IB => q_chain_gen_4_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_5014,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_F5MUX_5021
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_BXINV_5014
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_5006
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_3_IBUF_2443,
      O => q_chain_gen_4_sc_ch_inst_mux2_1_X1_5012
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_5057,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_5059
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_15_sc_ch_inst_mux2_1_X1_5048,
      IB => q_chain_gen_15_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_5050,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_F5MUX_5057
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_BXINV_5050
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_5042
    );
  q_chain_gen_15_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_14_IBUF_2496,
      O => q_chain_gen_15_sc_ch_inst_mux2_1_X1_5048
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_F5MUX_5093,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_5095
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_23_sc_ch_inst_mux2_1_X1_5084,
      IB => q_chain_gen_23_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_BXINV_5086,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_F5MUX_5093
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_BXINV_5086
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_5078
    );
  q_chain_gen_23_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_22_IBUF_2495,
      O => q_chain_gen_23_sc_ch_inst_mux2_1_X1_5084
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_F5MUX_5129,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_DXMUX_5131
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_F5MUX : X_MUX2
    port map (
      IA => q_chain_gen_31_sc_ch_inst_mux2_1_X1_5120,
      IB => q_chain_gen_31_sc_ch_inst_mux2_1_X,
      SEL => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_BXINV_5122,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_F5MUX_5129
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_BXINV_5122
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_CLKINV_5114
    );
  q_chain_gen_31_sc_ch_inst_mux2_1_X2 : X_LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd5_2568,
      ADR1 => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => mul2_30_IBUF_2494,
      O => q_chain_gen_31_sc_ch_inst_mux2_1_X1_5120
    );
  N229_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N229,
      O => N229_0
    );
  N229_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N194_pack_1,
      O => N194
    );
  gestore_shift_rca_rca_7_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EC80"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_7_0,
      ADR3 => gestore_shift_b_add_sub(8),
      O => N194_pack_1
    );
  N226_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N226,
      O => N226_0
    );
  N226_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N191_pack_1,
      O => N191
    );
  gestore_shift_rca_rca_9_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_9_0,
      ADR3 => gestore_shift_b_add_sub(10),
      O => N191_pack_1
    );
  gestore_shift_rca_carry_21_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_21_Q,
      O => gestore_shift_rca_carry_21_0
    );
  gestore_shift_rca_carry_21_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_16_fa_c1_SW0_O_pack_1,
      O => gestore_shift_rca_rca_16_fa_c1_SW0_O
    );
  gestore_shift_rca_rca_16_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N220_0,
      ADR1 => N221_0,
      ADR2 => N241_0,
      ADR3 => VCC,
      O => gestore_shift_rca_rca_16_fa_c1_SW0_O_pack_1
    );
  N182_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N182,
      O => N182_0
    );
  N182_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_15_pack_1,
      O => gestore_shift_b_add_sub(15)
    );
  gestore_shift_Mxor_b_add_sub_15_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(15),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_15_pack_1
    );
  N170_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N170,
      O => N170_0
    );
  N170_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_23_pack_1,
      O => gestore_shift_b_add_sub(23)
    );
  gestore_shift_Mxor_b_add_sub_23_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(23),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_23_pack_1
    );
  N183_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N183,
      O => N183_0
    );
  N183_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_16_pack_1,
      O => gestore_shift_b_add_sub(16)
    );
  gestore_shift_Mxor_b_add_sub_16_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(16),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_16_pack_1
    );
  N171_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N171,
      O => N171_0
    );
  N171_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_24_pack_1,
      O => gestore_shift_b_add_sub(24)
    );
  gestore_shift_Mxor_b_add_sub_24_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(24),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_24_pack_1
    );
  N286_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N286,
      O => N286_0
    );
  N286_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N142_pack_1,
      O => N142
    );
  a_chain_gen_24_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      O => N142_pack_1
    );
  N287_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N287,
      O => N287_0
    );
  N287_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_22_fa_c1_SW3_O_pack_1,
      O => gestore_shift_rca_rca_22_fa_c1_SW3_O
    );
  gestore_shift_rca_rca_22_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N174_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(23),
      ADR3 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_rca_22_fa_c1_SW3_O_pack_1
    );
  N336_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N336,
      O => N336_0
    );
  N336_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_5_fa_c1_O_pack_2,
      O => gestore_shift_rca_rca_5_fa_c1_O
    );
  gestore_shift_rca_rca_5_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(5),
      ADR3 => gestore_shift_rca_carry_5_0,
      O => gestore_shift_rca_rca_5_fa_c1_O_pack_2
    );
  N266_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N266,
      O => N266_0
    );
  N266_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N157_pack_1,
      O => N157
    );
  a_chain_gen_29_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ACA3"
    )
    port map (
      ADR0 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => en_a_0,
      O => N157_pack_1
    );
  N272_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N272,
      O => N272_0
    );
  N272_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N233_pack_1,
      O => N233
    );
  a_chain_gen_31_sc_in_inst_mux2_1_X_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"7D3C"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => gestore_shift_b_add_sub(31),
      ADR2 => N212_0,
      ADR3 => en_a_0,
      O => N233_pack_1
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_2_Q,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_5454
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O_pack_2,
      O => a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_5438
    );
  a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0096"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_2_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(2),
      ADR3 => en_a_0,
      O => a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O_pack_2
    );
  gestore_shift_rca_carry_18_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_18_Q,
      O => gestore_shift_rca_carry_18_0
    );
  gestore_shift_rca_carry_18_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_16_fa_c1_SW2_O_pack_1,
      O => gestore_shift_rca_rca_16_fa_c1_SW2_O
    );
  gestore_shift_rca_rca_16_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(17),
      ADR1 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N241_0,
      O => gestore_shift_rca_rca_16_fa_c1_SW2_O_pack_1
    );
  en_a_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a,
      O => en_a_0
    );
  en_a_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_en_a_SW0_O_pack_1,
      O => cu_en_a_SW0_O
    );
  cu_en_a_SW0 : X_LUT4
    generic map(
      INIT => X"FEFE"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_2702,
      ADR1 => cu_current_state_FSM_FFd1_2432,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => VCC,
      O => cu_en_a_SW0_O_pack_1
    );
  N206_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N206,
      O => N206_0
    );
  N206_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_1_pack_2,
      O => gestore_shift_rca_carry_1_Q
    );
  gestore_shift_rca_rca_0_fa_c1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => m_q(0),
      ADR1 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_1_pack_2
    );
  N195_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N195,
      O => N195_0
    );
  N195_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_8_pack_1,
      O => gestore_shift_b_add_sub(8)
    );
  gestore_shift_Mxor_b_add_sub_8_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(8),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_8_pack_1
    );
  gestore_shift_rca_carry_5_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_5_Q,
      O => gestore_shift_rca_carry_5_0
    );
  gestore_shift_rca_carry_5_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_3_pack_1,
      O => gestore_shift_rca_carry_3_Q
    );
  gestore_shift_rca_rca_2_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(2),
      ADR3 => N206_0,
      O => gestore_shift_rca_carry_3_pack_1
    );
  N188_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N188,
      O => N188_0
    );
  N188_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_11_pack_1,
      O => gestore_shift_b_add_sub(11)
    );
  gestore_shift_Mxor_b_add_sub_11_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(11),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_11_pack_1
    );
  N189_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N189,
      O => N189_0
    );
  N189_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_12_pack_1,
      O => gestore_shift_b_add_sub(12)
    );
  gestore_shift_Mxor_b_add_sub_12_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(12),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_12_pack_1
    );
  a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_17_Q,
      O => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_5657
    );
  a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O_pack_2,
      O => a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O
    );
  a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_5641
    );
  a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O_pack_2
    );
  gestore_shift_rca_carry_8_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_8_Q,
      O => gestore_shift_rca_carry_8_0
    );
  gestore_shift_rca_carry_8_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_7_pack_1,
      O => gestore_shift_rca_carry_7_Q
    );
  gestore_shift_rca_rca_6_fa_c1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N197_0,
      ADR1 => N198_0,
      ADR2 => gestore_shift_rca_carry_5_0,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_7_pack_1
    );
  N275_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N275,
      O => N275_0
    );
  N275_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N239_pack_1,
      O => N239
    );
  gestore_shift_rca_rca_20_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N217,
      ADR1 => N218_0,
      ADR2 => N221_0,
      ADR3 => VCC,
      O => N239_pack_1
    );
  N248_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N248,
      O => N248_0
    );
  N248_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N242_pack_1,
      O => N242
    );
  gestore_shift_rca_rca_12_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => N224,
      ADR1 => N223_0,
      ADR2 => N227,
      ADR3 => VCC,
      O => N242_pack_1
    );
  N295_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N295,
      O => N295_0
    );
  N295_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N145_pack_1,
      O => N145
    );
  a_chain_gen_25_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      O => N145_pack_1
    );
  N298_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N298,
      O => N298_0
    );
  N298_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N250_pack_1,
      O => N250
    );
  gestore_shift_rca_rca_26_fa_c1_SW4 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N150_0,
      ADR1 => gestore_shift_b_add_sub(27),
      ADR2 => N167_0,
      ADR3 => N151,
      O => N250_pack_1
    );
  N301_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N301,
      O => N301_0
    );
  N301_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N253_pack_1,
      O => N253
    );
  gestore_shift_rca_rca_27_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N153_0,
      ADR1 => gestore_shift_b_add_sub(28),
      ADR2 => N235_0,
      ADR3 => N154,
      O => N253_pack_1
    );
  N304_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N304,
      O => N304_0
    );
  N304_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N265_pack_1,
      O => N265
    );
  gestore_shift_rca_rca_28_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N156_0,
      ADR1 => gestore_shift_b_add_sub(29),
      ADR2 => N214_0,
      ADR3 => N157,
      O => N265_pack_1
    );
  a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_10_Q,
      O => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_5860
    );
  a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_9_fa_c1_O_pack_1,
      O => gestore_shift_rca_rca_9_fa_c1_O
    );
  a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_5844
    );
  gestore_shift_rca_rca_9_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(9),
      ADR3 => gestore_shift_rca_carry_9_Q,
      O => gestore_shift_rca_rca_9_fa_c1_O_pack_1
    );
  N211_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N211,
      O => N211_0
    );
  N211_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_29_pack_1,
      O => gestore_shift_b_add_sub(29)
    );
  gestore_shift_Mxor_b_add_sub_29_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(29),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_29_pack_1
    );
  N212_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N212,
      O => N212_0
    );
  N212_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_30_pack_1,
      O => gestore_shift_b_add_sub(30)
    );
  gestore_shift_Mxor_b_add_sub_30_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(30),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_30_pack_1
    );
  N307_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N307,
      O => N307_0
    );
  N307_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N269_pack_1,
      O => N269
    );
  gestore_shift_rca_rca_28_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N215_0,
      ADR1 => N209_0,
      ADR2 => N208_0,
      ADR3 => VCC,
      O => N269_pack_1
    );
  N308_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N308,
      O => N308_0
    );
  N308_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N268_pack_1,
      O => N268
    );
  gestore_shift_rca_rca_28_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N214_0,
      ADR1 => N209_0,
      ADR2 => N208_0,
      ADR3 => VCC,
      O => N268_pack_1
    );
  N311_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N311,
      O => N311_0
    );
  N311_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N271_pack_1,
      O => N271
    );
  gestore_shift_rca_rca_28_fa_c1_SW4 : X_LUT4
    generic map(
      INIT => X"2727"
    )
    port map (
      ADR0 => N214_0,
      ADR1 => N233,
      ADR2 => N232_0,
      ADR3 => VCC,
      O => N271_pack_1
    );
  N200_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N200,
      O => N200_0
    );
  N200_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_3_pack_1,
      O => gestore_shift_b_add_sub(3)
    );
  gestore_shift_Mxor_b_add_sub_3_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(3),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_3_pack_1
    );
  N201_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N201,
      O => N201_0
    );
  N201_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_4_pack_1,
      O => gestore_shift_b_add_sub(4)
    );
  gestore_shift_Mxor_b_add_sub_4_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(4),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_4_pack_1
    );
  N263_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N263,
      O => N263_0
    );
  N263_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N227_pack_1,
      O => N227
    );
  gestore_shift_rca_rca_10_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N192_0,
      ADR1 => N189_0,
      ADR2 => N188_0,
      ADR3 => VCC,
      O => N227_pack_1
    );
  N241_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N241,
      O => N241_0
    );
  N241_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N224_pack_1,
      O => N224
    );
  gestore_shift_rca_rca_14_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N186_0,
      ADR1 => N183_0,
      ADR2 => N182_0,
      ADR3 => VCC,
      O => N224_pack_1
    );
  N238_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N238,
      O => N238_0
    );
  N238_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N217_pack_1,
      O => N217
    );
  gestore_shift_rca_rca_22_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N170_0,
      ADR1 => N171_0,
      ADR2 => N173_0,
      ADR3 => VCC,
      O => N217_pack_1
    );
  N232_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N232,
      O => N232_0
    );
  N232_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_31_pack_1,
      O => gestore_shift_b_add_sub(31)
    );
  gestore_shift_Mxor_b_add_sub_31_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => m_q(31),
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_31_pack_1
    );
  N179_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N179,
      O => N179_0
    );
  N179_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_17_pack_1,
      O => gestore_shift_b_add_sub(17)
    );
  gestore_shift_Mxor_b_add_sub_17_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(17),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_17_pack_1
    );
  N167_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N167,
      O => N167_0
    );
  N167_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_25_pack_1,
      O => gestore_shift_b_add_sub(25)
    );
  gestore_shift_Mxor_b_add_sub_25_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(25),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_25_pack_1
    );
  N180_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N180,
      O => N180_0
    );
  N180_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_18_pack_1,
      O => gestore_shift_b_add_sub(18)
    );
  gestore_shift_Mxor_b_add_sub_18_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(18),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_18_pack_1
    );
  N168_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N168,
      O => N168_0
    );
  N168_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_26_pack_1,
      O => gestore_shift_b_add_sub(26)
    );
  gestore_shift_Mxor_b_add_sub_26_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(26),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_26_pack_1
    );
  N289_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N289,
      O => N289_0
    );
  N289_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_24_fa_c1_SW0_O_pack_1,
      O => gestore_shift_rca_rca_24_fa_c1_SW0_O
    );
  gestore_shift_rca_rca_24_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(25),
      ADR1 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N238_0,
      O => gestore_shift_rca_rca_24_fa_c1_SW0_O_pack_1
    );
  N290_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N290,
      O => N290_0
    );
  N290_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N148_pack_1,
      O => N148
    );
  a_chain_gen_26_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      O => N148_pack_1
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_1_Q,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_6303
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2,
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_6287
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0096"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_1_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(1),
      ADR3 => en_a_0,
      O => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O_pack_2
    );
  N192_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N192,
      O => N192_0
    );
  N192_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_10_pack_1,
      O => gestore_shift_b_add_sub(10)
    );
  gestore_shift_Mxor_b_add_sub_10_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(10),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_10_pack_1
    );
  N173_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N173,
      O => N173_0
    );
  N173_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_21_pack_1,
      O => gestore_shift_b_add_sub(21)
    );
  gestore_shift_Mxor_b_add_sub_21_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(21),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_21_pack_1
    );
  N186_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N186,
      O => N186_0
    );
  N186_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_14_pack_1,
      O => gestore_shift_b_add_sub(14)
    );
  gestore_shift_Mxor_b_add_sub_14_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(14),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_14_pack_1
    );
  N174_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N174,
      O => N174_0
    );
  N174_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_22_pack_1,
      O => gestore_shift_b_add_sub(22)
    );
  gestore_shift_Mxor_b_add_sub_22_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(22),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_22_pack_1
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_3_Q,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_6434
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O_pack_2,
      O => a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_6418
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0096"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_3_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(3),
      ADR3 => en_a_0,
      O => a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O_pack_2
    );
  N277_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N277,
      O => N277_0
    );
  N277_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N127_pack_1,
      O => N127
    );
  a_chain_gen_19_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      O => N127_pack_1
    );
  N251_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N251,
      O => N251_0
    );
  N251_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N151_pack_1,
      O => N151
    );
  a_chain_gen_27_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ACA3"
    )
    port map (
      ADR0 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => en_a_0,
      O => N151_pack_1
    );
  N208_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N208,
      O => N208_0
    );
  N208_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_29_fa_c1_SW0_O_pack_1,
      O => gestore_shift_rca_rca_29_fa_c1_SW0_O
    );
  gestore_shift_rca_rca_29_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"006C"
    )
    port map (
      ADR0 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(30),
      ADR2 => gestore_shift_b_add_sub(29),
      ADR3 => en_a_0,
      O => gestore_shift_rca_rca_29_fa_c1_SW0_O_pack_1
    );
  N209_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N209,
      O => N209_0
    );
  N209_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_29_fa_c1_SW1_O_pack_1,
      O => gestore_shift_rca_rca_29_fa_c1_SW1_O
    );
  gestore_shift_rca_rca_29_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"0036"
    )
    port map (
      ADR0 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(30),
      ADR2 => gestore_shift_b_add_sub(29),
      ADR3 => en_a_0,
      O => gestore_shift_rca_rca_29_fa_c1_SW1_O_pack_1
    );
  N197_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N197,
      O => N197_0
    );
  N197_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_5_pack_1,
      O => gestore_shift_b_add_sub(5)
    );
  gestore_shift_Mxor_b_add_sub_5_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(5),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_5_pack_1
    );
  N198_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N198,
      O => N198_0
    );
  N198_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_6_pack_1,
      O => gestore_shift_b_add_sub(6)
    );
  gestore_shift_Mxor_b_add_sub_6_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(6),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_6_pack_1
    );
  N223_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N223,
      O => N223_0
    );
  N223_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N185_pack_1,
      O => N185
    );
  gestore_shift_rca_rca_13_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_13_0,
      ADR3 => gestore_shift_b_add_sub(14),
      O => N185_pack_1
    );
  N283_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N283,
      O => N283_0
    );
  N283_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N139_pack_1,
      O => N139
    );
  a_chain_gen_23_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      O => N139_pack_1
    );
  N332_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N332,
      O => N332_0
    );
  N332_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_3_fa_c1_O_pack_2,
      O => gestore_shift_rca_rca_3_fa_c1_O
    );
  gestore_shift_rca_rca_3_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(3),
      ADR3 => gestore_shift_rca_carry_3_Q,
      O => gestore_shift_rca_rca_3_fa_c1_O_pack_2
    );
  N176_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N176,
      O => N176_0
    );
  N176_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_19_pack_1,
      O => gestore_shift_b_add_sub(19)
    );
  gestore_shift_Mxor_b_add_sub_19_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(19),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_19_pack_1
    );
  N164_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N164,
      O => N164_0
    );
  N164_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_27_pack_1,
      O => gestore_shift_b_add_sub(27)
    );
  gestore_shift_Mxor_b_add_sub_27_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(27),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_27_pack_1
    );
  N177_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N177,
      O => N177_0
    );
  N177_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_20_pack_1,
      O => gestore_shift_b_add_sub(20)
    );
  gestore_shift_Mxor_b_add_sub_20_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(20),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_20_pack_1
    );
  N165_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N165,
      O => N165_0
    );
  N165_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub_28_pack_1,
      O => gestore_shift_b_add_sub(28)
    );
  gestore_shift_Mxor_b_add_sub_28_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(28),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub_28_pack_1
    );
  N280_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N280,
      O => N280_0
    );
  N280_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N130_pack_1,
      O => N130
    );
  a_chain_gen_20_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      O => N130_pack_1
    );
  N281_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N281,
      O => N281_0
    );
  N281_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_rca_18_fa_c1_SW3_O_pack_1,
      O => gestore_shift_rca_rca_18_fa_c1_SW3_O
    );
  gestore_shift_rca_rca_18_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N180_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(19),
      ADR3 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => gestore_shift_rca_rca_18_fa_c1_SW3_O_pack_1
    );
  N254_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N254,
      O => N254_0
    );
  N254_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N154_pack_1,
      O => N154
    );
  a_chain_gen_28_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"CAC5"
    )
    port map (
      ADR0 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => en_a_0,
      O => N154_pack_1
    );
  cu_current_state_FSM_FFd4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_In,
      O => cu_current_state_FSM_FFd4_DXMUX_6860
    );
  cu_current_state_FSM_FFd4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_In,
      O => cu_current_state_FSM_FFd4_DYMUX_6844
    );
  cu_current_state_FSM_FFd4_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => cu_current_state_FSM_FFd4_SRINVNOT
    );
  cu_current_state_FSM_FFd4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd4_CLKINV_6834
    );
  cu_current_state_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"BABA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd4_2702,
      ADR1 => operation_counter_hit_2839,
      ADR2 => cu_current_state_FSM_FFd1_2432,
      ADR3 => VCC,
      O => cu_current_state_FSM_FFd3_In
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_x(0),
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_6901
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd5_In,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_6888
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_SRINVNOT
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_6879
    );
  cu_current_state_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      ADR0 => start_IBUF_2454,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => operation_counter_hit_2839,
      ADR3 => cu_current_state_FSM_FFd1_2432,
      O => cu_current_state_FSM_FFd5_In
    );
  a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_29_Q,
      O => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_6943
    );
  a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_30_Q,
      O => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DYMUX_6928
    );
  a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_6918
    );
  a_chain_gen_30_sc_ch_inst_mux2_1_X92 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N307_0,
      ADR1 => N308_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_30_Q
    );
  a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_27_Q,
      O => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_6985
    );
  a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_28_Q,
      O => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DYMUX_6970
    );
  a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_6960
    );
  a_chain_gen_28_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N301_0,
      ADR1 => N302_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_28_Q
    );
  a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_25_Q,
      O => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_7027
    );
  a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_26_Q,
      O => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DYMUX_7012
    );
  a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_7002
    );
  a_chain_gen_26_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N289_0,
      ADR1 => N290_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_26_Q
    );
  a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_23_Q,
      O => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_7069
    );
  a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_24_Q,
      O => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DYMUX_7054
    );
  a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_7044
    );
  a_chain_gen_24_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N286_0,
      ADR1 => N287_0,
      ADR2 => gestore_shift_rca_carry_21_0,
      ADR3 => VCC,
      O => a_x_24_Q
    );
  a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_19_Q,
      O => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_7111
    );
  a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_20_Q,
      O => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DYMUX_7096
    );
  a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_7086
    );
  a_chain_gen_20_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N280_0,
      ADR1 => N281_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_20_Q
    );
  a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_18_Q,
      O => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DYMUX_7134
    );
  a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_7125
    );
  a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_8_Q,
      O => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DYMUX_7157
    );
  a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_7148
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_6_Q,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_7180
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_7171
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_4_Q,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_7203
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_7194
    );
  a_chain_gen_31_sc_in_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_31_Q,
      O => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_DYMUX_7226
    );
  a_chain_gen_31_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_CLKINV_7217
    );
  a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_21_Q,
      O => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DYMUX_7249
    );
  a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_7240
    );
  operation_counter_count_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(3),
      O => operation_counter_count_3_DXMUX_7294
    );
  operation_counter_count_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => operation_counter_count_3_DYMUX_7279
    );
  operation_counter_count_3_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => operation_counter_count_3_SRINVNOT
    );
  operation_counter_count_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_3_CLKINV_7269
    );
  operation_counter_count_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_2700,
      O => operation_counter_count_3_CEINV_7268
    );
  operation_counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => operation_counter_count(2),
      ADR2 => operation_counter_count(0),
      ADR3 => VCC,
      O => Result(2)
    );
  operation_counter_count_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(4),
      O => operation_counter_count_4_DYMUX_7320
    );
  operation_counter_count_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_4_CLKINV_7309
    );
  operation_counter_count_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_2700,
      O => operation_counter_count_4_CEINV_7308
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_5_Q,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_7356
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N334_pack_2,
      O => N334
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_7340
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0096"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_5_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(5),
      ADR3 => en_a_0,
      O => N334_pack_2
    );
  N147_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N147,
      O => N147_0
    );
  N147_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N150,
      O => N150_0
    );
  a_chain_gen_27_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N150
    );
  N123_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N123,
      O => N123_0
    );
  N123_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N126,
      O => N126_0
    );
  a_chain_gen_19_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N126
    );
  operation_counter_hit_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_cmp_eq0000,
      O => operation_counter_hit_DXMUX_7441
    );
  operation_counter_hit_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N02_pack_1,
      O => N02
    );
  operation_counter_hit_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_hit_CLKINV_7423
    );
  operation_counter_hit_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_2700,
      O => operation_counter_hit_CEINV_7422
    );
  operation_counter_Mcount_count_xor_4_121 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => operation_counter_count(0),
      ADR1 => operation_counter_count(2),
      ADR2 => operation_counter_count(3),
      ADR3 => operation_counter_count(1),
      O => N02_pack_1
    );
  prod1_q_11_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DXMUX_7469
    );
  prod1_q_11_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_11_DYMUX_7460
    );
  prod1_q_11_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_11_SRINVNOT
    );
  prod1_q_11_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_11_CLKINV_7457
    );
  prod1_q_11_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_11_CEINV_7456
    );
  prod1_q_13_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DXMUX_7497
    );
  prod1_q_13_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_13_DYMUX_7488
    );
  prod1_q_13_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_13_SRINVNOT
    );
  prod1_q_13_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_13_CLKINV_7485
    );
  prod1_q_13_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_13_CEINV_7484
    );
  prod1_q_21_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_21_DXMUX_7525
    );
  prod1_q_21_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_21_DYMUX_7516
    );
  prod1_q_21_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_21_SRINVNOT
    );
  prod1_q_21_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_21_CLKINV_7513
    );
  prod1_q_21_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_21_CEINV_7512
    );
  prod1_q_15_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DXMUX_7553
    );
  prod1_q_15_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_15_DYMUX_7544
    );
  prod1_q_15_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_15_SRINVNOT
    );
  prod1_q_15_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_15_CLKINV_7541
    );
  prod1_q_15_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_15_CEINV_7540
    );
  prod1_q_23_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_23_DXMUX_7581
    );
  prod1_q_23_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_23_DYMUX_7572
    );
  prod1_q_23_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_23_SRINVNOT
    );
  prod1_q_23_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_23_CLKINV_7569
    );
  prod1_q_23_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_23_CEINV_7568
    );
  prod1_q_31_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_31_DXMUX_7609
    );
  prod1_q_31_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_31_DYMUX_7600
    );
  prod1_q_31_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_31_SRINVNOT
    );
  prod1_q_31_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_31_CLKINV_7597
    );
  prod1_q_31_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_31_CEINV_7596
    );
  prod1_q_17_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_17_DXMUX_7637
    );
  prod1_q_17_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_17_DYMUX_7628
    );
  prod1_q_17_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_17_SRINVNOT
    );
  prod1_q_17_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_17_CLKINV_7625
    );
  prod1_q_17_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_17_CEINV_7624
    );
  prod1_q_25_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_25_DXMUX_7665
    );
  prod1_q_25_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_25_DYMUX_7656
    );
  prod1_q_25_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_25_SRINVNOT
    );
  prod1_q_25_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_25_CLKINV_7653
    );
  prod1_q_25_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_25_CEINV_7652
    );
  prod1_q_33_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_33_DXMUX_7693
    );
  prod1_q_33_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => prod1_q_33_DYMUX_7684
    );
  prod1_q_33_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_33_SRINVNOT
    );
  prod1_q_33_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_33_CLKINV_7681
    );
  prod1_q_33_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_33_CEINV_7680
    );
  prod1_q_41_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_41_DXMUX_7721
    );
  prod1_q_41_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_41_DYMUX_7712
    );
  prod1_q_41_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_41_SRINVNOT
    );
  prod1_q_41_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_41_CLKINV_7709
    );
  prod1_q_41_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_41_CEINV_7708
    );
  prod1_q_19_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_19_DXMUX_7749
    );
  prod1_q_19_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_19_DYMUX_7740
    );
  prod1_q_19_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_19_SRINVNOT
    );
  prod1_q_19_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_19_CLKINV_7737
    );
  prod1_q_19_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_19_CEINV_7736
    );
  prod1_q_27_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_27_DXMUX_7777
    );
  prod1_q_27_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_27_DYMUX_7768
    );
  prod1_q_27_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_27_SRINVNOT
    );
  prod1_q_27_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_27_CLKINV_7765
    );
  prod1_q_27_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_27_CEINV_7764
    );
  prod1_q_35_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_35_DXMUX_7805
    );
  prod1_q_35_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_35_DYMUX_7796
    );
  prod1_q_35_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_35_SRINVNOT
    );
  prod1_q_35_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_35_CLKINV_7793
    );
  prod1_q_35_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_35_CEINV_7792
    );
  prod1_q_43_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_43_DXMUX_7833
    );
  prod1_q_43_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_43_DYMUX_7824
    );
  prod1_q_43_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_43_SRINVNOT
    );
  prod1_q_43_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_43_CLKINV_7821
    );
  prod1_q_43_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_43_CEINV_7820
    );
  prod1_q_51_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_51_DXMUX_7861
    );
  prod1_q_51_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_51_DYMUX_7852
    );
  prod1_q_51_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_51_SRINVNOT
    );
  prod1_q_51_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_51_CLKINV_7849
    );
  prod1_q_51_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_51_CEINV_7848
    );
  prod1_q_29_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_29_DXMUX_7889
    );
  prod1_q_29_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_29_DYMUX_7880
    );
  prod1_q_29_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_29_SRINVNOT
    );
  prod1_q_29_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_29_CLKINV_7877
    );
  prod1_q_29_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_29_CEINV_7876
    );
  prod1_q_37_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_37_DXMUX_7917
    );
  prod1_q_37_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_37_DYMUX_7908
    );
  prod1_q_37_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_37_SRINVNOT
    );
  prod1_q_37_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_37_CLKINV_7905
    );
  prod1_q_37_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_37_CEINV_7904
    );
  prod1_q_45_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_45_DXMUX_7945
    );
  prod1_q_45_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_45_DYMUX_7936
    );
  prod1_q_45_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_45_SRINVNOT
    );
  prod1_q_45_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_45_CLKINV_7933
    );
  prod1_q_45_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_45_CEINV_7932
    );
  prod1_q_53_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_53_DXMUX_7973
    );
  prod1_q_53_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_53_DYMUX_7964
    );
  prod1_q_53_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_53_SRINVNOT
    );
  prod1_q_53_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_53_CLKINV_7961
    );
  prod1_q_53_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_53_CEINV_7960
    );
  prod1_q_61_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_61_DXMUX_8001
    );
  prod1_q_61_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_61_DYMUX_7992
    );
  prod1_q_61_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_61_SRINVNOT
    );
  prod1_q_61_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_61_CLKINV_7989
    );
  prod1_q_61_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_61_CEINV_7988
    );
  prod1_q_39_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_39_DXMUX_8029
    );
  prod1_q_39_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_39_DYMUX_8020
    );
  prod1_q_39_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_39_SRINVNOT
    );
  prod1_q_39_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_39_CLKINV_8017
    );
  prod1_q_39_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_39_CEINV_8016
    );
  prod1_q_47_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_47_DXMUX_8057
    );
  prod1_q_47_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_47_DYMUX_8048
    );
  prod1_q_47_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_47_SRINVNOT
    );
  prod1_q_47_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_47_CLKINV_8045
    );
  prod1_q_47_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_47_CEINV_8044
    );
  prod1_q_55_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_55_DXMUX_8085
    );
  prod1_q_55_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_55_DYMUX_8076
    );
  prod1_q_55_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_55_SRINVNOT
    );
  prod1_q_55_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_55_CLKINV_8073
    );
  prod1_q_55_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_55_CEINV_8072
    );
  prod1_q_63_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q,
      O => prod1_q_63_DXMUX_8113
    );
  prod1_q_63_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_63_DYMUX_8104
    );
  prod1_q_63_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_63_SRINVNOT
    );
  prod1_q_63_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_63_CLKINV_8101
    );
  prod1_q_63_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_63_CEINV_8100
    );
  prod1_q_49_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_49_DXMUX_8141
    );
  prod1_q_49_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_49_DYMUX_8132
    );
  prod1_q_49_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_49_SRINVNOT
    );
  prod1_q_49_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_49_CLKINV_8129
    );
  prod1_q_49_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_49_CEINV_8128
    );
  prod1_q_57_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_57_DXMUX_8169
    );
  prod1_q_57_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_57_DYMUX_8160
    );
  prod1_q_57_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_57_SRINVNOT
    );
  prod1_q_57_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_57_CLKINV_8157
    );
  prod1_q_57_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_57_CEINV_8156
    );
  prod1_q_59_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_59_DXMUX_8197
    );
  prod1_q_59_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_59_DYMUX_8188
    );
  prod1_q_59_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_59_SRINVNOT
    );
  prod1_q_59_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_59_CLKINV_8185
    );
  prod1_q_59_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_59_CEINV_8184
    );
  N230_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N230,
      O => N230_0
    );
  gestore_shift_rca_rca_6_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N198_0,
      ADR1 => N195_0,
      ADR2 => N194,
      ADR3 => VCC,
      O => N230
    );
  N293_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N293,
      O => N293_0
    );
  N293_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N292,
      O => N292_0
    );
  gestore_shift_rca_rca_10_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N191,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(11),
      ADR3 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => N292
    );
  a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_14_Q,
      O => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_8269
    );
  a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_14_pack_1,
      O => gestore_shift_rca_carry_14_Q
    );
  a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_8253
    );
  gestore_shift_rca_rca_13_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(13),
      ADR3 => gestore_shift_rca_carry_13_0,
      O => gestore_shift_rca_carry_14_pack_1
    );
  a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_22_Q,
      O => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_8304
    );
  a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_22_pack_1,
      O => gestore_shift_rca_carry_22_Q
    );
  a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_8288
    );
  gestore_shift_rca_rca_21_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(21),
      ADR3 => gestore_shift_rca_carry_21_0,
      O => gestore_shift_rca_carry_22_pack_1
    );
  N156_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N156,
      O => N156_0
    );
  N156_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N153,
      O => N153_0
    );
  a_chain_gen_28_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N153
    );
  N100_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  N100_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N99,
      O => N99_0
    );
  a_chain_gen_10_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N99
    );
  a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_7_Q,
      O => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_8387
    );
  a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N338_pack_2,
      O => N338
    );
  a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_8371
    );
  a_chain_gen_7_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0906"
    )
    port map (
      ADR0 => m_q(7),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_a_0,
      ADR3 => gestore_shift_rca_carry_7_Q,
      O => N338_pack_2
    );
  gestore_shift_b_add_sub_7_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(7),
      O => gestore_shift_b_add_sub_7_0
    );
  gestore_shift_b_add_sub_7_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_2_Q,
      O => gestore_shift_rca_carry_2_0
    );
  gestore_shift_rca_rca_1_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(1),
      ADR3 => gestore_shift_rca_carry_1_Q,
      O => gestore_shift_rca_carry_2_Q
    );
  f_q_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_hit_2839,
      O => f_q_0_DYMUX_8427
    );
  f_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => f_q_0_CLKINV_8424
    );
  f_q_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => f_q_0_CEINV_8423
    );
  m_q_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_1_INBUF,
      O => m_q_1_DXMUX_8455
    );
  m_q_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_0_INBUF,
      O => m_q_1_DYMUX_8446
    );
  m_q_1_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_1_SRINVNOT
    );
  m_q_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_1_CLKINV_8443
    );
  m_q_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_1_CEINV_8442
    );
  m_q_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_3_INBUF,
      O => m_q_3_DXMUX_8483
    );
  m_q_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_2_INBUF,
      O => m_q_3_DYMUX_8474
    );
  m_q_3_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_3_SRINVNOT
    );
  m_q_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_3_CLKINV_8471
    );
  m_q_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_3_CEINV_8470
    );
  m_q_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_5_INBUF,
      O => m_q_5_DXMUX_8511
    );
  m_q_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_4_INBUF,
      O => m_q_5_DYMUX_8502
    );
  m_q_5_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_5_SRINVNOT
    );
  m_q_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_5_CLKINV_8499
    );
  m_q_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_5_CEINV_8498
    );
  m_q_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_7_INBUF,
      O => m_q_7_DXMUX_8539
    );
  m_q_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_6_INBUF,
      O => m_q_7_DYMUX_8530
    );
  m_q_7_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_7_SRINVNOT
    );
  m_q_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_7_CLKINV_8527
    );
  m_q_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_7_CEINV_8526
    );
  m_q_9_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_9_INBUF,
      O => m_q_9_DXMUX_8567
    );
  m_q_9_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_8_INBUF,
      O => m_q_9_DYMUX_8558
    );
  m_q_9_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_9_SRINVNOT
    );
  m_q_9_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_9_CLKINV_8555
    );
  m_q_9_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_9_CEINV_8554
    );
  N103_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N103,
      O => N103_0
    );
  N103_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N102,
      O => N102_0
    );
  a_chain_gen_11_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N102
    );
  gestore_shift_b_add_sub_9_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(9),
      O => gestore_shift_b_add_sub_9_0
    );
  gestore_shift_b_add_sub_9_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_b_add_sub(13),
      O => gestore_shift_b_add_sub_13_0
    );
  gestore_shift_Mxor_b_add_sub_13_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(13),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub(13)
    );
  N94_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N94,
      O => N94_0
    );
  N94_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N93,
      O => N93_0
    );
  a_chain_gen_8_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N93
    );
  N120_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N120,
      O => N120_0
    );
  N120_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N314,
      O => N314_0
    );
  gestore_shift_rca_rca_16_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(17),
      ADR1 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N242,
      O => N314
    );
  N305_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N305,
      O => N305_0
    );
  N305_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N296,
      O => N296_0
    );
  gestore_shift_rca_rca_24_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N144_0,
      ADR1 => gestore_shift_b_add_sub(25),
      ADR2 => N145,
      ADR3 => N239,
      O => N296
    );
  N302_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N302,
      O => N302_0
    );
  N302_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N299,
      O => N299_0
    );
  gestore_shift_rca_rca_24_fa_c1_SW5 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N239,
      ADR1 => N251_0,
      ADR2 => N250,
      ADR3 => VCC,
      O => N299
    );
  gestore_shift_rca_carry_17_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_17_Q,
      O => gestore_shift_rca_carry_17_0
    );
  gestore_shift_rca_carry_17_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_9_pack_1,
      O => gestore_shift_rca_carry_9_Q
    );
  gestore_shift_rca_rca_8_fa_c1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N229_0,
      ADR1 => N230_0,
      ADR2 => gestore_shift_rca_carry_5_0,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_9_pack_1
    );
  N132_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N132,
      O => N132_0
    );
  N132_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N129,
      O => N129_0
    );
  a_chain_gen_20_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N129
    );
  N106_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  N106_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N105,
      O => N105_0
    );
  a_chain_gen_12_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N105
    );
  N310_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N310,
      O => N310_0
    );
  gestore_shift_rca_rca_24_fa_c1_SW12 : X_LUT4
    generic map(
      INIT => X"2727"
    )
    port map (
      ADR0 => N238_0,
      ADR1 => N272_0,
      ADR2 => N271,
      ADR3 => VCC,
      O => N310
    );
  cu_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_2700,
      O => cu_current_state_FSM_FFd2_DXMUX_8820
    );
  cu_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd2_2567,
      O => cu_current_state_FSM_FFd2_DYMUX_8812
    );
  cu_current_state_FSM_FFd2_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => cu_current_state_FSM_FFd2_SRINVNOT
    );
  cu_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => cu_current_state_FSM_FFd2_CLKINV_8809
    );
  a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_9_Q,
      O => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_8855
    );
  a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N340_pack_2,
      O => N340
    );
  a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_8839
    );
  a_chain_gen_9_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0906"
    )
    port map (
      ADR0 => m_q(9),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_a_0,
      ADR3 => gestore_shift_rca_carry_9_Q,
      O => N340_pack_2
    );
  N136_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N136,
      O => N136_0
    );
  N136_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N133,
      O => N133_0
    );
  a_chain_gen_21_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      O => N133
    );
  a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => a_x_13_Q,
      O => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_8914
    );
  a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N342_pack_2,
      O => N342
    );
  a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_8898
    );
  a_chain_gen_13_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0906"
    )
    port map (
      ADR0 => m_q(13),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_a_0,
      ADR3 => gestore_shift_rca_carry_13_0,
      O => N342_pack_2
    );
  gestore_shift_rca_carry_13_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => gestore_shift_rca_carry_13_Q,
      O => gestore_shift_rca_carry_13_0
    );
  gestore_shift_rca_carry_13_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N262_pack_1,
      O => N262
    );
  gestore_shift_rca_rca_8_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N229_0,
      ADR1 => N227,
      ADR2 => N226_0,
      ADR3 => VCC,
      O => N262_pack_1
    );
  prod1_q_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DXMUX_8965
    );
  prod1_q_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_1_DYMUX_8956
    );
  prod1_q_1_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_1_SRINVNOT
    );
  prod1_q_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_1_CLKINV_8953
    );
  prod1_q_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_1_CEINV_8952
    );
  prod1_q_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DXMUX_8993
    );
  prod1_q_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_3_DYMUX_8984
    );
  prod1_q_3_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_3_SRINVNOT
    );
  prod1_q_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_3_CLKINV_8981
    );
  prod1_q_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_3_CEINV_8980
    );
  prod1_q_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DXMUX_9021
    );
  prod1_q_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_5_DYMUX_9012
    );
  prod1_q_5_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_5_SRINVNOT
    );
  prod1_q_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_5_CLKINV_9009
    );
  prod1_q_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_5_CEINV_9008
    );
  prod1_q_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DXMUX_9049
    );
  prod1_q_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_7_DYMUX_9040
    );
  prod1_q_7_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_7_SRINVNOT
    );
  prod1_q_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_7_CLKINV_9037
    );
  prod1_q_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_7_CEINV_9036
    );
  prod1_q_9_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DXMUX_9077
    );
  prod1_q_9_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      O => prod1_q_9_DYMUX_9068
    );
  prod1_q_9_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => prod1_q_9_SRINVNOT
    );
  prod1_q_9_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => prod1_q_9_CLKINV_9065
    );
  prod1_q_9_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => prod1_q_9_CEINV_9064
    );
  m_q_11_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_11_INBUF,
      O => m_q_11_DXMUX_9105
    );
  m_q_11_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_10_INBUF,
      O => m_q_11_DYMUX_9096
    );
  m_q_11_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_11_SRINVNOT
    );
  m_q_11_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_11_CLKINV_9093
    );
  m_q_11_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_11_CEINV_9092
    );
  m_q_13_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_13_INBUF,
      O => m_q_13_DXMUX_9133
    );
  m_q_13_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_12_INBUF,
      O => m_q_13_DYMUX_9124
    );
  m_q_13_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_13_SRINVNOT
    );
  m_q_13_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_13_CLKINV_9121
    );
  m_q_13_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_13_CEINV_9120
    );
  m_q_21_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_21_INBUF,
      O => m_q_21_DXMUX_9161
    );
  m_q_21_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_20_INBUF,
      O => m_q_21_DYMUX_9152
    );
  m_q_21_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_21_SRINVNOT
    );
  m_q_21_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_21_CLKINV_9149
    );
  m_q_21_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_21_CEINV_9148
    );
  m_q_15_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_15_INBUF,
      O => m_q_15_DXMUX_9189
    );
  m_q_15_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_14_INBUF,
      O => m_q_15_DYMUX_9180
    );
  m_q_15_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_15_SRINVNOT
    );
  m_q_15_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_15_CLKINV_9177
    );
  m_q_15_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_15_CEINV_9176
    );
  m_q_23_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_23_INBUF,
      O => m_q_23_DXMUX_9217
    );
  m_q_23_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_22_INBUF,
      O => m_q_23_DYMUX_9208
    );
  m_q_23_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_23_SRINVNOT
    );
  m_q_23_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_23_CLKINV_9205
    );
  m_q_23_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_23_CEINV_9204
    );
  m_q_31_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_31_INBUF,
      O => m_q_31_DXMUX_9245
    );
  m_q_31_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_30_INBUF,
      O => m_q_31_DYMUX_9236
    );
  m_q_31_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_31_SRINVNOT
    );
  m_q_31_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_31_CLKINV_9233
    );
  m_q_31_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_31_CEINV_9232
    );
  m_q_17_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_17_INBUF,
      O => m_q_17_DXMUX_9273
    );
  m_q_17_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_16_INBUF,
      O => m_q_17_DYMUX_9264
    );
  m_q_17_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_17_SRINVNOT
    );
  m_q_17_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_17_CLKINV_9261
    );
  m_q_17_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_17_CEINV_9260
    );
  m_q_25_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_25_INBUF,
      O => m_q_25_DXMUX_9301
    );
  m_q_25_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_24_INBUF,
      O => m_q_25_DYMUX_9292
    );
  m_q_25_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_25_SRINVNOT
    );
  m_q_25_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_25_CLKINV_9289
    );
  m_q_25_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_25_CEINV_9288
    );
  m_q_19_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_19_INBUF,
      O => m_q_19_DXMUX_9329
    );
  m_q_19_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_18_INBUF,
      O => m_q_19_DYMUX_9320
    );
  m_q_19_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_19_SRINVNOT
    );
  m_q_19_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_19_CLKINV_9317
    );
  m_q_19_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_19_CEINV_9316
    );
  m_q_27_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_27_INBUF,
      O => m_q_27_DXMUX_9357
    );
  m_q_27_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_26_INBUF,
      O => m_q_27_DYMUX_9348
    );
  m_q_27_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_27_SRINVNOT
    );
  m_q_27_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_27_CLKINV_9345
    );
  m_q_27_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_27_CEINV_9344
    );
  m_q_29_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_29_INBUF,
      O => m_q_29_DXMUX_9385
    );
  m_q_29_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => mul1_28_INBUF,
      O => m_q_29_DYMUX_9376
    );
  m_q_29_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => m_q_29_SRINVNOT
    );
  m_q_29_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => m_q_29_CLKINV_9373
    );
  m_q_29_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd4_2702,
      O => m_q_29_CEINV_9372
    );
  N138_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N138,
      O => N138_0
    );
  N138_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N135,
      O => N135_0
    );
  a_chain_gen_22_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N135
    );
  N112_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  N112_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  a_chain_gen_14_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N111
    );
  N115_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N115,
      O => N115_0
    );
  N115_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N114,
      O => N114_0
    );
  a_chain_gen_15_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N114
    );
  N221_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N221,
      O => N221_0
    );
  N221_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N220,
      O => N220_0
    );
  gestore_shift_rca_rca_18_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N176_0,
      ADR1 => N177_0,
      ADR2 => N179_0,
      ADR3 => VCC,
      O => N220
    );
  N215_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N215,
      O => N215_0
    );
  N215_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N214,
      O => N214_0
    );
  gestore_shift_rca_rca_26_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N164_0,
      ADR1 => N165_0,
      ADR2 => N167_0,
      ADR3 => VCC,
      O => N214
    );
  N124_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N124,
      O => N124_0
    );
  N124_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  gestore_shift_rca_rca_18_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N179_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(19),
      ADR3 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => N256
    );
  N236_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N236,
      O => N236_0
    );
  N236_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N235,
      O => N235_0
    );
  gestore_shift_rca_rca_26_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(27),
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N167_0,
      O => N235
    );
  N278_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N278,
      O => N278_0
    );
  gestore_shift_rca_rca_18_fa_c1_SW5 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N180_0,
      ADR1 => gestore_shift_b_add_sub(19),
      ADR2 => N127,
      ADR3 => N126_0,
      O => N278
    );
  N144_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N144,
      O => N144_0
    );
  N144_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N141,
      O => N141_0
    );
  a_chain_gen_24_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N141
    );
  N118_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N118,
      O => N118_0
    );
  N118_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  a_chain_gen_16_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N117
    );
  operation_counter_count_0_DXMUX : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => operation_counter_count(0),
      O => operation_counter_count_0_DXMUX_9650
    );
  operation_counter_count_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => operation_counter_count_0_DYMUX_9641
    );
  operation_counter_count_0_SRINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => operation_counter_count_0_SRINVNOT
    );
  operation_counter_count_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => operation_counter_count_0_CLKINV_9630
    );
  operation_counter_count_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd3_2700,
      O => operation_counter_count_0_CEINV_9629
    );
  N284_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N284,
      O => N284_0
    );
  N284_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N218,
      O => N218_0
    );
  gestore_shift_rca_rca_22_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N170_0,
      ADR1 => N171_0,
      ADR2 => N174_0,
      ADR3 => VCC,
      O => N218
    );
  N260_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N260,
      O => N260_0
    );
  N260_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N259,
      O => N259_0
    );
  gestore_shift_rca_rca_14_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N185,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(15),
      ADR3 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => N259
    );
  N244_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N244,
      O => N244_0
    );
  gestore_shift_rca_rca_22_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N173_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(23),
      ADR3 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => N244
    );
  q_chain_gen_6_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_5_IBUF_2447,
      O => q_chain_gen_6_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_3835,
      CE => VCC,
      CLK => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_3818,
      SET => GND,
      RST => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3840,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3840
    );
  q_chain_gen_17_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_16_IBUF_2501,
      O => q_chain_gen_17_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_3871,
      CE => VCC,
      CLK => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_3854,
      SET => GND,
      RST => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3876,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3876
    );
  q_chain_gen_25_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_24_IBUF_2500,
      O => q_chain_gen_25_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_3907,
      CE => VCC,
      CLK => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_3890,
      SET => GND,
      RST => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3912,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_25_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3912
    );
  a_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_chain_gen_0_sc_out_inst_mux2_1_X
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_3943,
      CE => VCC,
      CLK => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_3925,
      SET => GND,
      RST => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_3948,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_3948
    );
  q_chain_gen_26_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_25_IBUF_2502,
      O => q_chain_gen_26_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_DXMUX_4699,
      CE => VCC,
      CLK => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_CLKINV_4682,
      SET => GND,
      RST => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4704,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_26_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4704
    );
  q_chain_gen_9_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => mul2_8_IBUF_2451,
      ADR2 => cu_current_state_FSM_FFd5_2568,
      ADR3 => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_9_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_4735,
      CE => VCC,
      CLK => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_4718,
      SET => GND,
      RST => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4740,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4740
    );
  q_chain_gen_28_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_27_IBUF_2506,
      O => q_chain_gen_28_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_DXMUX_4771,
      CE => VCC,
      CLK => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_CLKINV_4754,
      SET => GND,
      RST => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4776,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_28_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4776
    );
  a_chain_gen_16_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N260_0,
      ADR1 => gestore_shift_b_add_sub(16),
      ADR2 => N118_0,
      ADR3 => N117_0,
      O => N319
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4807,
      CE => VCC,
      CLK => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4790,
      SET => GND,
      RST => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4812,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4812
    );
  gestore_shift_rca_rca_28_fa_c1_SW5 : X_LUT4
    generic map(
      INIT => X"2727"
    )
    port map (
      ADR0 => N215_0,
      ADR1 => N233,
      ADR2 => N232_0,
      ADR3 => VCC,
      O => N272
    );
  a_chain_gen_2_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => a_chain_gen_2_sc_ch_inst_mux2_1_X_SW2_O,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_2_Q
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_5454,
      CE => VCC,
      CLK => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_5438,
      SET => GND,
      RST => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5459,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5459
    );
  gestore_shift_rca_rca_17_fa_c1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => gestore_shift_rca_rca_16_fa_c1_SW2_O,
      ADR1 => N314_0,
      ADR2 => gestore_shift_rca_carry_9_Q,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_18_Q
    );
  cu_en_a : X_LUT4
    generic map(
      INIT => X"FF84"
    )
    port map (
      ADR0 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd3_2700,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => cu_en_a_SW0_O,
      O => en_a
    );
  gestore_shift_rca_rca_2_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(1),
      ADR1 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_rca_carry_1_Q,
      O => N206
    );
  gestore_shift_rca_rca_7_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FEC8"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_7_0,
      ADR3 => gestore_shift_b_add_sub(8),
      O => N195
    );
  q_chain_gen_10_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_9_IBUF_2452,
      O => q_chain_gen_10_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_4123,
      CE => VCC,
      CLK => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_4106,
      SET => GND,
      RST => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4128,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4128
    );
  q_chain_gen_29_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_28_IBUF_2508,
      O => q_chain_gen_29_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_4159,
      CE => VCC,
      CLK => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_4142,
      SET => GND,
      RST => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4164,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_29_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4164
    );
  q_chain_gen_32_sc_in_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => mul2_31_IBUF_2497,
      ADR2 => cu_current_state_FSM_FFd5_2568,
      ADR3 => a_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => q_chain_gen_32_sc_in_inst_mux2_1_X
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_DXMUX_4195,
      CE => VCC,
      CLK => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_CLKINV_4178,
      SET => GND,
      RST => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_4200,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_32_sc_in_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_32_sc_in_inst_edge_triggered_q_0_FFX_RSTAND_4200
    );
  q_chain_gen_1_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_0_IBUF_2437,
      O => q_chain_gen_1_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_4231,
      CE => VCC,
      CLK => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_4214,
      SET => GND,
      RST => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4236,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4236
    );
  q_chain_gen_8_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_7_IBUF_2450,
      O => q_chain_gen_8_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_3979,
      CE => VCC,
      CLK => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_3962,
      SET => GND,
      RST => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3984,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_3984
    );
  q_chain_gen_19_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_18_IBUF_2505,
      O => q_chain_gen_19_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_4015,
      CE => VCC,
      CLK => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_3998,
      SET => GND,
      RST => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4020,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_19_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4020
    );
  q_chain_gen_27_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_26_IBUF_2504,
      O => q_chain_gen_27_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_4051,
      CE => VCC,
      CLK => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_4034,
      SET => GND,
      RST => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4056,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_27_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4056
    );
  a_chain_gen_15_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N186_0,
      ADR1 => gestore_shift_b_add_sub(15),
      ADR2 => N115_0,
      ADR3 => N114_0,
      O => N323
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_4087,
      CE => VCC,
      CLK => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_4070,
      SET => GND,
      RST => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4092,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4092
    );
  q_chain_gen_31_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_30_IBUF_2494,
      O => q_chain_gen_31_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_DXMUX_5131,
      CE => VCC,
      CLK => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_CLKINV_5114,
      SET => GND,
      RST => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5136,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_31_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5136
    );
  gestore_shift_rca_rca_6_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N197_0,
      ADR1 => N195_0,
      ADR2 => N194,
      ADR3 => VCC,
      O => N229
    );
  gestore_shift_rca_rca_10_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N188_0,
      ADR1 => N189_0,
      ADR2 => N191,
      ADR3 => VCC,
      O => N226
    );
  gestore_shift_rca_rca_20_fa_c1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => gestore_shift_rca_rca_16_fa_c1_SW0_O,
      ADR1 => N248_0,
      ADR2 => gestore_shift_rca_carry_9_Q,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_21_Q
    );
  gestore_shift_rca_rca_15_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(15),
      ADR3 => gestore_shift_b_add_sub(16),
      O => N182
    );
  gestore_shift_rca_rca_23_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(23),
      ADR3 => gestore_shift_b_add_sub(24),
      O => N170
    );
  q_chain_gen_16_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_15_IBUF_2499,
      O => q_chain_gen_16_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_DXMUX_4555,
      CE => VCC,
      CLK => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_CLKINV_4538,
      SET => GND,
      RST => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4560,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_16_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4560
    );
  q_chain_gen_24_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_23_IBUF_2498,
      O => q_chain_gen_24_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_DXMUX_4591,
      CE => VCC,
      CLK => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_CLKINV_4574,
      SET => GND,
      RST => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4596,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_24_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4596
    );
  q_chain_gen_7_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_6_IBUF_2449,
      O => q_chain_gen_7_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_4627,
      CE => VCC,
      CLK => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_4610,
      SET => GND,
      RST => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4632,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4632
    );
  q_chain_gen_18_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_17_IBUF_2503,
      O => q_chain_gen_18_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DXMUX_4663,
      CE => VCC,
      CLK => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_4646,
      SET => GND,
      RST => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4668,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4668
    );
  q_chain_gen_12_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_11_IBUF_2485,
      O => q_chain_gen_12_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4267,
      CE => VCC,
      CLK => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4250,
      SET => GND,
      RST => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4272,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4272
    );
  q_chain_gen_20_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_19_IBUF_2507,
      O => q_chain_gen_20_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_DXMUX_4303,
      CE => VCC,
      CLK => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_CLKINV_4286,
      SET => GND,
      RST => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4308,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_20_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4308
    );
  q_chain_gen_3_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_2_IBUF_2441,
      O => q_chain_gen_3_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_4339,
      CE => VCC,
      CLK => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_4322,
      SET => GND,
      RST => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4344,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4344
    );
  q_chain_gen_14_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_13_IBUF_2492,
      O => q_chain_gen_14_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_4375,
      CE => VCC,
      CLK => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_4358,
      SET => GND,
      RST => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4380,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4380
    );
  prod1_q_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_17_DYMUX_7628,
      CE => prod1_q_17_CEINV_7624,
      CLK => prod1_q_17_CLKINV_7625,
      SET => GND,
      RST => prod1_q_17_SRINVNOT,
      O => prod1_q(16)
    );
  prod1_q_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_17_DXMUX_7637,
      CE => prod1_q_17_CEINV_7624,
      CLK => prod1_q_17_CLKINV_7625,
      SET => GND,
      RST => prod1_q_17_SRINVNOT,
      O => prod1_q(17)
    );
  prod1_q_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_25_DYMUX_7656,
      CE => prod1_q_25_CEINV_7652,
      CLK => prod1_q_25_CLKINV_7653,
      SET => GND,
      RST => prod1_q_25_SRINVNOT,
      O => prod1_q(24)
    );
  prod1_q_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_25_DXMUX_7665,
      CE => prod1_q_25_CEINV_7652,
      CLK => prod1_q_25_CLKINV_7653,
      SET => GND,
      RST => prod1_q_25_SRINVNOT,
      O => prod1_q(25)
    );
  prod1_q_32 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_33_DYMUX_7684,
      CE => prod1_q_33_CEINV_7680,
      CLK => prod1_q_33_CLKINV_7681,
      SET => GND,
      RST => prod1_q_33_SRINVNOT,
      O => prod1_q(32)
    );
  prod1_q_33 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_33_DXMUX_7693,
      CE => prod1_q_33_CEINV_7680,
      CLK => prod1_q_33_CLKINV_7681,
      SET => GND,
      RST => prod1_q_33_SRINVNOT,
      O => prod1_q(33)
    );
  gestore_shift_rca_rca_4_fa_c1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N200_0,
      ADR1 => N201_0,
      ADR2 => gestore_shift_rca_carry_3_Q,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_5_Q
    );
  gestore_shift_rca_rca_11_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(11),
      ADR3 => gestore_shift_b_add_sub(12),
      O => N188
    );
  gestore_shift_rca_rca_11_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(12),
      ADR3 => gestore_shift_b_add_sub(11),
      O => N189
    );
  a_chain_gen_17_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N120_0,
      ADR1 => gestore_shift_b_add_sub(17),
      ADR2 => a_chain_gen_17_sc_ch_inst_mux2_1_X_SW1_O,
      ADR3 => gestore_shift_rca_carry_17_0,
      O => a_x_17_Q
    );
  a_chain_gen_17_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_DXMUX_5657,
      CE => VCC,
      CLK => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_CLKINV_5641,
      SET => GND,
      RST => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5662,
      O => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5662
    );
  gestore_shift_rca_rca_7_fa_c1 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(7),
      ADR3 => gestore_shift_rca_carry_7_Q,
      O => gestore_shift_rca_carry_8_Q
    );
  gestore_shift_rca_rca_24_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(25),
      ADR1 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N239,
      O => N275
    );
  q_chain_gen_22_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_21_IBUF_2491,
      O => q_chain_gen_22_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_4411,
      CE => VCC,
      CLK => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_4394,
      SET => GND,
      RST => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4416,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4416
    );
  q_chain_gen_30_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_29_IBUF_2509,
      O => q_chain_gen_30_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_DXMUX_4447,
      CE => VCC,
      CLK => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_CLKINV_4430,
      SET => GND,
      RST => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4452,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_30_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4452
    );
  a_chain_gen_12_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N293_0,
      ADR1 => gestore_shift_b_add_sub(12),
      ADR2 => N106_0,
      ADR3 => N105_0,
      O => N317
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_DXMUX_4483,
      CE => VCC,
      CLK => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_CLKINV_4466,
      SET => GND,
      RST => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4488,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4488
    );
  q_chain_gen_5_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_4_IBUF_2445,
      O => q_chain_gen_5_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_4519,
      CE => VCC,
      CLK => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_4502,
      SET => GND,
      RST => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4524,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4524
    );
  q_chain_gen_11_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_10_IBUF_2482,
      O => q_chain_gen_11_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4843,
      CE => VCC,
      CLK => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4826,
      SET => GND,
      RST => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4848,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4848
    );
  q_chain_gen_2_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_1_IBUF_2439,
      O => q_chain_gen_2_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_4879,
      CE => VCC,
      CLK => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_4862,
      SET => GND,
      RST => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4884,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4884
    );
  q_chain_gen_13_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_12_IBUF_2489,
      O => q_chain_gen_13_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_4915,
      CE => VCC,
      CLK => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_4898,
      SET => GND,
      RST => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4920,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4920
    );
  q_chain_gen_21_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_20_IBUF_2488,
      O => q_chain_gen_21_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DXMUX_4951,
      CE => VCC,
      CLK => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_4934,
      SET => GND,
      RST => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4956,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4956
    );
  a_chain_gen_11_sc_ch_inst_mux2_1_X_G : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N192_0,
      ADR1 => gestore_shift_b_add_sub(11),
      ADR2 => N103_0,
      ADR3 => N102_0,
      O => N321
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_DXMUX_4987,
      CE => VCC,
      CLK => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_CLKINV_4970,
      SET => GND,
      RST => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4992,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_4992
    );
  q_chain_gen_4_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_3_IBUF_2443,
      O => q_chain_gen_4_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_5023,
      CE => VCC,
      CLK => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_5006,
      SET => GND,
      RST => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5028,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5028
    );
  q_chain_gen_15_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_14_IBUF_2496,
      O => q_chain_gen_15_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_DXMUX_5059,
      CE => VCC,
      CLK => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_CLKINV_5042,
      SET => GND,
      RST => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5064,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_15_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5064
    );
  q_chain_gen_23_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => mul2_22_IBUF_2495,
      O => q_chain_gen_23_sc_ch_inst_mux2_1_X
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_5095,
      CE => VCC,
      CLK => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_5078,
      SET => GND,
      RST => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5100,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q
    );
  q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => q_chain_gen_23_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5100
    );
  gestore_shift_rca_rca_15_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(16),
      ADR3 => gestore_shift_b_add_sub(15),
      O => N183
    );
  gestore_shift_rca_rca_23_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(24),
      ADR3 => gestore_shift_b_add_sub(23),
      O => N171
    );
  gestore_shift_rca_rca_23_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N244_0,
      ADR1 => gestore_shift_b_add_sub(24),
      ADR2 => N142,
      ADR3 => N141_0,
      O => N286
    );
  gestore_shift_rca_rca_23_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => gestore_shift_rca_rca_22_fa_c1_SW3_O,
      ADR1 => gestore_shift_b_add_sub(24),
      ADR2 => N142,
      ADR3 => N141_0,
      O => N287
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0906"
    )
    port map (
      ADR0 => m_q(6),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_a_0,
      ADR3 => gestore_shift_rca_rca_5_fa_c1_O,
      O => N336
    );
  gestore_shift_rca_rca_28_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N156_0,
      ADR1 => gestore_shift_b_add_sub(29),
      ADR2 => N215_0,
      ADR3 => N157,
      O => N266
    );
  prod1_q_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DYMUX_9068,
      CE => prod1_q_9_CEINV_9064,
      CLK => prod1_q_9_CLKINV_9065,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(8)
    );
  prod1_q_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_9_DXMUX_9077,
      CE => prod1_q_9_CEINV_9064,
      CLK => prod1_q_9_CLKINV_9065,
      SET => GND,
      RST => prod1_q_9_SRINVNOT,
      O => prod1_q(9)
    );
  m_q_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_11_DYMUX_9096,
      CE => m_q_11_CEINV_9092,
      CLK => m_q_11_CLKINV_9093,
      SET => GND,
      RST => m_q_11_SRINVNOT,
      O => m_q(10)
    );
  m_q_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_11_DXMUX_9105,
      CE => m_q_11_CEINV_9092,
      CLK => m_q_11_CLKINV_9093,
      SET => GND,
      RST => m_q_11_SRINVNOT,
      O => m_q(11)
    );
  m_q_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_13_DYMUX_9124,
      CE => m_q_13_CEINV_9120,
      CLK => m_q_13_CLKINV_9121,
      SET => GND,
      RST => m_q_13_SRINVNOT,
      O => m_q(12)
    );
  m_q_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_13_DXMUX_9133,
      CE => m_q_13_CEINV_9120,
      CLK => m_q_13_CLKINV_9121,
      SET => GND,
      RST => m_q_13_SRINVNOT,
      O => m_q(13)
    );
  a_chain_gen_9_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => N340,
      O => a_x_9_Q
    );
  a_chain_gen_9_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_8855,
      CE => VCC,
      CLK => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_8839,
      SET => GND,
      RST => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8860,
      O => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8860
    );
  a_chain_gen_22_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      O => N136
    );
  a_chain_gen_13_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => N342,
      O => a_x_13_Q
    );
  a_chain_gen_13_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_DXMUX_8914,
      CE => VCC,
      CLK => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_CLKINV_8898,
      SET => GND,
      RST => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8919,
      O => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8919
    );
  gestore_shift_rca_rca_12_fa_c1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => gestore_shift_rca_carry_5_0,
      ADR1 => N263_0,
      ADR2 => N262,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_13_Q
    );
  prod1_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DYMUX_8956,
      CE => prod1_q_1_CEINV_8952,
      CLK => prod1_q_1_CLKINV_8953,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(0)
    );
  gestore_shift_rca_rca_3_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(4),
      ADR3 => gestore_shift_b_add_sub(3),
      O => N201
    );
  gestore_shift_rca_rca_8_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N230_0,
      ADR1 => N227,
      ADR2 => N226_0,
      ADR3 => VCC,
      O => N263
    );
  gestore_shift_rca_rca_12_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => N224,
      ADR1 => N223_0,
      ADR2 => N226_0,
      ADR3 => VCC,
      O => N241
    );
  gestore_shift_rca_rca_20_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N217,
      ADR1 => N218_0,
      ADR2 => N220_0,
      ADR3 => VCC,
      O => N238
    );
  a_chain_gen_31_sc_in_inst_mux2_1_X_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"7D3C"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => gestore_shift_b_add_sub(31),
      ADR2 => N211_0,
      ADR3 => en_a_0,
      O => N232
    );
  gestore_shift_rca_rca_17_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(17),
      ADR3 => gestore_shift_b_add_sub(18),
      O => N179
    );
  gestore_shift_rca_rca_25_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(25),
      ADR3 => gestore_shift_b_add_sub(26),
      O => N167
    );
  gestore_shift_rca_rca_16_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N220_0,
      ADR1 => N221_0,
      ADR2 => N242,
      ADR3 => VCC,
      O => N248
    );
  gestore_shift_rca_rca_24_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N144_0,
      ADR1 => gestore_shift_b_add_sub(25),
      ADR2 => N145,
      ADR3 => N238_0,
      O => N295
    );
  gestore_shift_rca_rca_24_fa_c1_SW4 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N238_0,
      ADR1 => N251_0,
      ADR2 => N250,
      ADR3 => VCC,
      O => N298
    );
  gestore_shift_rca_rca_24_fa_c1_SW6 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N238_0,
      ADR1 => N254_0,
      ADR2 => N253,
      ADR3 => VCC,
      O => N301
    );
  gestore_shift_rca_rca_24_fa_c1_SW8 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N238_0,
      ADR1 => N266_0,
      ADR2 => N265,
      ADR3 => VCC,
      O => N304
    );
  a_chain_gen_10_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N99_0,
      ADR1 => gestore_shift_b_add_sub(10),
      ADR2 => N100_0,
      ADR3 => gestore_shift_rca_rca_9_fa_c1_O,
      O => a_x_10_Q
    );
  a_chain_gen_10_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_DXMUX_5860,
      CE => VCC,
      CLK => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_CLKINV_5844,
      SET => GND,
      RST => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5865,
      O => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_5865
    );
  gestore_shift_rca_rca_29_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"173F"
    )
    port map (
      ADR0 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => gestore_shift_b_add_sub(30),
      ADR2 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(29),
      O => N211
    );
  gestore_shift_rca_rca_29_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"1117"
    )
    port map (
      ADR0 => gestore_shift_b_add_sub(30),
      ADR1 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => gestore_shift_b_add_sub(29),
      O => N212
    );
  gestore_shift_rca_rca_24_fa_c1_SW10 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N238_0,
      ADR1 => N269,
      ADR2 => N268,
      ADR3 => VCC,
      O => N307
    );
  gestore_shift_rca_rca_24_fa_c1_SW11 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N239,
      ADR1 => N269,
      ADR2 => N268,
      ADR3 => VCC,
      O => N308
    );
  gestore_shift_rca_rca_24_fa_c1_SW13 : X_LUT4
    generic map(
      INIT => X"2727"
    )
    port map (
      ADR0 => N239,
      ADR1 => N272_0,
      ADR2 => N271,
      ADR3 => VCC,
      O => N311
    );
  gestore_shift_rca_rca_3_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(3),
      ADR3 => gestore_shift_b_add_sub(4),
      O => N200
    );
  gestore_shift_rca_rca_21_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(21),
      ADR3 => gestore_shift_b_add_sub(22),
      O => N173
    );
  gestore_shift_rca_rca_13_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FEA8"
    )
    port map (
      ADR0 => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_13_0,
      ADR3 => gestore_shift_b_add_sub(14),
      O => N186
    );
  gestore_shift_rca_rca_21_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(22),
      ADR3 => gestore_shift_b_add_sub(21),
      O => N174
    );
  a_chain_gen_3_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => a_chain_gen_3_sc_ch_inst_mux2_1_X_SW2_O,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_3_Q
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_6434,
      CE => VCC,
      CLK => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_6418,
      SET => GND,
      RST => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6439,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6439
    );
  gestore_shift_rca_rca_18_fa_c1_SW4 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N179_0,
      ADR1 => gestore_shift_b_add_sub(19),
      ADR2 => N127,
      ADR3 => N126_0,
      O => N277
    );
  gestore_shift_rca_rca_26_fa_c1_SW5 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N150_0,
      ADR1 => gestore_shift_b_add_sub(27),
      ADR2 => N168_0,
      ADR3 => N151,
      O => N251
    );
  gestore_shift_rca_rca_17_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(18),
      ADR3 => gestore_shift_b_add_sub(17),
      O => N180
    );
  gestore_shift_rca_rca_25_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(26),
      ADR3 => gestore_shift_b_add_sub(25),
      O => N168
    );
  gestore_shift_rca_rca_25_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N147_0,
      ADR1 => gestore_shift_b_add_sub(26),
      ADR2 => N148,
      ADR3 => gestore_shift_rca_rca_24_fa_c1_SW0_O,
      O => N289
    );
  gestore_shift_rca_rca_25_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N147_0,
      ADR1 => gestore_shift_b_add_sub(26),
      ADR2 => N148,
      ADR3 => N275_0,
      O => N290
    );
  a_chain_gen_1_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => a_chain_gen_1_sc_ch_inst_mux2_1_X_SW2_O,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_1_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_6303,
      CE => VCC,
      CLK => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_6287,
      SET => GND,
      RST => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6308,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_6308
    );
  gestore_shift_rca_rca_9_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FEA8"
    )
    port map (
      ADR0 => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub_9_0,
      ADR3 => gestore_shift_b_add_sub(10),
      O => N192
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X_SW2 : X_LUT4
    generic map(
      INIT => X"0096"
    )
    port map (
      ADR0 => gestore_shift_rca_rca_3_fa_c1_O,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(4),
      ADR3 => en_a_0,
      O => N332
    );
  gestore_shift_rca_rca_19_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(19),
      ADR3 => gestore_shift_b_add_sub(20),
      O => N176
    );
  gestore_shift_rca_rca_27_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(27),
      ADR3 => gestore_shift_b_add_sub(28),
      O => N164
    );
  gestore_shift_rca_rca_19_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(20),
      ADR3 => gestore_shift_b_add_sub(19),
      O => N177
    );
  gestore_shift_rca_rca_27_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(28),
      ADR3 => gestore_shift_b_add_sub(27),
      O => N165
    );
  gestore_shift_rca_rca_19_fa_c1_SW2 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N256_0,
      ADR1 => gestore_shift_b_add_sub(20),
      ADR2 => N130,
      ADR3 => N129_0,
      O => N280
    );
  gestore_shift_rca_rca_19_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => gestore_shift_rca_rca_18_fa_c1_SW3_O,
      ADR1 => gestore_shift_b_add_sub(20),
      ADR2 => N130,
      ADR3 => N129_0,
      O => N281
    );
  a_chain_gen_30_sc_ch_inst_mux2_1_X73_SW0 : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => gestore_shift_rca_rca_29_fa_c1_SW0_O,
      O => N208
    );
  a_chain_gen_30_sc_ch_inst_mux2_1_X73_SW1 : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => gestore_shift_rca_rca_29_fa_c1_SW1_O,
      O => N209
    );
  gestore_shift_rca_rca_5_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"EA80"
    )
    port map (
      ADR0 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(5),
      ADR3 => gestore_shift_b_add_sub(6),
      O => N197
    );
  gestore_shift_rca_rca_5_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"FAE8"
    )
    port map (
      ADR0 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => gestore_shift_b_add_sub(6),
      ADR3 => gestore_shift_b_add_sub(5),
      O => N198
    );
  gestore_shift_rca_rca_14_fa_c1_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N182_0,
      ADR1 => N183_0,
      ADR2 => N185,
      ADR3 => VCC,
      O => N223
    );
  gestore_shift_rca_rca_22_fa_c1_SW4 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N173_0,
      ADR1 => gestore_shift_b_add_sub(23),
      ADR2 => N139,
      ADR3 => N138_0,
      O => N283
    );
  operation_counter_hit : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_hit_DXMUX_7441,
      CE => operation_counter_hit_CEINV_7422,
      CLK => operation_counter_hit_CLKINV_7423,
      SET => GND,
      RST => operation_counter_hit_FFX_RSTAND_7447,
      O => operation_counter_hit_2839
    );
  operation_counter_hit_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => operation_counter_hit_FFX_RSTAND_7447
    );
  prod1_q_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DYMUX_7460,
      CE => prod1_q_11_CEINV_7456,
      CLK => prod1_q_11_CLKINV_7457,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(10)
    );
  prod1_q_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_11_DXMUX_7469,
      CE => prod1_q_11_CEINV_7456,
      CLK => prod1_q_11_CLKINV_7457,
      SET => GND,
      RST => prod1_q_11_SRINVNOT,
      O => prod1_q(11)
    );
  prod1_q_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DYMUX_7488,
      CE => prod1_q_13_CEINV_7484,
      CLK => prod1_q_13_CLKINV_7485,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(12)
    );
  prod1_q_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_13_DXMUX_7497,
      CE => prod1_q_13_CEINV_7484,
      CLK => prod1_q_13_CLKINV_7485,
      SET => GND,
      RST => prod1_q_13_SRINVNOT,
      O => prod1_q(13)
    );
  prod1_q_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_21_DYMUX_7516,
      CE => prod1_q_21_CEINV_7512,
      CLK => prod1_q_21_CLKINV_7513,
      SET => GND,
      RST => prod1_q_21_SRINVNOT,
      O => prod1_q(20)
    );
  prod1_q_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_21_DXMUX_7525,
      CE => prod1_q_21_CEINV_7512,
      CLK => prod1_q_21_CLKINV_7513,
      SET => GND,
      RST => prod1_q_21_SRINVNOT,
      O => prod1_q(21)
    );
  a_chain_gen_23_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DXMUX_7069,
      CE => VCC,
      CLK => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_7044,
      SET => GND,
      RST => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_20_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DYMUX_7096,
      CE => VCC,
      CLK => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_7086,
      SET => GND,
      RST => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_20_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_19_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N277_0,
      ADR1 => N278_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_19_Q
    );
  a_chain_gen_19_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_DXMUX_7111,
      CE => VCC,
      CLK => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_CLKINV_7086,
      SET => GND,
      RST => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_18_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N123_0,
      ADR1 => gestore_shift_b_add_sub(18),
      ADR2 => N124_0,
      ADR3 => gestore_shift_rca_carry_18_0,
      O => a_x_18_Q
    );
  a_chain_gen_18_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_DYMUX_7134,
      CE => VCC,
      CLK => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_CLKINV_7125,
      SET => GND,
      RST => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7139,
      O => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7139
    );
  a_chain_gen_8_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N93_0,
      ADR1 => gestore_shift_b_add_sub(8),
      ADR2 => N94_0,
      ADR3 => gestore_shift_rca_carry_8_0,
      O => a_x_8_Q
    );
  a_chain_gen_8_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DYMUX_7157,
      CE => VCC,
      CLK => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_7148,
      SET => GND,
      RST => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7162,
      O => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7162
    );
  a_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"C5CA"
    )
    port map (
      ADR0 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => N336_0,
      O => a_x_6_Q
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_7180,
      CE => VCC,
      CLK => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_7171,
      SET => GND,
      RST => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7185,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7185
    );
  gestore_shift_rca_rca_27_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      ADR0 => N153_0,
      ADR1 => gestore_shift_b_add_sub(28),
      ADR2 => N236_0,
      ADR3 => N154,
      O => N254
    );
  cu_current_state_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DYMUX_6844,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_6834,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd3_2700
    );
  cu_current_state_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => start_IBUF_2454,
      ADR1 => cu_current_state_FSM_FFd5_2568,
      ADR2 => VCC,
      ADR3 => VCC,
      O => cu_current_state_FSM_FFd4_In
    );
  cu_current_state_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd4_DXMUX_6860,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd4_CLKINV_6834,
      SET => GND,
      RST => cu_current_state_FSM_FFd4_SRINVNOT,
      O => cu_current_state_FSM_FFd4_2702
    );
  cu_current_state_FSM_FFd5 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      I => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_6888,
      CE => VCC,
      CLK => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_6879,
      SET => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      RST => GND,
      O => cu_current_state_FSM_FFd5_2568
    );
  q_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"8D88"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd5_2568,
      ADR3 => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => q_x(0)
    );
  q_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_6901,
      CE => VCC,
      CLK => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_6879,
      SET => GND,
      RST => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_SRINVNOT,
      O => q_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_30_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DYMUX_6928,
      CE => VCC,
      CLK => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_6918,
      SET => GND,
      RST => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_29_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N304_0,
      ADR1 => N305_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_29_Q
    );
  a_chain_gen_29_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_DXMUX_6943,
      CE => VCC,
      CLK => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_CLKINV_6918,
      SET => GND,
      RST => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_28_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DYMUX_6970,
      CE => VCC,
      CLK => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_6960,
      SET => GND,
      RST => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_28_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_27_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N298_0,
      ADR1 => N299_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_27_Q
    );
  a_chain_gen_27_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_DXMUX_6985,
      CE => VCC,
      CLK => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_CLKINV_6960,
      SET => GND,
      RST => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_26_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DYMUX_7012,
      CE => VCC,
      CLK => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_7002,
      SET => GND,
      RST => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_25_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N295_0,
      ADR1 => N296_0,
      ADR2 => gestore_shift_rca_carry_17_0,
      ADR3 => VCC,
      O => a_x_25_Q
    );
  a_chain_gen_25_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_DXMUX_7027,
      CE => VCC,
      CLK => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_CLKINV_7002,
      SET => GND,
      RST => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_24_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_DYMUX_7054,
      CE => VCC,
      CLK => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_CLKINV_7044,
      SET => GND,
      RST => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_23_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N283_0,
      ADR1 => N284_0,
      ADR2 => gestore_shift_rca_carry_21_0,
      ADR3 => VCC,
      O => a_x_23_Q
    );
  a_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => N332_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_4_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_7203,
      CE => VCC,
      CLK => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_7194,
      SET => GND,
      RST => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7208,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7208
    );
  a_chain_gen_31_sc_in_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"99A5"
    )
    port map (
      ADR0 => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q,
      ADR1 => N311_0,
      ADR2 => N310_0,
      ADR3 => gestore_shift_rca_carry_17_0,
      O => a_x_31_Q
    );
  a_chain_gen_31_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_DYMUX_7226,
      CE => VCC,
      CLK => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_CLKINV_7217,
      SET => GND,
      RST => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_7231,
      O => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_31_sc_in_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_31_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_7231
    );
  a_chain_gen_21_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N132_0,
      ADR1 => gestore_shift_b_add_sub(21),
      ADR2 => N133_0,
      ADR3 => gestore_shift_rca_carry_21_0,
      O => a_x_21_Q
    );
  a_chain_gen_21_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_DYMUX_7249,
      CE => VCC,
      CLK => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_CLKINV_7240,
      SET => GND,
      RST => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7254,
      O => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_7254
    );
  operation_counter_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_count_3_DYMUX_7279,
      CE => operation_counter_count_3_CEINV_7268,
      CLK => operation_counter_count_3_CLKINV_7269,
      SET => GND,
      RST => operation_counter_count_3_SRINVNOT,
      O => operation_counter_count(2)
    );
  operation_counter_Mcount_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => operation_counter_count(3),
      ADR2 => operation_counter_count(0),
      ADR3 => operation_counter_count(2),
      O => Result(3)
    );
  operation_counter_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_count_3_DXMUX_7294,
      CE => operation_counter_count_3_CEINV_7268,
      CLK => operation_counter_count_3_CLKINV_7269,
      SET => GND,
      RST => operation_counter_count_3_SRINVNOT,
      O => operation_counter_count(3)
    );
  operation_counter_Mcount_count_xor_4_11 : X_LUT4
    generic map(
      INIT => X"9999"
    )
    port map (
      ADR0 => N02,
      ADR1 => operation_counter_count(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result(4)
    );
  operation_counter_count_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_count_4_DYMUX_7320,
      CE => operation_counter_count_4_CEINV_7308,
      CLK => operation_counter_count_4_CLKINV_7309,
      SET => GND,
      RST => operation_counter_count_4_FFY_RSTAND_7326,
      O => operation_counter_count(4)
    );
  operation_counter_count_4_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => operation_counter_count_4_FFY_RSTAND_7326
    );
  a_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"DE12"
    )
    port map (
      ADR0 => N334,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => a_x_5_Q
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_7356,
      CE => VCC,
      CLK => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_7340,
      SET => GND,
      RST => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_7361,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_7361
    );
  a_chain_gen_26_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N147
    );
  a_chain_gen_18_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N123
    );
  operation_counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => operation_counter_count(4),
      ADR1 => N02,
      ADR2 => VCC,
      ADR3 => VCC,
      O => operation_counter_hit_cmp_eq0000
    );
  a_chain_gen_7_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => cu_current_state_FSM_FFd2_2567,
      ADR3 => N338,
      O => a_x_7_Q
    );
  a_chain_gen_7_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_8387,
      CE => VCC,
      CLK => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_8371,
      SET => GND,
      RST => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8392,
      O => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8392
    );
  gestore_shift_Mxor_b_add_sub_7_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(7),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub(7)
    );
  f_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => f_q_0_DYMUX_8427,
      CE => f_q_0_CEINV_8423,
      CLK => f_q_0_CLKINV_8424,
      SET => GND,
      RST => f_q_0_FFY_RSTAND_8433,
      O => f_q(0)
    );
  f_q_0_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => f_q_0_FFY_RSTAND_8433
    );
  m_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_1_DYMUX_8446,
      CE => m_q_1_CEINV_8442,
      CLK => m_q_1_CLKINV_8443,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(0)
    );
  m_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_1_DXMUX_8455,
      CE => m_q_1_CEINV_8442,
      CLK => m_q_1_CLKINV_8443,
      SET => GND,
      RST => m_q_1_SRINVNOT,
      O => m_q(1)
    );
  m_q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_3_DYMUX_8474,
      CE => m_q_3_CEINV_8470,
      CLK => m_q_3_CLKINV_8471,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(2)
    );
  prod1_q_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DYMUX_7544,
      CE => prod1_q_15_CEINV_7540,
      CLK => prod1_q_15_CLKINV_7541,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(14)
    );
  prod1_q_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_15_DXMUX_7553,
      CE => prod1_q_15_CEINV_7540,
      CLK => prod1_q_15_CLKINV_7541,
      SET => GND,
      RST => prod1_q_15_SRINVNOT,
      O => prod1_q(15)
    );
  prod1_q_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_23_DYMUX_7572,
      CE => prod1_q_23_CEINV_7568,
      CLK => prod1_q_23_CLKINV_7569,
      SET => GND,
      RST => prod1_q_23_SRINVNOT,
      O => prod1_q(22)
    );
  prod1_q_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_23_DXMUX_7581,
      CE => prod1_q_23_CEINV_7568,
      CLK => prod1_q_23_CLKINV_7569,
      SET => GND,
      RST => prod1_q_23_SRINVNOT,
      O => prod1_q(23)
    );
  prod1_q_30 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_31_DYMUX_7600,
      CE => prod1_q_31_CEINV_7596,
      CLK => prod1_q_31_CLKINV_7597,
      SET => GND,
      RST => prod1_q_31_SRINVNOT,
      O => prod1_q(30)
    );
  prod1_q_31 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_31_DXMUX_7609,
      CE => prod1_q_31_CEINV_7596,
      CLK => prod1_q_31_CLKINV_7597,
      SET => GND,
      RST => prod1_q_31_SRINVNOT,
      O => prod1_q(31)
    );
  prod1_q_40 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_41_DYMUX_7712,
      CE => prod1_q_41_CEINV_7708,
      CLK => prod1_q_41_CLKINV_7709,
      SET => GND,
      RST => prod1_q_41_SRINVNOT,
      O => prod1_q(40)
    );
  prod1_q_41 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_41_DXMUX_7721,
      CE => prod1_q_41_CEINV_7708,
      CLK => prod1_q_41_CLKINV_7709,
      SET => GND,
      RST => prod1_q_41_SRINVNOT,
      O => prod1_q(41)
    );
  prod1_q_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_19_DYMUX_7740,
      CE => prod1_q_19_CEINV_7736,
      CLK => prod1_q_19_CLKINV_7737,
      SET => GND,
      RST => prod1_q_19_SRINVNOT,
      O => prod1_q(18)
    );
  prod1_q_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_19_DXMUX_7749,
      CE => prod1_q_19_CEINV_7736,
      CLK => prod1_q_19_CLKINV_7737,
      SET => GND,
      RST => prod1_q_19_SRINVNOT,
      O => prod1_q(19)
    );
  prod1_q_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_27_DYMUX_7768,
      CE => prod1_q_27_CEINV_7764,
      CLK => prod1_q_27_CLKINV_7765,
      SET => GND,
      RST => prod1_q_27_SRINVNOT,
      O => prod1_q(26)
    );
  prod1_q_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_27_DXMUX_7777,
      CE => prod1_q_27_CEINV_7764,
      CLK => prod1_q_27_CLKINV_7765,
      SET => GND,
      RST => prod1_q_27_SRINVNOT,
      O => prod1_q(27)
    );
  prod1_q_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_29_DYMUX_7880,
      CE => prod1_q_29_CEINV_7876,
      CLK => prod1_q_29_CLKINV_7877,
      SET => GND,
      RST => prod1_q_29_SRINVNOT,
      O => prod1_q(28)
    );
  prod1_q_29 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_29_DXMUX_7889,
      CE => prod1_q_29_CEINV_7876,
      CLK => prod1_q_29_CLKINV_7877,
      SET => GND,
      RST => prod1_q_29_SRINVNOT,
      O => prod1_q(29)
    );
  prod1_q_36 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_37_DYMUX_7908,
      CE => prod1_q_37_CEINV_7904,
      CLK => prod1_q_37_CLKINV_7905,
      SET => GND,
      RST => prod1_q_37_SRINVNOT,
      O => prod1_q(36)
    );
  prod1_q_37 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_37_DXMUX_7917,
      CE => prod1_q_37_CEINV_7904,
      CLK => prod1_q_37_CLKINV_7905,
      SET => GND,
      RST => prod1_q_37_SRINVNOT,
      O => prod1_q(37)
    );
  prod1_q_44 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_45_DYMUX_7936,
      CE => prod1_q_45_CEINV_7932,
      CLK => prod1_q_45_CLKINV_7933,
      SET => GND,
      RST => prod1_q_45_SRINVNOT,
      O => prod1_q(44)
    );
  prod1_q_45 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_45_DXMUX_7945,
      CE => prod1_q_45_CEINV_7932,
      CLK => prod1_q_45_CLKINV_7933,
      SET => GND,
      RST => prod1_q_45_SRINVNOT,
      O => prod1_q(45)
    );
  prod1_q_34 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_35_DYMUX_7796,
      CE => prod1_q_35_CEINV_7792,
      CLK => prod1_q_35_CLKINV_7793,
      SET => GND,
      RST => prod1_q_35_SRINVNOT,
      O => prod1_q(34)
    );
  prod1_q_35 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_35_DXMUX_7805,
      CE => prod1_q_35_CEINV_7792,
      CLK => prod1_q_35_CLKINV_7793,
      SET => GND,
      RST => prod1_q_35_SRINVNOT,
      O => prod1_q(35)
    );
  prod1_q_42 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_43_DYMUX_7824,
      CE => prod1_q_43_CEINV_7820,
      CLK => prod1_q_43_CLKINV_7821,
      SET => GND,
      RST => prod1_q_43_SRINVNOT,
      O => prod1_q(42)
    );
  prod1_q_43 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_43_DXMUX_7833,
      CE => prod1_q_43_CEINV_7820,
      CLK => prod1_q_43_CLKINV_7821,
      SET => GND,
      RST => prod1_q_43_SRINVNOT,
      O => prod1_q(43)
    );
  prod1_q_50 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_51_DYMUX_7852,
      CE => prod1_q_51_CEINV_7848,
      CLK => prod1_q_51_CLKINV_7849,
      SET => GND,
      RST => prod1_q_51_SRINVNOT,
      O => prod1_q(50)
    );
  prod1_q_51 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_51_DXMUX_7861,
      CE => prod1_q_51_CEINV_7848,
      CLK => prod1_q_51_CLKINV_7849,
      SET => GND,
      RST => prod1_q_51_SRINVNOT,
      O => prod1_q(51)
    );
  prod1_q_52 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_53_DYMUX_7964,
      CE => prod1_q_53_CEINV_7960,
      CLK => prod1_q_53_CLKINV_7961,
      SET => GND,
      RST => prod1_q_53_SRINVNOT,
      O => prod1_q(52)
    );
  prod1_q_53 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_53_DXMUX_7973,
      CE => prod1_q_53_CEINV_7960,
      CLK => prod1_q_53_CLKINV_7961,
      SET => GND,
      RST => prod1_q_53_SRINVNOT,
      O => prod1_q(53)
    );
  prod1_q_60 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_61_DYMUX_7992,
      CE => prod1_q_61_CEINV_7988,
      CLK => prod1_q_61_CLKINV_7989,
      SET => GND,
      RST => prod1_q_61_SRINVNOT,
      O => prod1_q(60)
    );
  prod1_q_61 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_61_DXMUX_8001,
      CE => prod1_q_61_CEINV_7988,
      CLK => prod1_q_61_CLKINV_7989,
      SET => GND,
      RST => prod1_q_61_SRINVNOT,
      O => prod1_q(61)
    );
  prod1_q_38 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_39_DYMUX_8020,
      CE => prod1_q_39_CEINV_8016,
      CLK => prod1_q_39_CLKINV_8017,
      SET => GND,
      RST => prod1_q_39_SRINVNOT,
      O => prod1_q(38)
    );
  prod1_q_39 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_39_DXMUX_8029,
      CE => prod1_q_39_CEINV_8016,
      CLK => prod1_q_39_CLKINV_8017,
      SET => GND,
      RST => prod1_q_39_SRINVNOT,
      O => prod1_q(39)
    );
  prod1_q_46 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_47_DYMUX_8048,
      CE => prod1_q_47_CEINV_8044,
      CLK => prod1_q_47_CLKINV_8045,
      SET => GND,
      RST => prod1_q_47_SRINVNOT,
      O => prod1_q(46)
    );
  prod1_q_47 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_47_DXMUX_8057,
      CE => prod1_q_47_CEINV_8044,
      CLK => prod1_q_47_CLKINV_8045,
      SET => GND,
      RST => prod1_q_47_SRINVNOT,
      O => prod1_q(47)
    );
  prod1_q_54 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_55_DYMUX_8076,
      CE => prod1_q_55_CEINV_8072,
      CLK => prod1_q_55_CLKINV_8073,
      SET => GND,
      RST => prod1_q_55_SRINVNOT,
      O => prod1_q(54)
    );
  prod1_q_55 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_55_DXMUX_8085,
      CE => prod1_q_55_CEINV_8072,
      CLK => prod1_q_55_CLKINV_8073,
      SET => GND,
      RST => prod1_q_55_SRINVNOT,
      O => prod1_q(55)
    );
  prod1_q_62 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_63_DYMUX_8104,
      CE => prod1_q_63_CEINV_8100,
      CLK => prod1_q_63_CLKINV_8101,
      SET => GND,
      RST => prod1_q_63_SRINVNOT,
      O => prod1_q(62)
    );
  prod1_q_63 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_63_DXMUX_8113,
      CE => prod1_q_63_CEINV_8100,
      CLK => prod1_q_63_CLKINV_8101,
      SET => GND,
      RST => prod1_q_63_SRINVNOT,
      O => prod1_q(63)
    );
  prod1_q_48 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_49_DYMUX_8132,
      CE => prod1_q_49_CEINV_8128,
      CLK => prod1_q_49_CLKINV_8129,
      SET => GND,
      RST => prod1_q_49_SRINVNOT,
      O => prod1_q(48)
    );
  prod1_q_49 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_49_DXMUX_8141,
      CE => prod1_q_49_CEINV_8128,
      CLK => prod1_q_49_CLKINV_8129,
      SET => GND,
      RST => prod1_q_49_SRINVNOT,
      O => prod1_q(49)
    );
  prod1_q_56 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_57_DYMUX_8160,
      CE => prod1_q_57_CEINV_8156,
      CLK => prod1_q_57_CLKINV_8157,
      SET => GND,
      RST => prod1_q_57_SRINVNOT,
      O => prod1_q(56)
    );
  prod1_q_57 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_57_DXMUX_8169,
      CE => prod1_q_57_CEINV_8156,
      CLK => prod1_q_57_CLKINV_8157,
      SET => GND,
      RST => prod1_q_57_SRINVNOT,
      O => prod1_q(57)
    );
  prod1_q_58 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_59_DYMUX_8188,
      CE => prod1_q_59_CEINV_8184,
      CLK => prod1_q_59_CLKINV_8185,
      SET => GND,
      RST => prod1_q_59_SRINVNOT,
      O => prod1_q(58)
    );
  prod1_q_59 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_59_DXMUX_8197,
      CE => prod1_q_59_CEINV_8184,
      CLK => prod1_q_59_CLKINV_8185,
      SET => GND,
      RST => prod1_q_59_SRINVNOT,
      O => prod1_q(59)
    );
  gestore_shift_rca_rca_10_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N192_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(11),
      ADR3 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => N293
    );
  a_chain_gen_14_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N111_0,
      ADR1 => gestore_shift_b_add_sub(14),
      ADR2 => N112_0,
      ADR3 => gestore_shift_rca_carry_14_Q,
      O => a_x_14_Q
    );
  a_chain_gen_14_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_DXMUX_8269,
      CE => VCC,
      CLK => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_CLKINV_8253,
      SET => GND,
      RST => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8274,
      O => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8274
    );
  a_chain_gen_22_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"B8E2"
    )
    port map (
      ADR0 => N135_0,
      ADR1 => gestore_shift_b_add_sub(22),
      ADR2 => N136_0,
      ADR3 => gestore_shift_rca_carry_22_Q,
      O => a_x_22_Q
    );
  a_chain_gen_22_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_DXMUX_8304,
      CE => VCC,
      CLK => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_CLKINV_8288,
      SET => GND,
      RST => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8309,
      O => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q
    );
  a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_2453,
      O => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_8309
    );
  a_chain_gen_29_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_30_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_29_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N156
    );
  a_chain_gen_10_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => a_chain_gen_10_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => en_a_0,
      ADR3 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      O => N100
    );
  m_q_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_9_DXMUX_8567,
      CE => m_q_9_CEINV_8554,
      CLK => m_q_9_CLKINV_8555,
      SET => GND,
      RST => m_q_9_SRINVNOT,
      O => m_q(9)
    );
  a_chain_gen_11_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_11_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      O => N103
    );
  gestore_shift_Mxor_b_add_sub_9_Result1 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => m_q(9),
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => gestore_shift_b_add_sub(9)
    );
  a_chain_gen_8_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => a_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => en_a_0,
      ADR3 => a_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      O => N94
    );
  a_chain_gen_17_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N120
    );
  gestore_shift_rca_rca_24_fa_c1_SW9 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N239,
      ADR1 => N266_0,
      ADR2 => N265,
      ADR3 => VCC,
      O => N305
    );
  prod1_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_1_DXMUX_8965,
      CE => prod1_q_1_CEINV_8952,
      CLK => prod1_q_1_CLKINV_8953,
      SET => GND,
      RST => prod1_q_1_SRINVNOT,
      O => prod1_q(1)
    );
  prod1_q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DYMUX_8984,
      CE => prod1_q_3_CEINV_8980,
      CLK => prod1_q_3_CLKINV_8981,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(2)
    );
  prod1_q_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_3_DXMUX_8993,
      CE => prod1_q_3_CEINV_8980,
      CLK => prod1_q_3_CLKINV_8981,
      SET => GND,
      RST => prod1_q_3_SRINVNOT,
      O => prod1_q(3)
    );
  prod1_q_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DYMUX_9012,
      CE => prod1_q_5_CEINV_9008,
      CLK => prod1_q_5_CLKINV_9009,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(4)
    );
  prod1_q_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_5_DXMUX_9021,
      CE => prod1_q_5_CEINV_9008,
      CLK => prod1_q_5_CLKINV_9009,
      SET => GND,
      RST => prod1_q_5_SRINVNOT,
      O => prod1_q(5)
    );
  prod1_q_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DYMUX_9040,
      CE => prod1_q_7_CEINV_9036,
      CLK => prod1_q_7_CLKINV_9037,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(6)
    );
  prod1_q_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => prod1_q_7_DXMUX_9049,
      CE => prod1_q_7_CEINV_9036,
      CLK => prod1_q_7_CLKINV_9037,
      SET => GND,
      RST => prod1_q_7_SRINVNOT,
      O => prod1_q(7)
    );
  m_q_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_3_DXMUX_8483,
      CE => m_q_3_CEINV_8470,
      CLK => m_q_3_CLKINV_8471,
      SET => GND,
      RST => m_q_3_SRINVNOT,
      O => m_q(3)
    );
  m_q_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_5_DYMUX_8502,
      CE => m_q_5_CEINV_8498,
      CLK => m_q_5_CLKINV_8499,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(4)
    );
  m_q_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_5_DXMUX_8511,
      CE => m_q_5_CEINV_8498,
      CLK => m_q_5_CLKINV_8499,
      SET => GND,
      RST => m_q_5_SRINVNOT,
      O => m_q(5)
    );
  m_q_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_7_DYMUX_8530,
      CE => m_q_7_CEINV_8526,
      CLK => m_q_7_CLKINV_8527,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(6)
    );
  m_q_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_7_DXMUX_8539,
      CE => m_q_7_CEINV_8526,
      CLK => m_q_7_CLKINV_8527,
      SET => GND,
      RST => m_q_7_SRINVNOT,
      O => m_q(7)
    );
  m_q_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_9_DYMUX_8558,
      CE => m_q_9_CEINV_8554,
      CLK => m_q_9_CLKINV_8555,
      SET => GND,
      RST => m_q_9_SRINVNOT,
      O => m_q(8)
    );
  gestore_shift_rca_rca_24_fa_c1_SW7 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => N239,
      ADR1 => N254_0,
      ADR2 => N253,
      ADR3 => VCC,
      O => N302
    );
  gestore_shift_rca_rca_16_fa_c1 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => N242,
      ADR1 => N241_0,
      ADR2 => gestore_shift_rca_carry_9_Q,
      ADR3 => VCC,
      O => gestore_shift_rca_carry_17_Q
    );
  a_chain_gen_21_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_22_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_21_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N132
    );
  a_chain_gen_12_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_12_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_13_sc_ch_inst_edge_triggered_q_0_Q,
      O => N106
    );
  cu_current_state_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DYMUX_8812,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_8809,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd1_2432
    );
  cu_current_state_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_state_FSM_FFd2_DXMUX_8820,
      CE => VCC,
      CLK => cu_current_state_FSM_FFd2_CLKINV_8809,
      SET => GND,
      RST => cu_current_state_FSM_FFd2_SRINVNOT,
      O => cu_current_state_FSM_FFd2_2567
    );
  a_chain_gen_25_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_26_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_25_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N144
    );
  a_chain_gen_16_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_17_sc_ch_inst_edge_triggered_q_0_Q,
      O => N118
    );
  operation_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => operation_counter_count(1),
      ADR1 => operation_counter_count(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result(1)
    );
  operation_counter_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DYMUX_9641,
      CE => operation_counter_count_0_CEINV_9629,
      CLK => operation_counter_count_0_CLKINV_9630,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(1)
    );
  operation_counter_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => operation_counter_count_0_DXMUX_9650,
      CE => operation_counter_count_0_CEINV_9629,
      CLK => operation_counter_count_0_CLKINV_9630,
      SET => GND,
      RST => operation_counter_count_0_SRINVNOT,
      O => operation_counter_count(0)
    );
  gestore_shift_rca_rca_22_fa_c1_SW5 : X_LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      ADR0 => N174_0,
      ADR1 => gestore_shift_b_add_sub(23),
      ADR2 => N139,
      ADR3 => N138_0,
      O => N284
    );
  gestore_shift_rca_rca_14_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"BE28"
    )
    port map (
      ADR0 => N186_0,
      ADR1 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => m_q(15),
      ADR3 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => N260
    );
  m_q_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_21_DYMUX_9152,
      CE => m_q_21_CEINV_9148,
      CLK => m_q_21_CLKINV_9149,
      SET => GND,
      RST => m_q_21_SRINVNOT,
      O => m_q(20)
    );
  m_q_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_21_DXMUX_9161,
      CE => m_q_21_CEINV_9148,
      CLK => m_q_21_CLKINV_9149,
      SET => GND,
      RST => m_q_21_SRINVNOT,
      O => m_q(21)
    );
  m_q_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_15_DYMUX_9180,
      CE => m_q_15_CEINV_9176,
      CLK => m_q_15_CLKINV_9177,
      SET => GND,
      RST => m_q_15_SRINVNOT,
      O => m_q(14)
    );
  m_q_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_15_DXMUX_9189,
      CE => m_q_15_CEINV_9176,
      CLK => m_q_15_CLKINV_9177,
      SET => GND,
      RST => m_q_15_SRINVNOT,
      O => m_q(15)
    );
  m_q_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_23_DYMUX_9208,
      CE => m_q_23_CEINV_9204,
      CLK => m_q_23_CLKINV_9205,
      SET => GND,
      RST => m_q_23_SRINVNOT,
      O => m_q(22)
    );
  m_q_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_23_DXMUX_9217,
      CE => m_q_23_CEINV_9204,
      CLK => m_q_23_CLKINV_9205,
      SET => GND,
      RST => m_q_23_SRINVNOT,
      O => m_q(23)
    );
  m_q_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_19_DYMUX_9320,
      CE => m_q_19_CEINV_9316,
      CLK => m_q_19_CLKINV_9317,
      SET => GND,
      RST => m_q_19_SRINVNOT,
      O => m_q(18)
    );
  m_q_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_19_DXMUX_9329,
      CE => m_q_19_CEINV_9316,
      CLK => m_q_19_CLKINV_9317,
      SET => GND,
      RST => m_q_19_SRINVNOT,
      O => m_q(19)
    );
  m_q_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_27_DYMUX_9348,
      CE => m_q_27_CEINV_9344,
      CLK => m_q_27_CLKINV_9345,
      SET => GND,
      RST => m_q_27_SRINVNOT,
      O => m_q(26)
    );
  m_q_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_27_DXMUX_9357,
      CE => m_q_27_CEINV_9344,
      CLK => m_q_27_CLKINV_9345,
      SET => GND,
      RST => m_q_27_SRINVNOT,
      O => m_q(27)
    );
  m_q_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_29_DYMUX_9376,
      CE => m_q_29_CEINV_9372,
      CLK => m_q_29_CLKINV_9373,
      SET => GND,
      RST => m_q_29_SRINVNOT,
      O => m_q(28)
    );
  m_q_29 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_29_DXMUX_9385,
      CE => m_q_29_CEINV_9372,
      CLK => m_q_29_CLKINV_9373,
      SET => GND,
      RST => m_q_29_SRINVNOT,
      O => m_q(29)
    );
  m_q_30 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_31_DYMUX_9236,
      CE => m_q_31_CEINV_9232,
      CLK => m_q_31_CLKINV_9233,
      SET => GND,
      RST => m_q_31_SRINVNOT,
      O => m_q(30)
    );
  m_q_31 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_31_DXMUX_9245,
      CE => m_q_31_CEINV_9232,
      CLK => m_q_31_CLKINV_9233,
      SET => GND,
      RST => m_q_31_SRINVNOT,
      O => m_q(31)
    );
  m_q_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_17_DYMUX_9264,
      CE => m_q_17_CEINV_9260,
      CLK => m_q_17_CLKINV_9261,
      SET => GND,
      RST => m_q_17_SRINVNOT,
      O => m_q(16)
    );
  m_q_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_17_DXMUX_9273,
      CE => m_q_17_CEINV_9260,
      CLK => m_q_17_CLKINV_9261,
      SET => GND,
      RST => m_q_17_SRINVNOT,
      O => m_q(17)
    );
  m_q_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_25_DYMUX_9292,
      CE => m_q_25_CEINV_9288,
      CLK => m_q_25_CLKINV_9289,
      SET => GND,
      RST => m_q_25_SRINVNOT,
      O => m_q(24)
    );
  m_q_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => m_q_25_DXMUX_9301,
      CE => m_q_25_CEINV_9288,
      CLK => m_q_25_CLKINV_9289,
      SET => GND,
      RST => m_q_25_SRINVNOT,
      O => m_q(25)
    );
  a_chain_gen_23_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => cu_current_state_FSM_FFd2_2567,
      ADR1 => a_chain_gen_24_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => a_chain_gen_23_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => VCC,
      O => N138
    );
  a_chain_gen_14_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_14_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      O => N112
    );
  a_chain_gen_15_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_15_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_16_sc_ch_inst_edge_triggered_q_0_Q,
      O => N115
    );
  gestore_shift_rca_rca_18_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N176_0,
      ADR1 => N177_0,
      ADR2 => N180_0,
      ADR3 => VCC,
      O => N221
    );
  gestore_shift_rca_rca_26_fa_c1_SW1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => N164_0,
      ADR1 => N165_0,
      ADR2 => N168_0,
      ADR3 => VCC,
      O => N215
    );
  a_chain_gen_18_sc_ch_inst_mux2_1_X_SW1 : X_LUT4
    generic map(
      INIT => X"ED21"
    )
    port map (
      ADR0 => en_a_0,
      ADR1 => cu_current_state_FSM_FFd2_2567,
      ADR2 => a_chain_gen_18_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => a_chain_gen_19_sc_ch_inst_edge_triggered_q_0_Q,
      O => N124
    );
  gestore_shift_rca_rca_26_fa_c1_SW3 : X_LUT4
    generic map(
      INIT => X"DE48"
    )
    port map (
      ADR0 => m_q(27),
      ADR1 => a_chain_gen_27_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => q_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR3 => N168_0,
      O => N236
    );
  en_i_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_current_state_FSM_FFd1_2432,
      O => en_i_O
    );
  product_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(0),
      O => product_0_O
    );
  product_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(1),
      O => product_1_O
    );
  product_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(2),
      O => product_2_O
    );
  product_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(3),
      O => product_3_O
    );
  product_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(4),
      O => product_4_O
    );
  product_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(5),
      O => product_5_O
    );
  product_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(6),
      O => product_6_O
    );
  product_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(7),
      O => product_7_O
    );
  product_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(8),
      O => product_8_O
    );
  product_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(9),
      O => product_9_O
    );
  fin_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => f_q(0),
      O => fin_0_O
    );
  product_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(10),
      O => product_10_O
    );
  product_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(11),
      O => product_11_O
    );
  product_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(20),
      O => product_20_O
    );
  product_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(12),
      O => product_12_O
    );
  product_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(21),
      O => product_21_O
    );
  product_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(13),
      O => product_13_O
    );
  product_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(30),
      O => product_30_O
    );
  product_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(22),
      O => product_22_O
    );
  product_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(14),
      O => product_14_O
    );
  product_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(31),
      O => product_31_O
    );
  product_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(23),
      O => product_23_O
    );
  product_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(15),
      O => product_15_O
    );
  product_40_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(40),
      O => product_40_O
    );
  product_32_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(32),
      O => product_32_O
    );
  product_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(24),
      O => product_24_O
    );
  product_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(16),
      O => product_16_O
    );
  product_41_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(41),
      O => product_41_O
    );
  product_33_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(33),
      O => product_33_O
    );
  product_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(25),
      O => product_25_O
    );
  product_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(17),
      O => product_17_O
    );
  product_50_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(50),
      O => product_50_O
    );
  product_42_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(42),
      O => product_42_O
    );
  product_34_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(34),
      O => product_34_O
    );
  product_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(26),
      O => product_26_O
    );
  product_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(18),
      O => product_18_O
    );
  product_51_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(51),
      O => product_51_O
    );
  product_43_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(43),
      O => product_43_O
    );
  product_35_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(35),
      O => product_35_O
    );
  product_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(27),
      O => product_27_O
    );
  product_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(19),
      O => product_19_O
    );
  product_60_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(60),
      O => product_60_O
    );
  product_52_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(52),
      O => product_52_O
    );
  product_44_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(44),
      O => product_44_O
    );
  product_36_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(36),
      O => product_36_O
    );
  product_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(28),
      O => product_28_O
    );
  product_61_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(61),
      O => product_61_O
    );
  product_53_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(53),
      O => product_53_O
    );
  product_45_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(45),
      O => product_45_O
    );
  product_37_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(37),
      O => product_37_O
    );
  product_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(29),
      O => product_29_O
    );
  product_62_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(62),
      O => product_62_O
    );
  product_54_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(54),
      O => product_54_O
    );
  product_46_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(46),
      O => product_46_O
    );
  product_38_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(38),
      O => product_38_O
    );
  product_63_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(63),
      O => product_63_O
    );
  product_55_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(55),
      O => product_55_O
    );
  product_47_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(47),
      O => product_47_O
    );
  product_39_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(39),
      O => product_39_O
    );
  product_56_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(56),
      O => product_56_O
    );
  product_48_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(48),
      O => product_48_O
    );
  product_57_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(57),
      O => product_57_O
    );
  product_49_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(49),
      O => product_49_O
    );
  product_58_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(58),
      O => product_58_O
    );
  product_59_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => prod1_q(59),
      O => product_59_O
    );
  NlwBlock_Booth_multiplier_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Booth_multiplier_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

