--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: riconoscitore_stringa_generico_timesim.vhd
-- /___/   /\     Timestamp: Sat Jan 13 12:17:24 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf riconoscitore_stringa_generico.pcf -rpw 100 -tpw 0 -ar Structure -tm riconoscitore_stringa_generico -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim riconoscitore_stringa_generico.ncd riconoscitore_stringa_generico_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: riconoscitore_stringa_generico.ncd
-- Output file	: /media/sf_ASE/VHDL/Milo/riconoscitore_stringa/netgen/par/riconoscitore_stringa_generico_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity riconoscitore_stringa_generico is
  port (
    clk : in STD_LOGIC := 'X'; 
    correct : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    bad : out STD_LOGIC; 
    d_o : out STD_LOGIC; 
    data : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end riconoscitore_stringa_generico;

architecture Structure of riconoscitore_stringa_generico is
  signal data_7_IBUF_221 : STD_LOGIC; 
  signal data_6_IBUF_222 : STD_LOGIC; 
  signal data_5_IBUF_224 : STD_LOGIC; 
  signal data_4_IBUF_225 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_3_f5 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_f5 : STD_LOGIC; 
  signal r_s_data_mux0000 : STD_LOGIC; 
  signal data_3_IBUF_229 : STD_LOGIC; 
  signal data_2_IBUF_230 : STD_LOGIC; 
  signal data_1_IBUF_231 : STD_LOGIC; 
  signal data_0_IBUF_232 : STD_LOGIC; 
  signal start_IBUF_235 : STD_LOGIC; 
  signal reset_IBUF_236 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal r_s_current_state_cmp_eq0000 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_242 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_243 : STD_LOGIC; 
  signal r_s_shift11_SW2_O : STD_LOGIC; 
  signal en_c_0 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal en_i : STD_LOGIC; 
  signal en_s : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal r_s_shift11_SW3_O : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal r_s_data_mux0000_F5MUX_290 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_288 : STD_LOGIC; 
  signal r_s_data_mux0000_BXINV_282 : STD_LOGIC; 
  signal r_s_data_mux0000_F6MUX_280 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_5_278 : STD_LOGIC; 
  signal r_s_data_mux0000_BYINV_272 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_f5_F5MUX_314 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_51_312 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_4_f5_BXINV_306 : STD_LOGIC; 
  signal r_s_Mmux_data_mux0000_6_304 : STD_LOGIC; 
  signal data_0_INBUF : STD_LOGIC; 
  signal correct_O : STD_LOGIC; 
  signal data_1_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal data_2_INBUF : STD_LOGIC; 
  signal data_3_INBUF : STD_LOGIC; 
  signal data_4_INBUF : STD_LOGIC; 
  signal data_5_INBUF : STD_LOGIC; 
  signal data_6_INBUF : STD_LOGIC; 
  signal data_7_INBUF : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal bad_O : STD_LOGIC; 
  signal d_o_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal bad_OBUF_F5MUX_433 : STD_LOGIC; 
  signal r_s_bad : STD_LOGIC; 
  signal bad_OBUF_BXINV_426 : STD_LOGIC; 
  signal r_s_bad1_424 : STD_LOGIC; 
  signal en_c : STD_LOGIC; 
  signal r_s_shift11_SW2_O_pack_1 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_487 : STD_LOGIC; 
  signal en_s_pack_2 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_471 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal r_s_current_state_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_DXMUX_546 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_In : STD_LOGIC; 
  signal r_s_shift11_SW3_O_pack_2 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_CLKINV_529 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_581 : STD_LOGIC; 
  signal en_i_pack_2 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_564 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_623 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_609 : STD_LOGIC; 
  signal input_chain_gen_7_sc_in_inst_mux2_1_X_and0001 : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_599 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_665 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_651 : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_642 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_707 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_693 : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_SRINVNOT : STD_LOGIC; 
  signal input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_684 : STD_LOGIC; 
  signal counter_count_3_DXMUX_752 : STD_LOGIC; 
  signal counter_count_3_DYMUX_737 : STD_LOGIC; 
  signal counter_count_3_SRINVNOT : STD_LOGIC; 
  signal counter_count_3_CLKINV_727 : STD_LOGIC; 
  signal counter_count_3_CEINV_726 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_DYMUX_780 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_CLKINV_770 : STD_LOGIC; 
  signal correct_OBUF_816 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal counter_count_0_DXMUX_848 : STD_LOGIC; 
  signal counter_count_0_DYMUX_839 : STD_LOGIC; 
  signal counter_count_0_SRINVNOT : STD_LOGIC; 
  signal counter_count_0_CLKINV_828 : STD_LOGIC; 
  signal counter_count_0_CEINV_827 : STD_LOGIC; 
  signal input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_492 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd1_FFX_RSTAND_551 : STD_LOGIC; 
  signal input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_586 : STD_LOGIC; 
  signal r_s_current_state_FSM_FFd2_FFY_RSTAND_785 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal counter_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal input_x : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  r_s_data_mux0000_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_data_mux0000_F5MUX_290,
      O => r_s_Mmux_data_mux0000_3_f5
    );
  r_s_data_mux0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y12"
    )
    port map (
      IA => r_s_Mmux_data_mux0000_5_278,
      IB => r_s_Mmux_data_mux0000_4_288,
      SEL => r_s_data_mux0000_BXINV_282,
      O => r_s_data_mux0000_F5MUX_290
    );
  r_s_data_mux0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_count(1),
      O => r_s_data_mux0000_BXINV_282
    );
  r_s_data_mux0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_data_mux0000_F6MUX_280,
      O => r_s_data_mux0000
    );
  r_s_data_mux0000_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y12"
    )
    port map (
      IA => r_s_Mmux_data_mux0000_4_f5,
      IB => r_s_Mmux_data_mux0000_3_f5,
      SEL => r_s_data_mux0000_BYINV_272,
      O => r_s_data_mux0000_F6MUX_280
    );
  r_s_data_mux0000_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_count(2),
      O => r_s_data_mux0000_BYINV_272
    );
  r_s_Mmux_data_mux0000_5 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X31Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => data_5_IBUF_224,
      ADR2 => counter_count(0),
      ADR3 => data_4_IBUF_225,
      O => r_s_Mmux_data_mux0000_5_278
    );
  r_s_Mmux_data_mux0000_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X31Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_Mmux_data_mux0000_4_f5_F5MUX_314,
      O => r_s_Mmux_data_mux0000_4_f5
    );
  r_s_Mmux_data_mux0000_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y13"
    )
    port map (
      IA => r_s_Mmux_data_mux0000_6_304,
      IB => r_s_Mmux_data_mux0000_51_312,
      SEL => r_s_Mmux_data_mux0000_4_f5_BXINV_306,
      O => r_s_Mmux_data_mux0000_4_f5_F5MUX_314
    );
  r_s_Mmux_data_mux0000_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_count(1),
      O => r_s_Mmux_data_mux0000_4_f5_BXINV_306
    );
  r_s_Mmux_data_mux0000_6 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X31Y13"
    )
    port map (
      ADR0 => data_0_IBUF_232,
      ADR1 => data_1_IBUF_231,
      ADR2 => counter_count(0),
      ADR3 => VCC,
      O => r_s_Mmux_data_mux0000_6_304
    );
  data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(0),
      O => data_0_INBUF
    );
  data_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_0_INBUF,
      O => data_0_IBUF_232
    );
  correct_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => correct_O,
      O => correct
    );
  data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(1),
      O => data_1_INBUF
    );
  data_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_1_INBUF,
      O => data_1_IBUF_231
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
  data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(2),
      O => data_2_INBUF
    );
  data_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_2_INBUF,
      O => data_2_IBUF_230
    );
  data_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(3),
      O => data_3_INBUF
    );
  data_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_3_INBUF,
      O => data_3_IBUF_229
    );
  data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(4),
      O => data_4_INBUF
    );
  data_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_4_INBUF,
      O => data_4_IBUF_225
    );
  data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(5),
      O => data_5_INBUF
    );
  data_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_5_INBUF,
      O => data_5_IBUF_224
    );
  data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(6),
      O => data_6_INBUF
    );
  data_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_6_INBUF,
      O => data_6_IBUF_222
    );
  data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 555 ps
    )
    port map (
      I => data(7),
      O => data_7_INBUF
    );
  data_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 555 ps
    )
    port map (
      I => data_7_INBUF,
      O => data_7_IBUF_221
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_235
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_236
    );
  bad_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => bad_O,
      O => bad
    );
  d_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => d_o_O,
      O => d_o
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
  bad_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y9"
    )
    port map (
      IA => r_s_bad1_424,
      IB => r_s_bad,
      SEL => bad_OBUF_BXINV_426,
      O => bad_OBUF_F5MUX_433
    );
  bad_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y9",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_data_mux0000,
      O => bad_OBUF_BXINV_426
    );
  r_s_bad2 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X30Y9"
    )
    port map (
      ADR0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => r_s_current_state_FSM_FFd2_242,
      ADR2 => r_s_current_state_cmp_eq0000,
      ADR3 => r_s_current_state_FSM_FFd1_243,
      O => r_s_bad1_424
    );
  r_s_bad1 : X_LUT4
    generic map(
      INIT => X"0400",
      LOC => "SLICE_X30Y9"
    )
    port map (
      ADR0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => r_s_current_state_FSM_FFd2_242,
      ADR2 => r_s_current_state_cmp_eq0000,
      ADR3 => r_s_current_state_FSM_FFd1_243,
      O => r_s_bad
    );
  en_c_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c,
      O => en_c_0
    );
  en_c_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_shift11_SW2_O_pack_1,
      O => r_s_shift11_SW2_O
    );
  r_s_shift11_SW2 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "SLICE_X30Y13"
    )
    port map (
      ADR0 => r_s_current_state_FSM_FFd2_242,
      ADR1 => VCC,
      ADR2 => r_s_current_state_FSM_FFd1_243,
      ADR3 => VCC,
      O => r_s_shift11_SW2_O_pack_1
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(1),
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_487
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_s_pack_2,
      O => en_s
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_471
    );
  r_s_shift1 : X_LUT4
    generic map(
      INIT => X"14D7",
      LOC => "SLICE_X29Y14"
    )
    port map (
      ADR0 => N5_0,
      ADR1 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR2 => r_s_data_mux0000,
      ADR3 => N4_0,
      O => en_s_pack_2
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  N4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_current_state_cmp_eq0000_pack_1,
      O => r_s_current_state_cmp_eq0000
    );
  r_s_current_state_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X28Y13"
    )
    port map (
      ADR0 => counter_count(0),
      ADR1 => counter_count(3),
      ADR2 => counter_count(1),
      ADR3 => counter_count(2),
      O => r_s_current_state_cmp_eq0000_pack_1
    );
  r_s_current_state_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_current_state_FSM_FFd1_In,
      O => r_s_current_state_FSM_FFd1_DXMUX_546
    );
  r_s_current_state_FSM_FFd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_shift11_SW3_O_pack_2,
      O => r_s_shift11_SW3_O
    );
  r_s_current_state_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_s_current_state_FSM_FFd1_CLKINV_529
    );
  r_s_shift11_SW3 : X_LUT4
    generic map(
      INIT => X"8585",
      LOC => "SLICE_X31Y8"
    )
    port map (
      ADR0 => r_s_current_state_FSM_FFd1_243,
      ADR1 => r_s_current_state_cmp_eq0000,
      ADR2 => r_s_current_state_FSM_FFd2_242,
      ADR3 => VCC,
      O => r_s_shift11_SW3_O_pack_2
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(0),
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_581
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_i_pack_2,
      O => en_i
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_564
    );
  r_s_en_i1 : X_LUT4
    generic map(
      INIT => X"AAEE",
      LOC => "SLICE_X28Y15"
    )
    port map (
      ADR0 => r_s_current_state_FSM_FFd1_243,
      ADR1 => start_IBUF_235,
      ADR2 => VCC,
      ADR3 => r_s_current_state_FSM_FFd2_242,
      O => en_i_pack_2
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(6),
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_623
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_chain_gen_7_sc_in_inst_mux2_1_X_and0001,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_609
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_599
    );
  input_chain_gen_7_sc_in_inst_mux2_1_X_and00011 : X_LUT4
    generic map(
      INIT => X"0D0D",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => en_i,
      ADR1 => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => en_s,
      ADR3 => VCC,
      O => input_chain_gen_7_sc_in_inst_mux2_1_X_and0001
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(4),
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_665
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(5),
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_651
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y21",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_642
    );
  r_s_Mmux_data_mux0000_4 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X31Y12"
    )
    port map (
      ADR0 => data_6_IBUF_222,
      ADR1 => VCC,
      ADR2 => counter_count(0),
      ADR3 => data_7_IBUF_221,
      O => r_s_Mmux_data_mux0000_4_288
    );
  input_chain_gen_5_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_s,
      ADR3 => en_i,
      O => input_x(5)
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(2),
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_707
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_x(3),
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_693
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X27Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_SRINVNOT
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_684
    );
  input_chain_gen_3_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"CCAF",
      LOC => "SLICE_X27Y14"
    )
    port map (
      ADR0 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_i,
      ADR3 => en_s,
      O => input_x(3)
    );
  counter_count_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(3),
      O => counter_count_3_DXMUX_752
    );
  counter_count_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => counter_count_3_DYMUX_737
    );
  counter_count_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => counter_count_3_SRINVNOT
    );
  counter_count_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_count_3_CLKINV_727
    );
  counter_count_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => counter_count_3_CEINV_726
    );
  counter_Mcount_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"3FC0",
      LOC => "SLICE_X28Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter_count(0),
      ADR2 => counter_count(1),
      ADR3 => counter_count(2),
      O => Result(2)
    );
  r_s_current_state_FSM_FFd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  r_s_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => r_s_current_state_FSM_FFd2_In,
      O => r_s_current_state_FSM_FFd2_DYMUX_780
    );
  r_s_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => r_s_current_state_FSM_FFd2_CLKINV_770
    );
  r_s_current_state_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"5550",
      LOC => "SLICE_X29Y15"
    )
    port map (
      ADR0 => r_s_current_state_FSM_FFd2_242,
      ADR1 => VCC,
      ADR2 => start_IBUF_235,
      ADR3 => r_s_current_state_FSM_FFd1_243,
      O => r_s_current_state_FSM_FFd2_In
    );
  correct_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  r_s_shift11_SW4 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X30Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r_s_current_state_FSM_FFd2_242,
      ADR2 => VCC,
      ADR3 => r_s_current_state_FSM_FFd1_243,
      O => N10
    );
  counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X29Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_count(0),
      O => counter_count_0_DXMUX_848
    );
  counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => counter_count_0_DYMUX_839
    );
  counter_count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X29Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => counter_count_0_SRINVNOT
    );
  counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_count_0_CLKINV_828
    );
  counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_c_0,
      O => counter_count_0_CEINV_827
    );
  r_s_Mmux_data_mux0000_51 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X31Y13"
    )
    port map (
      ADR0 => data_2_IBUF_230,
      ADR1 => data_3_IBUF_229,
      ADR2 => counter_count(0),
      ADR3 => VCC,
      O => r_s_Mmux_data_mux0000_51_312
    );
  r_s_en_c1 : X_LUT4
    generic map(
      INIT => X"0009",
      LOC => "SLICE_X30Y13"
    )
    port map (
      ADR0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => r_s_data_mux0000,
      ADR2 => r_s_current_state_cmp_eq0000,
      ADR3 => r_s_shift11_SW2_O,
      O => en_c
    );
  input_chain_gen_1_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X29Y14"
    )
    port map (
      ADR0 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => en_i,
      ADR2 => en_s,
      ADR3 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(1)
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y14",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_DXMUX_487,
      CE => VCC,
      CLK => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_CLKINV_471,
      SET => GND,
      RST => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_492,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_FFX_RSTAND_492
    );
  r_s_shift11_SW0 : X_LUT4
    generic map(
      INIT => X"E6F7",
      LOC => "SLICE_X28Y13"
    )
    port map (
      ADR0 => r_s_current_state_FSM_FFd1_243,
      ADR1 => r_s_current_state_FSM_FFd2_242,
      ADR2 => r_s_current_state_cmp_eq0000,
      ADR3 => start_IBUF_235,
      O => N4
    );
  r_s_current_state_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"1D47",
      LOC => "SLICE_X31Y8"
    )
    port map (
      ADR0 => N10_0,
      ADR1 => r_s_data_mux0000,
      ADR2 => r_s_shift11_SW3_O,
      ADR3 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => r_s_current_state_FSM_FFd1_In
    );
  r_s_shift11_SW1 : X_LUT4
    generic map(
      INIT => X"FFDD",
      LOC => "SLICE_X29Y15"
    )
    port map (
      ADR0 => start_IBUF_235,
      ADR1 => r_s_current_state_FSM_FFd1_243,
      ADR2 => VCC,
      ADR3 => r_s_current_state_FSM_FFd2_242,
      O => N5
    );
  r_s_correct1 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X30Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => r_s_current_state_FSM_FFd2_242,
      ADR2 => r_s_current_state_cmp_eq0000,
      ADR3 => r_s_current_state_FSM_FFd1_243,
      O => correct_OBUF_816
    );
  counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => counter_count(1),
      ADR2 => VCC,
      ADR3 => counter_count(0),
      O => Result(1)
    );
  counter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => '0'
    )
    port map (
      I => counter_count_0_DYMUX_839,
      CE => counter_count_0_CEINV_827,
      CLK => counter_count_0_CLKINV_828,
      SET => GND,
      RST => counter_count_0_SRINVNOT,
      O => counter_count(1)
    );
  counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y13",
      INIT => '0'
    )
    port map (
      I => counter_count_0_DXMUX_848,
      CE => counter_count_0_CEINV_827,
      CLK => counter_count_0_CLKINV_828,
      SET => GND,
      RST => counter_count_0_SRINVNOT,
      O => counter_count(0)
    );
  r_s_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X31Y8",
      INIT => '0'
    )
    port map (
      I => r_s_current_state_FSM_FFd1_DXMUX_546,
      CE => VCC,
      CLK => r_s_current_state_FSM_FFd1_CLKINV_529,
      SET => GND,
      RST => r_s_current_state_FSM_FFd1_FFX_RSTAND_551,
      O => r_s_current_state_FSM_FFd1_243
    );
  r_s_current_state_FSM_FFd1_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y8",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => r_s_current_state_FSM_FFd1_FFX_RSTAND_551
    );
  input_chain_gen_0_sc_out_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"EF23",
      LOC => "SLICE_X28Y15"
    )
    port map (
      ADR0 => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      ADR1 => en_s,
      ADR2 => en_i,
      ADR3 => input_chain_gen_1_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(0)
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y15",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_DXMUX_581,
      CE => VCC,
      CLK => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_CLKINV_564,
      SET => GND,
      RST => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_586,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_FFX_RSTAND_586
    );
  input_chain_gen_7_sc_in_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y16",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DYMUX_609,
      CE => VCC,
      CLK => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_599,
      SET => GND,
      RST => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_6_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"CAC0",
      LOC => "SLICE_X27Y16"
    )
    port map (
      ADR0 => en_i,
      ADR1 => input_chain_gen_7_sc_in_inst_edge_triggered_q_0_Q,
      ADR2 => en_s,
      ADR3 => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(6)
    );
  input_chain_gen_6_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y16",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_DXMUX_623,
      CE => VCC,
      CLK => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_CLKINV_599,
      SET => GND,
      RST => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_6_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_5_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DYMUX_651,
      CE => VCC,
      CLK => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_642,
      SET => GND,
      RST => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_4_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"ACA0",
      LOC => "SLICE_X31Y21"
    )
    port map (
      ADR0 => input_chain_gen_5_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => en_i,
      ADR2 => en_s,
      ADR3 => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q,
      O => input_x(4)
    );
  input_chain_gen_4_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y21",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_DXMUX_665,
      CE => VCC,
      CLK => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_CLKINV_642,
      SET => GND,
      RST => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_4_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_3_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DYMUX_693,
      CE => VCC,
      CLK => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_684,
      SET => GND,
      RST => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q
    );
  input_chain_gen_2_sc_ch_inst_mux2_1_X1 : X_LUT4
    generic map(
      INIT => X"ACAF",
      LOC => "SLICE_X27Y14"
    )
    port map (
      ADR0 => input_chain_gen_3_sc_ch_inst_edge_triggered_q_0_Q,
      ADR1 => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q,
      ADR2 => en_s,
      ADR3 => en_i,
      O => input_x(2)
    );
  input_chain_gen_2_sc_ch_inst_edge_triggered_q_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y14",
      INIT => '0'
    )
    port map (
      I => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_DXMUX_707,
      CE => VCC,
      CLK => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_CLKINV_684,
      SET => GND,
      RST => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_SRINVNOT,
      O => input_chain_gen_2_sc_ch_inst_edge_triggered_q_0_Q
    );
  counter_count_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      I => counter_count_3_DYMUX_737,
      CE => counter_count_3_CEINV_726,
      CLK => counter_count_3_CLKINV_727,
      SET => GND,
      RST => counter_count_3_SRINVNOT,
      O => counter_count(2)
    );
  counter_Mcount_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA",
      LOC => "SLICE_X28Y12"
    )
    port map (
      ADR0 => counter_count(3),
      ADR1 => counter_count(0),
      ADR2 => counter_count(1),
      ADR3 => counter_count(2),
      O => Result(3)
    );
  counter_count_3 : X_FF
    generic map(
      LOC => "SLICE_X28Y12",
      INIT => '0'
    )
    port map (
      I => counter_count_3_DXMUX_752,
      CE => counter_count_3_CEINV_726,
      CLK => counter_count_3_CLKINV_727,
      SET => GND,
      RST => counter_count_3_SRINVNOT,
      O => counter_count(3)
    );
  r_s_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X29Y15",
      INIT => '0'
    )
    port map (
      I => r_s_current_state_FSM_FFd2_DYMUX_780,
      CE => VCC,
      CLK => r_s_current_state_FSM_FFd2_CLKINV_770,
      SET => GND,
      RST => r_s_current_state_FSM_FFd2_FFY_RSTAND_785,
      O => r_s_current_state_FSM_FFd2_242
    );
  r_s_current_state_FSM_FFd2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y15",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_IBUF_236,
      O => r_s_current_state_FSM_FFd2_FFY_RSTAND_785
    );
  correct_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => correct_OBUF_816,
      O => correct_O
    );
  bad_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => bad_OBUF_F5MUX_433,
      O => bad_O
    );
  d_o_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_chain_gen_0_sc_out_inst_edge_triggered_q_0_Q,
      O => d_o_O
    );
  NlwBlock_riconoscitore_stringa_generico_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_riconoscitore_stringa_generico_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

