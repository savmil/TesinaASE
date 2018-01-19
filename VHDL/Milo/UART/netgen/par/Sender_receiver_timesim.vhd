--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Sender_receiver_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 18 18:36:52 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Sender_receiver.pcf -rpw 100 -tpw 0 -ar Structure -tm Sender_receiver -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Sender_receiver.ncd Sender_receiver_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Sender_receiver.ncd
-- Output file	: /media/sf_ASE/VHDL/Milo/UART/netgen/par/Sender_receiver_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Sender_receiver
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

entity Sender_receiver is
  port (
    clk : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    data_t : out STD_LOGIC; 
    received : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    data : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Sender_receiver;

architecture Structure of Sender_receiver is
  signal data_0_IBUF_453 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal data_1_IBUF_455 : STD_LOGIC; 
  signal data_2_IBUF_457 : STD_LOGIC; 
  signal data_3_IBUF_458 : STD_LOGIC; 
  signal data_4_IBUF_459 : STD_LOGIC; 
  signal data_5_IBUF_460 : STD_LOGIC; 
  signal data_6_IBUF_461 : STD_LOGIC; 
  signal data_7_IBUF_462 : STD_LOGIC; 
  signal output_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal start_IBUF_470 : STD_LOGIC; 
  signal output_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal reset_IBUF_472 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal en_i : STD_LOGIC; 
  signal en_sh : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_479 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_480 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd2_481 : STD_LOGIC; 
  signal counter_s_hit_482 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_483 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_In_SW0_O : STD_LOGIC; 
  signal number_of_bit_r_hit_485 : STD_LOGIC; 
  signal counter_r_hit_486 : STD_LOGIC; 
  signal number_of_bit_t_hit_487 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_In_SW0_O : STD_LOGIC; 
  signal counter_t_hit_489 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_491 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_In_SW1_O : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_In_SW0_O : STD_LOGIC; 
  signal en_c_0 : STD_LOGIC; 
  signal en_b_t_0 : STD_LOGIC; 
  signal en_s_0 : STD_LOGIC; 
  signal en_r_0 : STD_LOGIC; 
  signal en_b_r_0 : STD_LOGIC; 
  signal input_chain_gen_10_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal receive_data_out_521 : STD_LOGIC; 
  signal input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal data_0_INBUF : STD_LOGIC; 
  signal data_t_O : STD_LOGIC; 
  signal data_1_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal data_2_INBUF : STD_LOGIC; 
  signal data_3_INBUF : STD_LOGIC; 
  signal data_4_INBUF : STD_LOGIC; 
  signal data_5_INBUF : STD_LOGIC; 
  signal data_6_INBUF : STD_LOGIC; 
  signal data_7_INBUF : STD_LOGIC; 
  signal received_0_O : STD_LOGIC; 
  signal received_1_O : STD_LOGIC; 
  signal received_2_O : STD_LOGIC; 
  signal received_3_O : STD_LOGIC; 
  signal received_4_O : STD_LOGIC; 
  signal received_5_O : STD_LOGIC; 
  signal received_6_O : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal received_7_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_705 : STD_LOGIC; 
  signal en_i_pack_2 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_687 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_DXMUX_740 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_In_737 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_In_SW0_O_pack_2 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_CLKINV_722 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_DXMUX_775 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_In_772 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_In_SW0_O_pack_1 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_CLKINV_757 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_DXMUX_810 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_In_807 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_In_SW1_O_pack_2 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_CLKINV_793 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_DXMUX_845 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_In_842 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_In_SW0_O_pack_2 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_CLKINV_827 : STD_LOGIC; 
  signal en_c : STD_LOGIC; 
  signal en_sh_pack_1 : STD_LOGIC; 
  signal number_of_bit_t_count_2_DXMUX_914 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal number_of_bit_t_count_2_DYMUX_898 : STD_LOGIC; 
  signal number_of_bit_t_hit_cmp_eq0000 : STD_LOGIC; 
  signal number_of_bit_t_count_2_SRINVNOT : STD_LOGIC; 
  signal number_of_bit_t_count_2_CLKINV_888 : STD_LOGIC; 
  signal number_of_bit_t_count_2_CEINV_887 : STD_LOGIC; 
  signal counter_s_count_2_DXMUX_960 : STD_LOGIC; 
  signal counter_s_count_2_DYMUX_944 : STD_LOGIC; 
  signal counter_s_hit_cmp_eq0000 : STD_LOGIC; 
  signal counter_s_count_2_SRINVNOT : STD_LOGIC; 
  signal counter_s_count_2_CLKINV_934 : STD_LOGIC; 
  signal counter_s_count_2_CEINV_933 : STD_LOGIC; 
  signal counter_t_hit_DYMUX_986 : STD_LOGIC; 
  signal counter_t_hit_cmp_eq0000 : STD_LOGIC; 
  signal counter_t_hit_CLKINV_977 : STD_LOGIC; 
  signal counter_t_hit_CEINV_976 : STD_LOGIC; 
  signal counter_r_count_3_DXMUX_1032 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal counter_r_count_3_DYMUX_1017 : STD_LOGIC; 
  signal Result_2_4 : STD_LOGIC; 
  signal counter_r_count_3_SRINVNOT : STD_LOGIC; 
  signal counter_r_count_3_CLKINV_1007 : STD_LOGIC; 
  signal counter_r_count_3_CEINV_1006 : STD_LOGIC; 
  signal counter_t_count_3_DXMUX_1078 : STD_LOGIC; 
  signal counter_t_count_3_DYMUX_1063 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal counter_t_count_3_SRINVNOT : STD_LOGIC; 
  signal counter_t_count_3_CLKINV_1053 : STD_LOGIC; 
  signal counter_t_count_3_CEINV_1052 : STD_LOGIC; 
  signal en_s : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1106 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1097 : STD_LOGIC; 
  signal number_of_bit_r_hit_DXMUX_1159 : STD_LOGIC; 
  signal number_of_bit_r_hit_cmp_eq0000 : STD_LOGIC; 
  signal number_of_bit_r_hit_DYMUX_1143 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal number_of_bit_r_hit_SRINVNOT : STD_LOGIC; 
  signal number_of_bit_r_hit_CLKINV_1133 : STD_LOGIC; 
  signal number_of_bit_r_hit_CEINV_1132 : STD_LOGIC; 
  signal en_b_t : STD_LOGIC; 
  signal input_chain_gen_10_sc_in_inst_edge_triggered_q_0_DYMUX_1188 : STD_LOGIC; 
  signal input_chain_gen_10_sc_in_inst_mux2_1_X_and0001 : STD_LOGIC; 
  signal input_chain_gen_10_sc_in_inst_edge_triggered_q_0_CLKINV_1179 : STD_LOGIC; 
  signal en_b_r : STD_LOGIC; 
  signal receive_current_state_FSM_FFd2_DYMUX_1221 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal receive_current_state_FSM_FFd2_CLKINV_1212 : STD_LOGIC; 
  signal counter_r_hit_DYMUX_1255 : STD_LOGIC; 
  signal counter_r_hit_cmp_eq0000 : STD_LOGIC; 
  signal counter_r_hit_CLKINV_1246 : STD_LOGIC; 
  signal counter_r_hit_CEINV_1245 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_1303 : STD_LOGIC; 
  signal N27_pack_3 : STD_LOGIC; 
  signal input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_1287 : STD_LOGIC; 
  signal output_chain_gen_7_sc_in_inst_edge_triggered_q_0_DYMUX_1319 : STD_LOGIC; 
  signal output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_1316 : STD_LOGIC; 
  signal output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CEINV_1315 : STD_LOGIC; 
  signal input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_1355 : STD_LOGIC; 
  signal N25_pack_3 : STD_LOGIC; 
  signal input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_1339 : STD_LOGIC; 
  signal en_r : STD_LOGIC; 
  signal output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DYMUX_1383 : STD_LOGIC; 
  signal output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1380 : STD_LOGIC; 
  signal output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CEINV_1379 : STD_LOGIC; 
  signal output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DYMUX_1400 : STD_LOGIC; 
  signal output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1397 : STD_LOGIC; 
  signal output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CEINV_1396 : STD_LOGIC; 
  signal output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DYMUX_1417 : STD_LOGIC; 
  signal output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1414 : STD_LOGIC; 
  signal output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CEINV_1413 : STD_LOGIC; 
  signal input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_1453 : STD_LOGIC; 
  signal N23_pack_3 : STD_LOGIC; 
  signal input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_1437 : STD_LOGIC; 
  signal counter_r_count_0_DXMUX_1489 : STD_LOGIC; 
  signal counter_r_count_0_DYMUX_1480 : STD_LOGIC; 
  signal Result_1_4 : STD_LOGIC; 
  signal counter_r_count_0_SRINVNOT : STD_LOGIC; 
  signal counter_r_count_0_CLKINV_1469 : STD_LOGIC; 
  signal counter_r_count_0_CEINV_1468 : STD_LOGIC; 
  signal counter_t_count_0_DXMUX_1526 : STD_LOGIC; 
  signal counter_t_count_0_DYMUX_1517 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal counter_t_count_0_SRINVNOT : STD_LOGIC; 
  signal counter_t_count_0_CLKINV_1506 : STD_LOGIC; 
  signal counter_t_count_0_CEINV_1505 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1562 : STD_LOGIC; 
  signal N37_pack_3 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1546 : STD_LOGIC; 
  signal output_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1578 : STD_LOGIC; 
  signal output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1575 : STD_LOGIC; 
  signal output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CEINV_1574 : STD_LOGIC; 
  signal number_of_bit_r_count_0_DXMUX_1615 : STD_LOGIC; 
  signal number_of_bit_r_count_0_DYMUX_1606 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal number_of_bit_r_count_0_SRINVNOT : STD_LOGIC; 
  signal number_of_bit_r_count_0_CLKINV_1595 : STD_LOGIC; 
  signal number_of_bit_r_count_0_CEINV_1594 : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1651 : STD_LOGIC; 
  signal N35_pack_3 : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1635 : STD_LOGIC; 
  signal number_of_bit_t_count_0_DXMUX_1687 : STD_LOGIC; 
  signal number_of_bit_t_count_0_DYMUX_1678 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal number_of_bit_t_count_0_SRINVNOT : STD_LOGIC; 
  signal number_of_bit_t_count_0_CLKINV_1667 : STD_LOGIC; 
  signal number_of_bit_t_count_0_CEINV_1666 : STD_LOGIC; 
  signal receive_data_out_DYMUX_1700 : STD_LOGIC; 
  signal receive_data_out_CLKINVNOT : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1732 : STD_LOGIC; 
  signal N33_pack_3 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1716 : STD_LOGIC; 
  signal end_trasmission_q_0_DYMUX_1748 : STD_LOGIC; 
  signal end_trasmission_q_0_CLKINV_1745 : STD_LOGIC; 
  signal end_trasmission_q_0_CEINV_1744 : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1784 : STD_LOGIC; 
  signal N31_pack_3 : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1768 : STD_LOGIC; 
  signal output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1800 : STD_LOGIC; 
  signal output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1797 : STD_LOGIC; 
  signal output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CEINV_1796 : STD_LOGIC; 
  signal output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_1817 : STD_LOGIC; 
  signal output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1814 : STD_LOGIC; 
  signal output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CEINV_1813 : STD_LOGIC; 
  signal output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_1834 : STD_LOGIC; 
  signal output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1831 : STD_LOGIC; 
  signal output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CEINV_1830 : STD_LOGIC; 
  signal counter_s_count_0_DXMUX_1871 : STD_LOGIC; 
  signal counter_s_count_0_DYMUX_1862 : STD_LOGIC; 
  signal counter_s_count_0_SRINVNOT : STD_LOGIC; 
  signal counter_s_count_0_CLKINV_1851 : STD_LOGIC; 
  signal counter_s_count_0_CEINV_1850 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1907 : STD_LOGIC; 
  signal N29_pack_3 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1891 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd3_FFX_RSTAND_850 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_710 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd1_FFX_RSTAND_745 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd1_FFX_RSTAND_780 : STD_LOGIC; 
  signal trans_current_state_FSM_FFd2_FFX_RSTAND_815 : STD_LOGIC; 
  signal counter_t_hit_FFY_RSTAND_992 : STD_LOGIC; 
  signal output_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1325 : STD_LOGIC; 
  signal input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1360 : STD_LOGIC; 
  signal output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1389 : STD_LOGIC; 
  signal output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1406 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1111 : STD_LOGIC; 
  signal input_chain_gen_10_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1193 : STD_LOGIC; 
  signal output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1423 : STD_LOGIC; 
  signal input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1458 : STD_LOGIC; 
  signal receive_current_state_FSM_FFd2_FFY_RSTAND_1226 : STD_LOGIC; 
  signal counter_r_hit_FFY_RSTAND_1261 : STD_LOGIC; 
  signal input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1308 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1567 : STD_LOGIC; 
  signal output_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1584 : STD_LOGIC; 
  signal end_trasmission_q_0_FFY_RSTAND_1754 : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1789 : STD_LOGIC; 
  signal output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1806 : STD_LOGIC; 
  signal output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1823 : STD_LOGIC; 
  signal output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1840 : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1656 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1737 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1912 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_receive_data_out_CLK : STD_LOGIC; 
  signal end_trasmission_q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal number_of_bit_t_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal counter_s_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal counter_t_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_r_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal number_of_bit_r_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal input_x : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  data_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(0),
      O => data_0_INBUF
    );
  data_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_0_INBUF,
      O => data_0_IBUF_453
    );
  data_t_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => data_t_O,
      O => data_t
    );
  data_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(1),
      O => data_1_INBUF
    );
  data_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_1_INBUF,
      O => data_1_IBUF_455
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(2),
      O => data_2_INBUF
    );
  data_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_2_INBUF,
      O => data_2_IBUF_457
    );
  data_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(3),
      O => data_3_INBUF
    );
  data_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_3_INBUF,
      O => data_3_IBUF_458
    );
  data_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(4),
      O => data_4_INBUF
    );
  data_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_4_INBUF,
      O => data_4_IBUF_459
    );
  data_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(5),
      O => data_5_INBUF
    );
  data_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_5_INBUF,
      O => data_5_IBUF_460
    );
  data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(6),
      O => data_6_INBUF
    );
  data_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_6_INBUF,
      O => data_6_IBUF_461
    );
  data_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(7),
      O => data_7_INBUF
    );
  data_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_7_INBUF,
      O => data_7_IBUF_462
    );
  received_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => received_0_O,
      O => received(0)
    );
  received_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => received_1_O,
      O => received(1)
    );
  received_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => received_2_O,
      O => received(2)
    );
  received_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => received_3_O,
      O => received(3)
    );
  received_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => received_4_O,
      O => received(4)
    );
  received_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => received_5_O,
      O => received(5)
    );
  received_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => received_6_O,
      O => received(6)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "IPAD57",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD57",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_470
    );
  received_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => received_7_O,
      O => received(7)
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
      O => reset_IBUF_472
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(1),
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_705
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_i_pack_2,
      O => en_i
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_687
    );
  trans_current_state_FSM_Out51 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => trans_current_state_FSM_FFd2_479,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => VCC,
      O => en_i_pack_2
    );
  receive_current_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => receive_current_state_FSM_FFd1_In_737,
      O => receive_current_state_FSM_FFd1_DXMUX_740
    );
  receive_current_state_FSM_FFd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => receive_current_state_FSM_FFd1_In_SW0_O_pack_2,
      O => receive_current_state_FSM_FFd1_In_SW0_O
    );
  receive_current_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => receive_current_state_FSM_FFd1_CLKINV_722
    );
  receive_current_state_FSM_FFd1_In_SW0 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => number_of_bit_r_hit_485,
      ADR1 => counter_r_hit_486,
      ADR2 => VCC,
      ADR3 => VCC,
      O => receive_current_state_FSM_FFd1_In_SW0_O_pack_2
    );
  trans_current_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd1_In_772,
      O => trans_current_state_FSM_FFd1_DXMUX_775
    );
  trans_current_state_FSM_FFd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd1_In_SW0_O_pack_1,
      O => trans_current_state_FSM_FFd1_In_SW0_O
    );
  trans_current_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => trans_current_state_FSM_FFd1_CLKINV_757
    );
  trans_current_state_FSM_FFd1_In_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => end_trasmission_q(0),
      ADR2 => counter_t_hit_489,
      ADR3 => VCC,
      O => trans_current_state_FSM_FFd1_In_SW0_O_pack_1
    );
  trans_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd2_In_807,
      O => trans_current_state_FSM_FFd2_DXMUX_810
    );
  trans_current_state_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd2_In_SW1_O_pack_2,
      O => trans_current_state_FSM_FFd2_In_SW1_O
    );
  trans_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => trans_current_state_FSM_FFd2_CLKINV_793
    );
  trans_current_state_FSM_FFd2_In_SW1 : X_LUT4
    generic map(
      INIT => X"A8A8",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => counter_t_hit_489,
      ADR1 => number_of_bit_t_hit_487,
      ADR2 => end_trasmission_q(0),
      ADR3 => VCC,
      O => trans_current_state_FSM_FFd2_In_SW1_O_pack_2
    );
  trans_current_state_FSM_FFd3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd3_In_842,
      O => trans_current_state_FSM_FFd3_DXMUX_845
    );
  trans_current_state_FSM_FFd3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd3_In_SW0_O_pack_2,
      O => trans_current_state_FSM_FFd3_In_SW0_O
    );
  trans_current_state_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => trans_current_state_FSM_FFd3_CLKINV_827
    );
  trans_current_state_FSM_FFd3_In_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => start_IBUF_470,
      ADR1 => VCC,
      ADR2 => trans_current_state_FSM_FFd1_491,
      ADR3 => VCC,
      O => trans_current_state_FSM_FFd3_In_SW0_O_pack_2
    );
  en_c_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c,
      O => en_c_0
    );
  en_c_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_sh_pack_1,
      O => en_sh
    );
  trans_current_state_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => trans_current_state_FSM_FFd1_491,
      ADR2 => VCC,
      ADR3 => trans_current_state_FSM_FFd3_480,
      O => en_sh_pack_1
    );
  number_of_bit_t_count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_2_1,
      O => number_of_bit_t_count_2_DXMUX_914
    );
  number_of_bit_t_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => number_of_bit_t_hit_cmp_eq0000,
      O => number_of_bit_t_count_2_DYMUX_898
    );
  number_of_bit_t_count_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => number_of_bit_t_count_2_SRINVNOT
    );
  number_of_bit_t_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => number_of_bit_t_count_2_CLKINV_888
    );
  number_of_bit_t_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_t_0,
      O => number_of_bit_t_count_2_CEINV_887
    );
  number_of_bit_t_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8080",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => number_of_bit_t_count(2),
      ADR1 => number_of_bit_t_count(1),
      ADR2 => number_of_bit_t_count(0),
      ADR3 => VCC,
      O => number_of_bit_t_hit_cmp_eq0000
    );
  counter_s_count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => counter_s_count_2_DXMUX_960
    );
  counter_s_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_s_hit_cmp_eq0000,
      O => counter_s_count_2_DYMUX_944
    );
  counter_s_count_2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_s_count_2_SRINVNOT
    );
  counter_s_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_s_count_2_CLKINV_934
    );
  counter_s_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_s_0,
      O => counter_s_count_2_CEINV_933
    );
  counter_s_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => counter_s_count(2),
      ADR1 => counter_s_count(0),
      ADR2 => VCC,
      ADR3 => counter_s_count(1),
      O => counter_s_hit_cmp_eq0000
    );
  counter_t_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_t_hit_cmp_eq0000,
      O => counter_t_hit_DYMUX_986
    );
  counter_t_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_t_hit_CLKINV_977
    );
  counter_t_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => counter_t_hit_CEINV_976
    );
  counter_r_count_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_3_1,
      O => counter_r_count_3_DXMUX_1032
    );
  counter_r_count_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_2_4,
      O => counter_r_count_3_DYMUX_1017
    );
  counter_r_count_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_r_count_3_SRINVNOT
    );
  counter_r_count_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_r_count_3_CLKINV_1007
    );
  counter_r_count_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => counter_r_count_3_CEINV_1006
    );
  counter_r_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => counter_r_count(1),
      ADR1 => counter_r_count(2),
      ADR2 => counter_r_count(0),
      ADR3 => VCC,
      O => Result_2_4
    );
  counter_t_count_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(3),
      O => counter_t_count_3_DXMUX_1078
    );
  counter_t_count_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_2_2,
      O => counter_t_count_3_DYMUX_1063
    );
  counter_t_count_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_t_count_3_SRINVNOT
    );
  counter_t_count_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_t_count_3_CLKINV_1053
    );
  counter_t_count_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => counter_t_count_3_CEINV_1052
    );
  counter_t_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5FA0",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => counter_t_count(1),
      ADR1 => VCC,
      ADR2 => counter_t_count(0),
      ADR3 => counter_t_count(2),
      O => Result_2_2
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_s,
      O => en_s_0
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(0),
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1106
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1097
    );
  input_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"FB0B",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => en_i,
      ADR2 => en_sh,
      ADR3 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(0)
    );
  number_of_bit_r_hit_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => number_of_bit_r_hit_cmp_eq0000,
      O => number_of_bit_r_hit_DXMUX_1159
    );
  number_of_bit_r_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_2_3,
      O => number_of_bit_r_hit_DYMUX_1143
    );
  number_of_bit_r_hit_SRINV : X_INV
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => number_of_bit_r_hit_SRINVNOT
    );
  number_of_bit_r_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => number_of_bit_r_hit_CLKINV_1133
    );
  number_of_bit_r_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => number_of_bit_r_hit_CEINV_1132
    );
  number_of_bit_r_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"7788",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => number_of_bit_r_count(0),
      ADR1 => number_of_bit_r_count(1),
      ADR2 => VCC,
      ADR3 => number_of_bit_r_count(2),
      O => Result_2_3
    );
  input_chain_gen_10_sc_in_inst_edge_triggered_q_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_t,
      O => en_b_t_0
    );
  input_chain_gen_10_sc_in_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_chain_gen_10_sc_in_inst_mux2_1_X_and0001,
      O => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_DYMUX_1188
    );
  input_chain_gen_10_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_CLKINV_1179
    );
  input_chain_gen_10_sc_in_inst_mux2_1_X_and00011 : X_LUT4
    generic map(
      INIT => X"0051",
      LOC => "SLICE_X13Y13"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd3_480,
      ADR1 => trans_current_state_FSM_FFd2_479,
      ADR2 => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_Q,
      ADR3 => trans_current_state_FSM_FFd1_491,
      O => input_chain_gen_10_sc_in_inst_mux2_1_X_and0001
    );
  receive_current_state_FSM_FFd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r,
      O => en_b_r_0
    );
  receive_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => receive_current_state_FSM_FFd2_In,
      O => receive_current_state_FSM_FFd2_DYMUX_1221
    );
  receive_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => receive_current_state_FSM_FFd2_CLKINV_1212
    );
  receive_current_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"7A7F",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => receive_current_state_FSM_FFd1_483,
      ADR1 => counter_r_hit_486,
      ADR2 => receive_current_state_FSM_FFd2_481,
      ADR3 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => receive_current_state_FSM_FFd2_In
    );
  counter_r_hit_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_r_hit_cmp_eq0000,
      O => counter_r_hit_DYMUX_1255
    );
  counter_r_hit_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_r_hit_CLKINV_1246
    );
  counter_r_hit_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => counter_r_hit_CEINV_1245
    );
  N21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => N21,
      O => N21_0
    );
  trans_current_state_FSM_FFd3_In_SW1 : X_LUT4
    generic map(
      INIT => X"FCFF",
      LOC => "SLICE_X12Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => end_trasmission_q(0),
      ADR2 => number_of_bit_t_hit_487,
      ADR3 => counter_t_hit_489,
      O => N21
    );
  input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(7),
      O => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_1303
    );
  input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => N27_pack_3,
      O => N27
    );
  input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_1287
    );
  input_chain_gen_7_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01EF",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => data_5_IBUF_460,
      ADR3 => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => N27_pack_3
    );
  output_chain_gen_7_sc_in_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => receive_data_out_521,
      O => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_DYMUX_1319
    );
  output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_1316
    );
  output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CEINV_1315
    );
  input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(8),
      O => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_1355
    );
  input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => N25_pack_3,
      O => N25
    );
  input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_1339
    );
  input_chain_gen_8_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01FB",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => data_6_IBUF_461,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      O => N25_pack_3
    );
  en_r_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r,
      O => en_r_0
    );
  receive_current_state_FSM_Out31 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X16Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => receive_current_state_FSM_FFd1_483,
      ADR3 => receive_current_state_FSM_FFd2_481,
      O => en_r
    );
  output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DYMUX_1383
    );
  output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1380
    );
  output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CEINV_1379
    );
  output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DYMUX_1400
    );
  output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1397
    );
  output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CEINV_1396
    );
  output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DYMUX_1417
    );
  output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1414
    );
  output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CEINV_1413
    );
  input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(9),
      O => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_1453
    );
  input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N23_pack_3,
      O => N23
    );
  input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_1437
    );
  input_chain_gen_9_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"3237",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => data_7_IBUF_462,
      O => N23_pack_3
    );
  counter_r_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_r_count(0),
      O => counter_r_count_0_DXMUX_1489
    );
  counter_r_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_1_4,
      O => counter_r_count_0_DYMUX_1480
    );
  counter_r_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_r_count_0_SRINVNOT
    );
  counter_r_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_r_count_0_CLKINV_1469
    );
  counter_r_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_r_0,
      O => counter_r_count_0_CEINV_1468
    );
  counter_t_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_t_count(0),
      O => counter_t_count_0_DXMUX_1526
    );
  counter_t_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_1_2,
      O => counter_t_count_0_DYMUX_1517
    );
  counter_t_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_t_count_0_SRINVNOT
    );
  counter_t_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_t_count_0_CLKINV_1506
    );
  counter_t_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => counter_t_count_0_CEINV_1505
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(2),
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1562
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => N37_pack_3,
      O => N37
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1546
    );
  input_chain_gen_2_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01FD",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => data_0_IBUF_453,
      ADR1 => trans_current_state_FSM_FFd2_479,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => N37_pack_3
    );
  output_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1578
    );
  output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1575
    );
  output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CEINV_1574
    );
  number_of_bit_r_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => number_of_bit_r_count(0),
      O => number_of_bit_r_count_0_DXMUX_1615
    );
  number_of_bit_r_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_1_3,
      O => number_of_bit_r_count_0_DYMUX_1606
    );
  number_of_bit_r_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => number_of_bit_r_count_0_SRINVNOT
    );
  number_of_bit_r_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => number_of_bit_r_count_0_CLKINV_1595
    );
  number_of_bit_r_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => number_of_bit_r_count_0_CEINV_1594
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(3),
      O => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1651
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => N35_pack_3,
      O => N35
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1635
    );
  input_chain_gen_3_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01FD",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => data_1_IBUF_455,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd2_479,
      ADR3 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => N35_pack_3
    );
  number_of_bit_t_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => number_of_bit_t_count(0),
      O => number_of_bit_t_count_0_DXMUX_1687
    );
  number_of_bit_t_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result_1_1,
      O => number_of_bit_t_count_0_DYMUX_1678
    );
  number_of_bit_t_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => number_of_bit_t_count_0_SRINVNOT
    );
  number_of_bit_t_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => number_of_bit_t_count_0_CLKINV_1667
    );
  number_of_bit_t_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_t_0,
      O => number_of_bit_t_count_0_CEINV_1666
    );
  receive_data_out_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => receive_data_out_DYMUX_1700
    );
  receive_data_out_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => receive_data_out_CLKINVNOT
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(4),
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1732
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N33_pack_3,
      O => N33
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1716
    );
  input_chain_gen_4_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01FD",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => data_2_IBUF_457,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd2_479,
      ADR3 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => N33_pack_3
    );
  end_trasmission_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd1_491,
      O => end_trasmission_q_0_DYMUX_1748
    );
  end_trasmission_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => end_trasmission_q_0_CLKINV_1745
    );
  end_trasmission_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => trans_current_state_FSM_FFd1_491,
      O => end_trasmission_q_0_CEINV_1744
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(5),
      O => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1784
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N31_pack_3,
      O => N31
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1768
    );
  input_chain_gen_5_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"01FB",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => data_3_IBUF_458,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => N31_pack_3
    );
  output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1800
    );
  output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1797
    );
  output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CEINV_1796
    );
  output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_1817
    );
  output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1814
    );
  output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CEINV_1813
    );
  output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_1834
    );
  output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1831
    );
  output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_b_r_0,
      O => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CEINV_1830
    );
  counter_s_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_s_count(0),
      O => counter_s_count_0_DXMUX_1871
    );
  counter_s_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => counter_s_count_0_DYMUX_1862
    );
  counter_s_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_s_count_0_SRINVNOT
    );
  counter_s_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_s_count_0_CLKINV_1851
    );
  counter_s_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_s_0,
      O => counter_s_count_0_CEINV_1850
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(6),
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1907
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => N29_pack_3,
      O => N29
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1891
    );
  input_chain_gen_6_sc_ch_inst_mux2_1_X_SW0 : X_LUT4
    generic map(
      INIT => X"5547",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => data_4_IBUF_459,
      ADR3 => trans_current_state_FSM_FFd2_479,
      O => N29_pack_3
    );
  trans_current_state_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"1103",
      LOC => "SLICE_X12Y7"
    )
    port map (
      ADR0 => N21_0,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd3_In_SW0_O,
      ADR3 => trans_current_state_FSM_FFd2_479,
      O => trans_current_state_FSM_FFd3_In_842
    );
  trans_current_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      I => trans_current_state_FSM_FFd3_DXMUX_845,
      CE => VCC,
      CLK => trans_current_state_FSM_FFd3_CLKINV_827,
      SET => GND,
      RST => trans_current_state_FSM_FFd3_FFX_RSTAND_850,
      O => trans_current_state_FSM_FFd3_480
    );
  trans_current_state_FSM_FFd3_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => trans_current_state_FSM_FFd3_FFX_RSTAND_850
    );
  trans_en_c1 : X_LUT4
    generic map(
      INIT => X"FDF0",
      LOC => "SLICE_X13Y6"
    )
    port map (
      ADR0 => counter_t_hit_489,
      ADR1 => number_of_bit_t_hit_487,
      ADR2 => en_sh,
      ADR3 => trans_current_state_FSM_FFd2_479,
      O => en_c
    );
  number_of_bit_t_hit : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      I => number_of_bit_t_count_2_DYMUX_898,
      CE => number_of_bit_t_count_2_CEINV_887,
      CLK => number_of_bit_t_count_2_CLKINV_888,
      SET => GND,
      RST => number_of_bit_t_count_2_SRINVNOT,
      O => number_of_bit_t_hit_487
    );
  number_of_bit_t_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6A6A",
      LOC => "SLICE_X13Y12"
    )
    port map (
      ADR0 => number_of_bit_t_count(2),
      ADR1 => number_of_bit_t_count(1),
      ADR2 => number_of_bit_t_count(0),
      ADR3 => VCC,
      O => Result_2_1
    );
  number_of_bit_t_count_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y12",
      INIT => '0'
    )
    port map (
      I => number_of_bit_t_count_2_DXMUX_914,
      CE => number_of_bit_t_count_2_CEINV_887,
      CLK => number_of_bit_t_count_2_CLKINV_888,
      SET => GND,
      RST => number_of_bit_t_count_2_SRINVNOT,
      O => number_of_bit_t_count(2)
    );
  counter_s_hit : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => counter_s_count_2_DYMUX_944,
      CE => counter_s_count_2_CEINV_933,
      CLK => counter_s_count_2_CLKINV_934,
      SET => GND,
      RST => counter_s_count_2_SRINVNOT,
      O => counter_s_hit_482
    );
  input_chain_gen_1_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"CCA0",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_i,
      ADR3 => en_sh,
      O => input_x(1)
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_705,
      CE => VCC,
      CLK => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_687,
      SET => GND,
      RST => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_710,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_710
    );
  receive_current_state_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"5F88",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => receive_current_state_FSM_FFd2_481,
      ADR1 => counter_s_hit_482,
      ADR2 => receive_current_state_FSM_FFd1_In_SW0_O,
      ADR3 => receive_current_state_FSM_FFd1_483,
      O => receive_current_state_FSM_FFd1_In_737
    );
  receive_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      I => receive_current_state_FSM_FFd1_DXMUX_740,
      CE => VCC,
      CLK => receive_current_state_FSM_FFd1_CLKINV_722,
      SET => GND,
      RST => receive_current_state_FSM_FFd1_FFX_RSTAND_745,
      O => receive_current_state_FSM_FFd1_483
    );
  receive_current_state_FSM_FFd1_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => receive_current_state_FSM_FFd1_FFX_RSTAND_745
    );
  trans_current_state_FSM_FFd1_In : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X14Y9"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd1_In_SW0_O,
      ADR3 => number_of_bit_t_hit_487,
      O => trans_current_state_FSM_FFd1_In_772
    );
  trans_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      I => trans_current_state_FSM_FFd1_DXMUX_775,
      CE => VCC,
      CLK => trans_current_state_FSM_FFd1_CLKINV_757,
      SET => GND,
      RST => trans_current_state_FSM_FFd1_FFX_RSTAND_780,
      O => trans_current_state_FSM_FFd1_491
    );
  trans_current_state_FSM_FFd1_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => trans_current_state_FSM_FFd1_FFX_RSTAND_780
    );
  trans_current_state_FSM_FFd2_In : X_LUT4
    generic map(
      INIT => X"FFCE",
      LOC => "SLICE_X13Y8"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd2_479,
      ADR1 => trans_current_state_FSM_FFd1_491,
      ADR2 => trans_current_state_FSM_FFd2_In_SW1_O,
      ADR3 => trans_current_state_FSM_FFd3_480,
      O => trans_current_state_FSM_FFd2_In_807
    );
  trans_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      I => trans_current_state_FSM_FFd2_DXMUX_810,
      CE => VCC,
      CLK => trans_current_state_FSM_FFd2_CLKINV_793,
      SET => GND,
      RST => trans_current_state_FSM_FFd2_FFX_RSTAND_815,
      O => trans_current_state_FSM_FFd2_479
    );
  trans_current_state_FSM_FFd2_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => trans_current_state_FSM_FFd2_FFX_RSTAND_815
    );
  counter_s_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"66AA",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => counter_s_count(2),
      ADR1 => counter_s_count(0),
      ADR2 => VCC,
      ADR3 => counter_s_count(1),
      O => Result(2)
    );
  counter_s_count_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => counter_s_count_2_DXMUX_960,
      CE => counter_s_count_2_CEINV_933,
      CLK => counter_s_count_2_CLKINV_934,
      SET => GND,
      RST => counter_s_count_2_SRINVNOT,
      O => counter_s_count(2)
    );
  counter_t_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X12Y8"
    )
    port map (
      ADR0 => counter_t_count(2),
      ADR1 => counter_t_count(0),
      ADR2 => counter_t_count(3),
      ADR3 => counter_t_count(1),
      O => counter_t_hit_cmp_eq0000
    );
  counter_t_hit : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      I => counter_t_hit_DYMUX_986,
      CE => counter_t_hit_CEINV_976,
      CLK => counter_t_hit_CLKINV_977,
      SET => GND,
      RST => counter_t_hit_FFY_RSTAND_992,
      O => counter_t_hit_489
    );
  counter_t_hit_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_t_hit_FFY_RSTAND_992
    );
  counter_r_count_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      I => counter_r_count_3_DYMUX_1017,
      CE => counter_r_count_3_CEINV_1006,
      CLK => counter_r_count_3_CLKINV_1007,
      SET => GND,
      RST => counter_r_count_3_SRINVNOT,
      O => counter_r_count(2)
    );
  counter_r_Mcount_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X18Y29"
    )
    port map (
      ADR0 => counter_r_count(1),
      ADR1 => counter_r_count(2),
      ADR2 => counter_r_count(0),
      ADR3 => counter_r_count(3),
      O => Result_3_1
    );
  counter_r_count_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      I => counter_r_count_3_DXMUX_1032,
      CE => counter_r_count_3_CEINV_1006,
      CLK => counter_r_count_3_CLKINV_1007,
      SET => GND,
      RST => counter_r_count_3_SRINVNOT,
      O => counter_r_count(3)
    );
  counter_t_count_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => counter_t_count_3_DYMUX_1063,
      CE => counter_t_count_3_CEINV_1052,
      CLK => counter_t_count_3_CLKINV_1053,
      SET => GND,
      RST => counter_t_count_3_SRINVNOT,
      O => counter_t_count(2)
    );
  output_chain_gen_7_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_DYMUX_1319,
      CE => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CEINV_1315,
      CLK => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_CLKINV_1316,
      SET => GND,
      RST => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1325,
      O => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1325
    );
  input_chain_gen_8_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"AA8B",
      LOC => "SLICE_X12Y11"
    )
    port map (
      ADR0 => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => trans_current_state_FSM_FFd1_491,
      ADR2 => N25,
      ADR3 => trans_current_state_FSM_FFd3_480,
      O => input_x(8)
    );
  input_chain_gen_8_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y11",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_DXMUX_1355,
      CE => VCC,
      CLK => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_CLKINV_1339,
      SET => GND,
      RST => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1360,
      O => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1360
    );
  output_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DYMUX_1383,
      CE => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CEINV_1379,
      CLK => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1380,
      SET => GND,
      RST => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1389,
      O => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1389
    );
  output_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DYMUX_1400,
      CE => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CEINV_1396,
      CLK => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1397,
      SET => GND,
      RST => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1406,
      O => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1406
    );
  counter_t_Mcount_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X13Y9"
    )
    port map (
      ADR0 => counter_t_count(1),
      ADR1 => counter_t_count(3),
      ADR2 => counter_t_count(0),
      ADR3 => counter_t_count(2),
      O => Result(3)
    );
  counter_t_count_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => counter_t_count_3_DXMUX_1078,
      CE => counter_t_count_3_CEINV_1052,
      CLK => counter_t_count_3_CLKINV_1053,
      SET => GND,
      RST => counter_t_count_3_SRINVNOT,
      O => counter_t_count(3)
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1106,
      CE => VCC,
      CLK => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1097,
      SET => GND,
      RST => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1111,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1111
    );
  receive_en_s1 : X_LUT4
    generic map(
      INIT => X"00BB",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => receive_current_state_FSM_FFd2_481,
      ADR1 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => VCC,
      ADR3 => receive_current_state_FSM_FFd1_483,
      O => en_s
    );
  number_of_bit_r_count_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => '0'
    )
    port map (
      I => number_of_bit_r_hit_DYMUX_1143,
      CE => number_of_bit_r_hit_CEINV_1132,
      CLK => number_of_bit_r_hit_CLKINV_1133,
      SET => GND,
      RST => number_of_bit_r_hit_SRINVNOT,
      O => number_of_bit_r_count(2)
    );
  number_of_bit_r_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8800",
      LOC => "SLICE_X14Y25"
    )
    port map (
      ADR0 => number_of_bit_r_count(0),
      ADR1 => number_of_bit_r_count(1),
      ADR2 => VCC,
      ADR3 => number_of_bit_r_count(2),
      O => number_of_bit_r_hit_cmp_eq0000
    );
  number_of_bit_r_hit : X_FF
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => '0'
    )
    port map (
      I => number_of_bit_r_hit_DXMUX_1159,
      CE => number_of_bit_r_hit_CEINV_1132,
      CLK => number_of_bit_r_hit_CLKINV_1133,
      SET => GND,
      RST => number_of_bit_r_hit_SRINVNOT,
      O => number_of_bit_r_hit_485
    );
  input_chain_gen_10_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_DYMUX_1188,
      CE => VCC,
      CLK => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_CLKINV_1179,
      SET => GND,
      RST => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1193,
      O => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_10_sc_in_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_FFY_RSTAND_1193
    );
  output_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DYMUX_1417,
      CE => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CEINV_1413,
      CLK => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_1414,
      SET => GND,
      RST => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1423,
      O => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1423
    );
  input_chain_gen_9_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CC8D",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd1_491,
      ADR1 => input_chain_gen_10_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => N23,
      ADR3 => trans_current_state_FSM_FFd3_480,
      O => input_x(9)
    );
  input_chain_gen_9_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_DXMUX_1453,
      CE => VCC,
      CLK => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_CLKINV_1437,
      SET => GND,
      RST => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1458,
      O => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_9_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1458
    );
  counter_r_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X18Y28"
    )
    port map (
      ADR0 => counter_r_count(1),
      ADR1 => VCC,
      ADR2 => counter_r_count(0),
      ADR3 => VCC,
      O => Result_1_4
    );
  counter_r_count_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => '0'
    )
    port map (
      I => counter_r_count_0_DYMUX_1480,
      CE => counter_r_count_0_CEINV_1468,
      CLK => counter_r_count_0_CLKINV_1469,
      SET => GND,
      RST => counter_r_count_0_SRINVNOT,
      O => counter_r_count(1)
    );
  counter_r_count_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => '0'
    )
    port map (
      I => counter_r_count_0_DXMUX_1489,
      CE => counter_r_count_0_CEINV_1468,
      CLK => counter_r_count_0_CLKINV_1469,
      SET => GND,
      RST => counter_r_count_0_SRINVNOT,
      O => counter_r_count(0)
    );
  counter_t_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter_t_count(1),
      ADR3 => counter_t_count(0),
      O => Result_1_2
    );
  counter_t_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => counter_t_count_0_DYMUX_1517,
      CE => counter_t_count_0_CEINV_1505,
      CLK => counter_t_count_0_CLKINV_1506,
      SET => GND,
      RST => counter_t_count_0_SRINVNOT,
      O => counter_t_count(1)
    );
  trans_en_b1 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X13Y13"
    )
    port map (
      ADR0 => number_of_bit_t_hit_487,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd2_479,
      ADR3 => counter_t_hit_489,
      O => en_b_t
    );
  receive_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      I => receive_current_state_FSM_FFd2_DYMUX_1221,
      CE => VCC,
      CLK => receive_current_state_FSM_FFd2_CLKINV_1212,
      SET => GND,
      RST => receive_current_state_FSM_FFd2_FFY_RSTAND_1226,
      O => receive_current_state_FSM_FFd2_481
    );
  receive_current_state_FSM_FFd2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => receive_current_state_FSM_FFd2_FFY_RSTAND_1226
    );
  receive_current_state_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"00F0",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => receive_current_state_FSM_FFd1_483,
      ADR3 => receive_current_state_FSM_FFd2_481,
      O => en_b_r
    );
  counter_r_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X19Y29"
    )
    port map (
      ADR0 => counter_r_count(3),
      ADR1 => counter_r_count(0),
      ADR2 => counter_r_count(2),
      ADR3 => counter_r_count(1),
      O => counter_r_hit_cmp_eq0000
    );
  counter_r_hit : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      I => counter_r_hit_DYMUX_1255,
      CE => counter_r_hit_CEINV_1245,
      CLK => counter_r_hit_CLKINV_1246,
      SET => GND,
      RST => counter_r_hit_FFY_RSTAND_1261,
      O => counter_r_hit_486
    );
  counter_r_hit_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X19Y29",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => counter_r_hit_FFY_RSTAND_1261
    );
  input_chain_gen_7_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A8AB",
      LOC => "SLICE_X13Y11"
    )
    port map (
      ADR0 => input_chain_gen_8_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => trans_current_state_FSM_FFd1_491,
      ADR3 => N27,
      O => input_x(7)
    );
  input_chain_gen_7_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y11",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_DXMUX_1303,
      CE => VCC,
      CLK => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_CLKINV_1287,
      SET => GND,
      RST => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1308,
      O => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1308
    );
  counter_t_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => counter_t_count_0_DXMUX_1526,
      CE => counter_t_count_0_CEINV_1505,
      CLK => counter_t_count_0_CLKINV_1506,
      SET => GND,
      RST => counter_t_count_0_SRINVNOT,
      O => counter_t_count(0)
    );
  input_chain_gen_2_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"CC8D",
      LOC => "SLICE_X13Y4"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd3_480,
      ADR1 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => N37,
      ADR3 => trans_current_state_FSM_FFd1_491,
      O => input_x(2)
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_1562,
      CE => VCC,
      CLK => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1546,
      SET => GND,
      RST => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1567,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y4",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1567
    );
  output_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_DYMUX_1578,
      CE => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CEINV_1574,
      CLK => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_1575,
      SET => GND,
      RST => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1584,
      O => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFY_RSTAND_1584
    );
  number_of_bit_r_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X15Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => number_of_bit_r_count(1),
      ADR3 => number_of_bit_r_count(0),
      O => Result_1_3
    );
  number_of_bit_r_count_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      I => number_of_bit_r_count_0_DYMUX_1606,
      CE => number_of_bit_r_count_0_CEINV_1594,
      CLK => number_of_bit_r_count_0_CLKINV_1595,
      SET => GND,
      RST => number_of_bit_r_count_0_SRINVNOT,
      O => number_of_bit_r_count(1)
    );
  number_of_bit_r_count_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      I => number_of_bit_r_count_0_DXMUX_1615,
      CE => number_of_bit_r_count_0_CEINV_1594,
      CLK => number_of_bit_r_count_0_CLKINV_1595,
      SET => GND,
      RST => number_of_bit_r_count_0_SRINVNOT,
      O => number_of_bit_r_count(0)
    );
  end_trasmission_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y7",
      INIT => '0'
    )
    port map (
      I => end_trasmission_q_0_DYMUX_1748,
      CE => end_trasmission_q_0_CEINV_1744,
      CLK => end_trasmission_q_0_CLKINV_1745,
      SET => GND,
      RST => end_trasmission_q_0_FFY_RSTAND_1754,
      O => end_trasmission_q(0)
    );
  end_trasmission_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => end_trasmission_q_0_FFY_RSTAND_1754
    );
  input_chain_gen_5_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"AA8B",
      LOC => "SLICE_X15Y10"
    )
    port map (
      ADR0 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => N31,
      ADR3 => trans_current_state_FSM_FFd1_491,
      O => input_x(5)
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y10",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_DXMUX_1784,
      CE => VCC,
      CLK => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_CLKINV_1768,
      SET => GND,
      RST => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1789,
      O => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X15Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1789
    );
  output_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y25",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_1800,
      CE => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CEINV_1796,
      CLK => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1797,
      SET => GND,
      RST => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1806,
      O => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1806
    );
  output_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_1817,
      CE => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CEINV_1813,
      CLK => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1814,
      SET => GND,
      RST => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1823,
      O => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X17Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1823
    );
  output_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      I => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_1834,
      CE => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CEINV_1830,
      CLK => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_1831,
      SET => GND,
      RST => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1840,
      O => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y28",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_FFY_RSTAND_1840
    );
  input_chain_gen_3_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"EF01",
      LOC => "SLICE_X12Y5"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd1_491,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => N35,
      ADR3 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(3)
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_DXMUX_1651,
      CE => VCC,
      CLK => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_CLKINV_1635,
      SET => GND,
      RST => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1656,
      O => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X12Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1656
    );
  number_of_bit_t_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X12Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => number_of_bit_t_count(1),
      ADR3 => number_of_bit_t_count(0),
      O => Result_1_1
    );
  number_of_bit_t_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      I => number_of_bit_t_count_0_DYMUX_1678,
      CE => number_of_bit_t_count_0_CEINV_1666,
      CLK => number_of_bit_t_count_0_CLKINV_1667,
      SET => GND,
      RST => number_of_bit_t_count_0_SRINVNOT,
      O => number_of_bit_t_count(1)
    );
  number_of_bit_t_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y12",
      INIT => '0'
    )
    port map (
      I => number_of_bit_t_count_0_DXMUX_1687,
      CE => number_of_bit_t_count_0_CEINV_1666,
      CLK => number_of_bit_t_count_0_CLKINV_1667,
      SET => GND,
      RST => number_of_bit_t_count_0_SRINVNOT,
      O => number_of_bit_t_count(0)
    );
  receive_data_out : X_LATCHE
    generic map(
      LOC => "SLICE_X12Y24",
      INIT => '0'
    )
    port map (
      I => receive_data_out_DYMUX_1700,
      GE => VCC,
      CLK => NlwInverterSignal_receive_data_out_CLK,
      SET => GND,
      RST => GND,
      O => receive_data_out_521
    );
  input_chain_gen_4_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"A8AB",
      LOC => "SLICE_X14Y10"
    )
    port map (
      ADR0 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => trans_current_state_FSM_FFd1_491,
      ADR2 => trans_current_state_FSM_FFd3_480,
      ADR3 => N33,
      O => input_x(4)
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_1732,
      CE => VCC,
      CLK => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_1716,
      SET => GND,
      RST => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1737,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X14Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1737
    );
  counter_s_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => counter_s_count(1),
      ADR1 => VCC,
      ADR2 => counter_s_count(0),
      ADR3 => VCC,
      O => Result(1)
    );
  counter_s_count_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      I => counter_s_count_0_DYMUX_1862,
      CE => counter_s_count_0_CEINV_1850,
      CLK => counter_s_count_0_CLKINV_1851,
      SET => GND,
      RST => counter_s_count_0_SRINVNOT,
      O => counter_s_count(1)
    );
  counter_s_count_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      I => counter_s_count_0_DXMUX_1871,
      CE => counter_s_count_0_CEINV_1850,
      CLK => counter_s_count_0_CLKINV_1851,
      SET => GND,
      RST => counter_s_count_0_SRINVNOT,
      O => counter_s_count(0)
    );
  input_chain_gen_6_sc_ch_inst_mux2_1_X : X_LUT4
    generic map(
      INIT => X"EF01",
      LOC => "SLICE_X13Y10"
    )
    port map (
      ADR0 => trans_current_state_FSM_FFd1_491,
      ADR1 => trans_current_state_FSM_FFd3_480,
      ADR2 => N29,
      ADR3 => input_chain_gen_7_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(6)
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y10",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_1907,
      CE => VCC,
      CLK => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_1891,
      SET => GND,
      RST => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1912,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X13Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_472,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_1912
    );
  data_t_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => data_t_O
    );
  received_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => received_0_O
    );
  received_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_1_O
    );
  received_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_2_O
    );
  received_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_3_O
    );
  received_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_4_O
    );
  received_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_5_O
    );
  received_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => received_6_O
    );
  received_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 555 ps
    )
    port map (
      I => output_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      O => received_7_O
    );
  NlwBlock_Sender_receiver_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Sender_receiver_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_receive_data_out_CLK : X_INV
    port map (
      I => receive_data_out_CLKINVNOT,
      O => NlwInverterSignal_receive_data_out_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

