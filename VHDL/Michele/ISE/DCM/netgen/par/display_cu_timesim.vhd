--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: display_cu_timesim.vhd
-- /___/   /\     Timestamp: Mon Jan 15 13:00:57 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf display_cu.pcf -rpw 100 -tpw 0 -ar Structure -tm display_cu -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim display_cu.ncd display_cu_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: display_cu.ncd
-- Output file	: /media/sf_ASE/VHDL/Michele/ISE/DCM/netgen/par/display_cu_timesim.vhd
-- # of Entities	: 1
-- Design Name	: display_cu
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

entity display_cu is
  port (
    reset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    cathodes : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    anodes_n : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    input_byte : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    loader : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end display_cu;

architecture Structure of display_cu is
  signal input_byte_1_IBUF_312 : STD_LOGIC; 
  signal input_byte_0_IBUF_313 : STD_LOGIC; 
  signal loader_0_IBUF_314 : STD_LOGIC; 
  signal clk0 : STD_LOGIC; 
  signal edge_triggered_en_dots_reset_n_inv : STD_LOGIC; 
  signal input_byte_3_IBUF_318 : STD_LOGIC; 
  signal input_byte_2_IBUF_319 : STD_LOGIC; 
  signal input_byte_5_IBUF_321 : STD_LOGIC; 
  signal input_byte_4_IBUF_322 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_enable_anode : STD_LOGIC; 
  signal input_byte_7_IBUF_327 : STD_LOGIC; 
  signal input_byte_6_IBUF_328 : STD_LOGIC; 
  signal loader_1_IBUF_341 : STD_LOGIC; 
  signal loader_2_IBUF_343 : STD_LOGIC; 
  signal clkfx : STD_LOGIC; 
  signal digital_clock_manager_CLKFX_BUF : STD_LOGIC; 
  signal digital_clock_manager_CLK0_BUF : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_1_F5MUX_380 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_3_378 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_1_BXINV_372 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_4_370 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_2_F5MUX_405 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_3_403 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_2_BXINV_397 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_4_395 : STD_LOGIC; 
  signal cathodes_7_OBUF_F5MUX_430 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_3_428 : STD_LOGIC; 
  signal cathodes_7_OBUF_BXINV_422 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_4_420 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_1_DXMUX_452 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_1_DYMUX_443 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_1_SRINV_441 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_1_CLKINV_440 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_1_CEINV_439 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_3_DXMUX_480 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_3_DYMUX_471 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_3_SRINV_469 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_3_CLKINV_468 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_3_CEINV_467 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_5_DXMUX_508 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_5_DYMUX_499 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_5_SRINV_497 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_5_CLKINV_496 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_5_CEINV_495 : STD_LOGIC; 
  signal anodes_n_1_OBUF_537 : STD_LOGIC; 
  signal anodes_n_0_OBUF_529 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_7_DXMUX_560 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_7_DYMUX_551 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_7_SRINV_549 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_7_CLKINV_548 : STD_LOGIC; 
  signal edge_triggered_lsbvalues_q_7_CEINV_547 : STD_LOGIC; 
  signal anodes_n_3_OBUF_589 : STD_LOGIC; 
  signal anodes_n_2_OBUF_581 : STD_LOGIC; 
  signal cathodes_3_OBUF_613 : STD_LOGIC; 
  signal cathodes_0_OBUF_606 : STD_LOGIC; 
  signal cathodes_1_OBUF_637 : STD_LOGIC; 
  signal cathodes_2_OBUF_630 : STD_LOGIC; 
  signal cathodes_6_OBUF_661 : STD_LOGIC; 
  signal cathodes_4_OBUF_654 : STD_LOGIC; 
  signal cathodes_5_OBUF_673 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_1_DXMUX_696 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_1_DYMUX_687 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_1_SRINV_685 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_1_CLKINV_684 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_1_CEINV_683 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_1_DXMUX_724 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_1_DYMUX_715 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_1_SRINV_713 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_1_CLKINV_712 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_1_CEINV_711 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_3_DXMUX_752 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_3_DYMUX_743 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_3_SRINV_741 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_3_CLKINV_740 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_3_CEINV_739 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_3_DXMUX_780 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_3_DYMUX_771 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_3_SRINV_769 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_3_CLKINV_768 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_3_CEINV_767 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_5_DXMUX_808 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_5_DYMUX_799 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_5_SRINV_797 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_5_CLKINV_796 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_5_CEINV_795 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_5_DXMUX_836 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_5_DYMUX_827 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_5_SRINV_825 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_5_CLKINV_824 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_5_CEINV_823 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_7_DXMUX_864 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_7_DYMUX_855 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_7_SRINV_853 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_7_CLKINV_852 : STD_LOGIC; 
  signal edge_triggered_msbvalues_q_7_CEINV_851 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_7_DXMUX_892 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_7_DYMUX_883 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_7_SRINV_881 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_7_CLKINV_880 : STD_LOGIC; 
  signal edge_triggered_en_dots_q_7_CEINV_879 : STD_LOGIC; 
  signal inst_display_inst_counter_count_0_DXMUX_929 : STD_LOGIC; 
  signal inst_display_inst_counter_count_0_DYMUX_920 : STD_LOGIC; 
  signal inst_display_inst_counter_count_0_SRINV_910 : STD_LOGIC; 
  signal inst_display_inst_counter_count_0_CLKINV_909 : STD_LOGIC; 
  signal inst_display_inst_counter_count_0_CEINV_908 : STD_LOGIC; 
  signal anodes_n_0_O : STD_LOGIC; 
  signal anodes_n_1_O : STD_LOGIC; 
  signal anodes_n_2_O : STD_LOGIC; 
  signal cathodes_0_O : STD_LOGIC; 
  signal anodes_n_3_O : STD_LOGIC; 
  signal cathodes_1_O : STD_LOGIC; 
  signal cathodes_2_O : STD_LOGIC; 
  signal cathodes_3_O : STD_LOGIC; 
  signal cathodes_4_O : STD_LOGIC; 
  signal cathodes_5_O : STD_LOGIC; 
  signal cathodes_6_O : STD_LOGIC; 
  signal cathodes_7_O : STD_LOGIC; 
  signal input_byte_0_INBUF : STD_LOGIC; 
  signal loader_0_INBUF : STD_LOGIC; 
  signal input_byte_1_INBUF : STD_LOGIC; 
  signal loader_1_INBUF : STD_LOGIC; 
  signal input_byte_2_INBUF : STD_LOGIC; 
  signal loader_2_INBUF : STD_LOGIC; 
  signal input_byte_3_INBUF : STD_LOGIC; 
  signal input_byte_4_INBUF : STD_LOGIC; 
  signal input_byte_5_INBUF : STD_LOGIC; 
  signal input_byte_6_INBUF : STD_LOGIC; 
  signal input_byte_7_INBUF : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLK90 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLK180 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLK270 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLK2X : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLK2X180 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLKDV : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLKFX180 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_LOCKED : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS7 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS6 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS5 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS4 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS3 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS2 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS1 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_STATUS0 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_PSDONE : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_PSCLKINV_1121 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLKFB_BUF_1120 : STD_LOGIC; 
  signal digital_clock_manager_DCM_SP_INST_CLKIN_BUF_1119 : STD_LOGIC; 
  signal digital_clock_manager_CLK0_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal digital_clock_manager_CLK0_BUFG_INST_I0_INV : STD_LOGIC; 
  signal digital_clock_manager_CLKFX_BUFG_INST_S_INVNOT : STD_LOGIC; 
  signal digital_clock_manager_CLKFX_BUFG_INST_I0_INV : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_3_F5MUX_1172 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_3_1170 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_3_BXINV_1164 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_4_1162 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_enable_anode_F5MUX_1197 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_1195 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_enable_anode_BXINV_1189 : STD_LOGIC; 
  signal inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_1187 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_0_F5MUX_1222 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_3_1220 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_nibble_0_BXINV_1214 : STD_LOGIC; 
  signal inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_4_1212 : STD_LOGIC; 
  signal NlwBufferSignal_digital_clock_manager_DCM_SP_INST_RST : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_digital_clock_manager_DCM_SP_INST_DSSEN_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal inst_display_inst_counter_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal edge_triggered_msbvalues_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal edge_triggered_lsbvalues_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal inst_display_inst_cathode_manager_nibble : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal edge_triggered_en_dots_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  inst_display_inst_cathode_manager_nibble_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_cathode_manager_nibble_1_F5MUX_380,
      O => inst_display_inst_cathode_manager_nibble(1)
    );
  inst_display_inst_cathode_manager_nibble_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y11"
    )
    port map (
      IA => inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_4_370,
      IB => inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_3_378,
      SEL => inst_display_inst_cathode_manager_nibble_1_BXINV_372,
      O => inst_display_inst_cathode_manager_nibble_1_F5MUX_380
    );
  inst_display_inst_cathode_manager_nibble_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble_1_BXINV_372
    );
  inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => edge_triggered_lsbvalues_q(1),
      ADR1 => inst_display_inst_counter_count(0),
      ADR2 => VCC,
      ADR3 => edge_triggered_lsbvalues_q(5),
      O => inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_4_370
    );
  inst_display_inst_cathode_manager_nibble_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_cathode_manager_nibble_2_F5MUX_405,
      O => inst_display_inst_cathode_manager_nibble(2)
    );
  inst_display_inst_cathode_manager_nibble_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y13"
    )
    port map (
      IA => inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_4_395,
      IB => inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_3_403,
      SEL => inst_display_inst_cathode_manager_nibble_2_BXINV_397,
      O => inst_display_inst_cathode_manager_nibble_2_F5MUX_405
    );
  inst_display_inst_cathode_manager_nibble_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble_2_BXINV_397
    );
  inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => edge_triggered_lsbvalues_q(2),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_lsbvalues_q(6),
      O => inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_4_395
    );
  cathodes_7_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y5"
    )
    port map (
      IA => inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_4_420,
      IB => inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_3_428,
      SEL => cathodes_7_OBUF_BXINV_422,
      O => cathodes_7_OBUF_F5MUX_430
    );
  cathodes_7_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y5",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => cathodes_7_OBUF_BXINV_422
    );
  inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X3Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => edge_triggered_en_dots_q(0),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_en_dots_q(1),
      O => inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_4_420
    );
  edge_triggered_lsbvalues_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_1_IBUF_312,
      O => edge_triggered_lsbvalues_q_1_DXMUX_452
    );
  edge_triggered_lsbvalues_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_0_IBUF_313,
      O => edge_triggered_lsbvalues_q_1_DYMUX_443
    );
  edge_triggered_lsbvalues_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_lsbvalues_q_1_SRINV_441
    );
  edge_triggered_lsbvalues_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_lsbvalues_q_1_CLKINV_440
    );
  edge_triggered_lsbvalues_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_0_IBUF_314,
      O => edge_triggered_lsbvalues_q_1_CEINV_439
    );
  edge_triggered_lsbvalues_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_3_IBUF_318,
      O => edge_triggered_lsbvalues_q_3_DXMUX_480
    );
  edge_triggered_lsbvalues_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_2_IBUF_319,
      O => edge_triggered_lsbvalues_q_3_DYMUX_471
    );
  edge_triggered_lsbvalues_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_lsbvalues_q_3_SRINV_469
    );
  edge_triggered_lsbvalues_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_lsbvalues_q_3_CLKINV_468
    );
  edge_triggered_lsbvalues_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_0_IBUF_314,
      O => edge_triggered_lsbvalues_q_3_CEINV_467
    );
  edge_triggered_lsbvalues_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_5_IBUF_321,
      O => edge_triggered_lsbvalues_q_5_DXMUX_508
    );
  edge_triggered_lsbvalues_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_4_IBUF_322,
      O => edge_triggered_lsbvalues_q_5_DYMUX_499
    );
  edge_triggered_lsbvalues_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_lsbvalues_q_5_SRINV_497
    );
  edge_triggered_lsbvalues_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_lsbvalues_q_5_CLKINV_496
    );
  edge_triggered_lsbvalues_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y11",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_0_IBUF_314,
      O => edge_triggered_lsbvalues_q_5_CEINV_495
    );
  anodes_n_0_1 : X_LUT4
    generic map(
      INIT => X"FFCF",
      LOC => "SLICE_X0Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => inst_display_inst_counter_count(1),
      ADR2 => inst_display_inst_anode_manager_enable_anode,
      ADR3 => inst_display_inst_counter_count(0),
      O => anodes_n_0_OBUF_529
    );
  edge_triggered_lsbvalues_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_7_IBUF_327,
      O => edge_triggered_lsbvalues_q_7_DXMUX_560
    );
  edge_triggered_lsbvalues_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_6_IBUF_328,
      O => edge_triggered_lsbvalues_q_7_DYMUX_551
    );
  edge_triggered_lsbvalues_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_lsbvalues_q_7_SRINV_549
    );
  edge_triggered_lsbvalues_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_lsbvalues_q_7_CLKINV_548
    );
  edge_triggered_lsbvalues_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_0_IBUF_314,
      O => edge_triggered_lsbvalues_q_7_CEINV_547
    );
  anodes_n_2_1 : X_LUT4
    generic map(
      INIT => X"BFBF",
      LOC => "SLICE_X0Y9"
    )
    port map (
      ADR0 => inst_display_inst_counter_count(0),
      ADR1 => inst_display_inst_counter_count(1),
      ADR2 => inst_display_inst_anode_manager_enable_anode,
      ADR3 => VCC,
      O => anodes_n_2_OBUF_581
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes11 : X_LUT4
    generic map(
      INIT => X"0984",
      LOC => "SLICE_X1Y14"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(3),
      ADR1 => inst_display_inst_cathode_manager_nibble(0),
      ADR2 => inst_display_inst_cathode_manager_nibble(1),
      ADR3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_0_OBUF_606
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes21 : X_LUT4
    generic map(
      INIT => X"A210",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(3),
      ADR1 => inst_display_inst_cathode_manager_nibble(0),
      ADR2 => inst_display_inst_cathode_manager_nibble(1),
      ADR3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_2_OBUF_630
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes41 : X_LUT4
    generic map(
      INIT => X"10F2",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(2),
      ADR1 => inst_display_inst_cathode_manager_nibble(1),
      ADR2 => inst_display_inst_cathode_manager_nibble(0),
      ADR3 => inst_display_inst_cathode_manager_nibble(3),
      O => cathodes_4_OBUF_654
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes51 : X_LUT4
    generic map(
      INIT => X"2504",
      LOC => "SLICE_X0Y13"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(2),
      ADR1 => inst_display_inst_cathode_manager_nibble(1),
      ADR2 => inst_display_inst_cathode_manager_nibble(3),
      ADR3 => inst_display_inst_cathode_manager_nibble(0),
      O => cathodes_5_OBUF_673
    );
  edge_triggered_msbvalues_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_1_IBUF_312,
      O => edge_triggered_msbvalues_q_1_DXMUX_696
    );
  edge_triggered_msbvalues_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_0_IBUF_313,
      O => edge_triggered_msbvalues_q_1_DYMUX_687
    );
  edge_triggered_msbvalues_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_msbvalues_q_1_SRINV_685
    );
  edge_triggered_msbvalues_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_msbvalues_q_1_CLKINV_684
    );
  edge_triggered_msbvalues_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y7",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_1_IBUF_341,
      O => edge_triggered_msbvalues_q_1_CEINV_683
    );
  edge_triggered_en_dots_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_1_IBUF_312,
      O => edge_triggered_en_dots_q_1_DXMUX_724
    );
  edge_triggered_en_dots_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_0_IBUF_313,
      O => edge_triggered_en_dots_q_1_DYMUX_715
    );
  edge_triggered_en_dots_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_en_dots_q_1_SRINV_713
    );
  edge_triggered_en_dots_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_en_dots_q_1_CLKINV_712
    );
  edge_triggered_en_dots_q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_2_IBUF_343,
      O => edge_triggered_en_dots_q_1_CEINV_711
    );
  edge_triggered_msbvalues_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_3_IBUF_318,
      O => edge_triggered_msbvalues_q_3_DXMUX_752
    );
  edge_triggered_msbvalues_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_2_IBUF_319,
      O => edge_triggered_msbvalues_q_3_DYMUX_743
    );
  edge_triggered_msbvalues_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_msbvalues_q_3_SRINV_741
    );
  edge_triggered_msbvalues_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_msbvalues_q_3_CLKINV_740
    );
  edge_triggered_msbvalues_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y12",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_1_IBUF_341,
      O => edge_triggered_msbvalues_q_3_CEINV_739
    );
  edge_triggered_en_dots_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_3_IBUF_318,
      O => edge_triggered_en_dots_q_3_DXMUX_780
    );
  edge_triggered_en_dots_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_2_IBUF_319,
      O => edge_triggered_en_dots_q_3_DYMUX_771
    );
  edge_triggered_en_dots_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_en_dots_q_3_SRINV_769
    );
  edge_triggered_en_dots_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_en_dots_q_3_CLKINV_768
    );
  edge_triggered_en_dots_q_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y6",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_2_IBUF_343,
      O => edge_triggered_en_dots_q_3_CEINV_767
    );
  edge_triggered_msbvalues_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_5_IBUF_321,
      O => edge_triggered_msbvalues_q_5_DXMUX_808
    );
  edge_triggered_msbvalues_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_4_IBUF_322,
      O => edge_triggered_msbvalues_q_5_DYMUX_799
    );
  edge_triggered_msbvalues_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_msbvalues_q_5_SRINV_797
    );
  edge_triggered_msbvalues_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_msbvalues_q_5_CLKINV_796
    );
  edge_triggered_msbvalues_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_1_IBUF_341,
      O => edge_triggered_msbvalues_q_5_CEINV_795
    );
  edge_triggered_en_dots_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_5_IBUF_321,
      O => edge_triggered_en_dots_q_5_DXMUX_836
    );
  edge_triggered_en_dots_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_4_IBUF_322,
      O => edge_triggered_en_dots_q_5_DYMUX_827
    );
  edge_triggered_en_dots_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_en_dots_q_5_SRINV_825
    );
  edge_triggered_en_dots_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_en_dots_q_5_CLKINV_824
    );
  edge_triggered_en_dots_q_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_2_IBUF_343,
      O => edge_triggered_en_dots_q_5_CEINV_823
    );
  edge_triggered_msbvalues_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_7_IBUF_327,
      O => edge_triggered_msbvalues_q_7_DXMUX_864
    );
  edge_triggered_msbvalues_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_6_IBUF_328,
      O => edge_triggered_msbvalues_q_7_DYMUX_855
    );
  edge_triggered_msbvalues_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_msbvalues_q_7_SRINV_853
    );
  edge_triggered_msbvalues_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_msbvalues_q_7_CLKINV_852
    );
  edge_triggered_msbvalues_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_1_IBUF_341,
      O => edge_triggered_msbvalues_q_7_CEINV_851
    );
  edge_triggered_en_dots_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_7_IBUF_327,
      O => edge_triggered_en_dots_q_7_DXMUX_892
    );
  edge_triggered_en_dots_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_6_IBUF_328,
      O => edge_triggered_en_dots_q_7_DYMUX_883
    );
  edge_triggered_en_dots_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => edge_triggered_en_dots_q_7_SRINV_881
    );
  edge_triggered_en_dots_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => edge_triggered_en_dots_q_7_CLKINV_880
    );
  edge_triggered_en_dots_q_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y17",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_2_IBUF_343,
      O => edge_triggered_en_dots_q_7_CEINV_879
    );
  inst_display_inst_counter_count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(0),
      O => inst_display_inst_counter_count_0_DXMUX_929
    );
  inst_display_inst_counter_count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => inst_display_inst_counter_count_0_DYMUX_920
    );
  inst_display_inst_counter_count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => inst_display_inst_counter_count_0_SRINV_910
    );
  inst_display_inst_counter_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => inst_display_inst_counter_count_0_CLKINV_909
    );
  inst_display_inst_counter_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 555 ps
    )
    port map (
      I => clkfx,
      O => inst_display_inst_counter_count_0_CEINV_908
    );
  anodes_n_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => anodes_n_0_O,
      O => anodes_n(0)
    );
  anodes_n_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => anodes_n_1_O,
      O => anodes_n(1)
    );
  anodes_n_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => anodes_n_2_O,
      O => anodes_n(2)
    );
  cathodes_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => cathodes_0_O,
      O => cathodes(0)
    );
  anodes_n_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => anodes_n_3_O,
      O => anodes_n(3)
    );
  cathodes_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => cathodes_1_O,
      O => cathodes(1)
    );
  cathodes_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => cathodes_2_O,
      O => cathodes(2)
    );
  cathodes_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => cathodes_3_O,
      O => cathodes(3)
    );
  cathodes_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => cathodes_4_O,
      O => cathodes(4)
    );
  cathodes_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => cathodes_5_O,
      O => cathodes(5)
    );
  cathodes_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => cathodes_6_O,
      O => cathodes(6)
    );
  cathodes_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => cathodes_7_O,
      O => cathodes(7)
    );
  input_byte_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(0),
      O => input_byte_0_INBUF
    );
  input_byte_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD80",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_0_INBUF,
      O => input_byte_0_IBUF_313
    );
  loader_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD57",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader(0),
      O => loader_0_INBUF
    );
  loader_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD57",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_0_INBUF,
      O => loader_0_IBUF_314
    );
  input_byte_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(1),
      O => input_byte_1_INBUF
    );
  input_byte_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD81",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_1_INBUF,
      O => input_byte_1_IBUF_312
    );
  loader_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader(1),
      O => loader_1_INBUF
    );
  loader_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_1_INBUF,
      O => loader_1_IBUF_341
    );
  input_byte_2_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(2),
      O => input_byte_2_INBUF
    );
  input_byte_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_2_INBUF,
      O => input_byte_2_IBUF_319
    );
  loader_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader(2),
      O => loader_2_INBUF
    );
  loader_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD74",
      PATHPULSE => 555 ps
    )
    port map (
      I => loader_2_INBUF,
      O => loader_2_IBUF_343
    );
  input_byte_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(3),
      O => input_byte_3_INBUF
    );
  input_byte_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_3_INBUF,
      O => input_byte_3_IBUF_318
    );
  input_byte_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(4),
      O => input_byte_4_INBUF
    );
  input_byte_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_4_INBUF,
      O => input_byte_4_IBUF_322
    );
  input_byte_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(5),
      O => input_byte_5_INBUF
    );
  input_byte_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_5_INBUF,
      O => input_byte_5_IBUF_321
    );
  input_byte_6_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(6),
      O => input_byte_6_INBUF
    );
  input_byte_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_6_INBUF,
      O => input_byte_6_IBUF_328
    );
  input_byte_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte(7),
      O => input_byte_7_INBUF
    );
  input_byte_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_byte_7_INBUF,
      O => input_byte_7_IBUF_327
    );
  clock_IBUFG : X_BUF
    generic map(
      LOC => "IPAD67",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => edge_triggered_en_dots_reset_n_inv
    );
  digital_clock_manager_DCM_SP_INST_PSCLKINV : X_BUF
    generic map(
      LOC => "DCM_X0Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => digital_clock_manager_DCM_SP_INST_PSCLKINV_1121
    );
  digital_clock_manager_DCM_SP_INST : X_DCM_SP
    generic map(
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"C080",
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 20,
      CLKFX_MULTIPLY => 2,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLKIN_PERIOD => 20.000000,
      DESKEW_ADJUST => "6",
      DFS_FREQUENCY_MODE => "LOW",
      STARTUP_WAIT => TRUE,
      CLK_FEEDBACK => "1X",
      DLL_FREQUENCY_MODE => "LOW",
      CLKIN_DIVIDE_BY_2 => FALSE,
      PHASE_SHIFT => 0,
      LOC => "DCM_X0Y0"
    )
    port map (
      CLKIN => digital_clock_manager_DCM_SP_INST_CLKIN_BUF_1119,
      CLKFB => digital_clock_manager_DCM_SP_INST_CLKFB_BUF_1120,
      RST => NlwBufferSignal_digital_clock_manager_DCM_SP_INST_RST,
      DSSEN => NLW_digital_clock_manager_DCM_SP_INST_DSSEN_UNCONNECTED,
      PSINCDEC => '0',
      PSEN => '0',
      PSCLK => digital_clock_manager_DCM_SP_INST_PSCLKINV_1121,
      PSDONE => digital_clock_manager_DCM_SP_INST_PSDONE,
      LOCKED => digital_clock_manager_DCM_SP_INST_LOCKED,
      CLKFX180 => digital_clock_manager_DCM_SP_INST_CLKFX180,
      CLKFX => digital_clock_manager_CLKFX_BUF,
      CLKDV => digital_clock_manager_DCM_SP_INST_CLKDV,
      CLK2X180 => digital_clock_manager_DCM_SP_INST_CLK2X180,
      CLK2X => digital_clock_manager_DCM_SP_INST_CLK2X,
      CLK270 => digital_clock_manager_DCM_SP_INST_CLK270,
      CLK180 => digital_clock_manager_DCM_SP_INST_CLK180,
      CLK90 => digital_clock_manager_DCM_SP_INST_CLK90,
      CLK0 => digital_clock_manager_CLK0_BUF,
      STATUS(7) => digital_clock_manager_DCM_SP_INST_STATUS7,
      STATUS(6) => digital_clock_manager_DCM_SP_INST_STATUS6,
      STATUS(5) => digital_clock_manager_DCM_SP_INST_STATUS5,
      STATUS(4) => digital_clock_manager_DCM_SP_INST_STATUS4,
      STATUS(3) => digital_clock_manager_DCM_SP_INST_STATUS3,
      STATUS(2) => digital_clock_manager_DCM_SP_INST_STATUS2,
      STATUS(1) => digital_clock_manager_DCM_SP_INST_STATUS1,
      STATUS(0) => digital_clock_manager_DCM_SP_INST_STATUS0
    );
  digital_clock_manager_DCM_SP_INST_CLKFB_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk0,
      O => digital_clock_manager_DCM_SP_INST_CLKFB_BUF_1120
    );
  digital_clock_manager_DCM_SP_INST_CLKIN_BUF : X_BUF
    generic map(
      LOC => "DCM_X0Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_INBUF,
      O => digital_clock_manager_DCM_SP_INST_CLKIN_BUF_1119
    );
  digital_clock_manager_CLK0_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y1"
    )
    port map (
      I0 => digital_clock_manager_CLK0_BUFG_INST_I0_INV,
      I1 => GND,
      S => digital_clock_manager_CLK0_BUFG_INST_S_INVNOT,
      O => clk0
    );
  digital_clock_manager_CLK0_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => digital_clock_manager_CLK0_BUFG_INST_S_INVNOT
    );
  digital_clock_manager_CLK0_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y1",
      PATHPULSE => 555 ps
    )
    port map (
      I => digital_clock_manager_CLK0_BUF,
      O => digital_clock_manager_CLK0_BUFG_INST_I0_INV
    );
  digital_clock_manager_CLKFX_BUFG_INST : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y0"
    )
    port map (
      I0 => digital_clock_manager_CLKFX_BUFG_INST_I0_INV,
      I1 => GND,
      S => digital_clock_manager_CLKFX_BUFG_INST_S_INVNOT,
      O => clkfx
    );
  digital_clock_manager_CLKFX_BUFG_INST_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => digital_clock_manager_CLKFX_BUFG_INST_S_INVNOT
    );
  digital_clock_manager_CLKFX_BUFG_INST_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y0",
      PATHPULSE => 555 ps
    )
    port map (
      I => digital_clock_manager_CLKFX_BUF,
      O => digital_clock_manager_CLKFX_BUFG_INST_I0_INV
    );
  inst_display_inst_cathode_manager_nibble_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_cathode_manager_nibble_3_F5MUX_1172,
      O => inst_display_inst_cathode_manager_nibble(3)
    );
  inst_display_inst_cathode_manager_nibble_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y13"
    )
    port map (
      IA => inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_4_1162,
      IB => inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_3_1170,
      SEL => inst_display_inst_cathode_manager_nibble_3_BXINV_1164,
      O => inst_display_inst_cathode_manager_nibble_3_F5MUX_1172
    );
  inst_display_inst_cathode_manager_nibble_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble_3_BXINV_1164
    );
  inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => edge_triggered_lsbvalues_q(7),
      ADR1 => inst_display_inst_counter_count(0),
      ADR2 => VCC,
      ADR3 => edge_triggered_lsbvalues_q(3),
      O => inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_4_1162
    );
  inst_display_inst_anode_manager_enable_anode_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_anode_manager_enable_anode_F5MUX_1197,
      O => inst_display_inst_anode_manager_enable_anode
    );
  inst_display_inst_anode_manager_enable_anode_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X2Y16"
    )
    port map (
      IA => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_1187,
      IB => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_1195,
      SEL => inst_display_inst_anode_manager_enable_anode_BXINV_1189,
      O => inst_display_inst_anode_manager_enable_anode_F5MUX_1197
    );
  inst_display_inst_anode_manager_enable_anode_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y16",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => inst_display_inst_anode_manager_enable_anode_BXINV_1189
    );
  inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => edge_triggered_en_dots_q(4),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_en_dots_q(5),
      O => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_4_1187
    );
  inst_display_inst_cathode_manager_nibble_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_cathode_manager_nibble_0_F5MUX_1222,
      O => inst_display_inst_cathode_manager_nibble(0)
    );
  inst_display_inst_cathode_manager_nibble_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X3Y10"
    )
    port map (
      IA => inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_4_1212,
      IB => inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_3_1220,
      SEL => inst_display_inst_cathode_manager_nibble_0_BXINV_1214,
      O => inst_display_inst_cathode_manager_nibble_0_F5MUX_1222
    );
  inst_display_inst_cathode_manager_nibble_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => inst_display_inst_counter_count(1),
      O => inst_display_inst_cathode_manager_nibble_0_BXINV_1214
    );
  inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_4 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => edge_triggered_lsbvalues_q(0),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_lsbvalues_q(4),
      O => inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_4_1212
    );
  inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X2Y11"
    )
    port map (
      ADR0 => edge_triggered_msbvalues_q(5),
      ADR1 => inst_display_inst_counter_count(0),
      ADR2 => VCC,
      ADR3 => edge_triggered_msbvalues_q(1),
      O => inst_display_inst_cathode_manager_mux16_4_1_inst_mux4_1_Mmux_X_3_378
    );
  inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X3Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => edge_triggered_msbvalues_q(6),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_msbvalues_q(2),
      O => inst_display_inst_cathode_manager_mux16_4_2_inst_mux4_1_Mmux_X_3_403
    );
  inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"05F5",
      LOC => "SLICE_X3Y5"
    )
    port map (
      ADR0 => edge_triggered_en_dots_q(2),
      ADR1 => VCC,
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_en_dots_q(3),
      O => inst_display_inst_cathode_manager_inst_dots_manager_Mmux_X_3_428
    );
  edge_triggered_lsbvalues_q_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_1_DYMUX_443,
      CE => edge_triggered_lsbvalues_q_1_CEINV_439,
      CLK => edge_triggered_lsbvalues_q_1_CLKINV_440,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_1_SRINV_441,
      O => edge_triggered_lsbvalues_q(0)
    );
  edge_triggered_lsbvalues_q_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y6",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_1_DXMUX_452,
      CE => edge_triggered_lsbvalues_q_1_CEINV_439,
      CLK => edge_triggered_lsbvalues_q_1_CLKINV_440,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_1_SRINV_441,
      O => edge_triggered_lsbvalues_q(1)
    );
  edge_triggered_lsbvalues_q_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_3_DYMUX_471,
      CE => edge_triggered_lsbvalues_q_3_CEINV_467,
      CLK => edge_triggered_lsbvalues_q_3_CLKINV_468,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_3_SRINV_469,
      O => edge_triggered_lsbvalues_q(2)
    );
  edge_triggered_lsbvalues_q_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_3_DXMUX_480,
      CE => edge_triggered_lsbvalues_q_3_CEINV_467,
      CLK => edge_triggered_lsbvalues_q_3_CLKINV_468,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_3_SRINV_469,
      O => edge_triggered_lsbvalues_q(3)
    );
  edge_triggered_lsbvalues_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_5_DYMUX_499,
      CE => edge_triggered_lsbvalues_q_5_CEINV_495,
      CLK => edge_triggered_lsbvalues_q_5_CLKINV_496,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_5_SRINV_497,
      O => edge_triggered_lsbvalues_q(4)
    );
  edge_triggered_lsbvalues_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_5_DXMUX_508,
      CE => edge_triggered_lsbvalues_q_5_CEINV_495,
      CLK => edge_triggered_lsbvalues_q_5_CLKINV_496,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_5_SRINV_497,
      O => edge_triggered_lsbvalues_q(5)
    );
  anodes_n_1_1 : X_LUT4
    generic map(
      INIT => X"DFDF",
      LOC => "SLICE_X0Y6"
    )
    port map (
      ADR0 => inst_display_inst_counter_count(0),
      ADR1 => inst_display_inst_counter_count(1),
      ADR2 => inst_display_inst_anode_manager_enable_anode,
      ADR3 => VCC,
      O => anodes_n_1_OBUF_537
    );
  edge_triggered_lsbvalues_q_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y14",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_7_DYMUX_551,
      CE => edge_triggered_lsbvalues_q_7_CEINV_547,
      CLK => edge_triggered_lsbvalues_q_7_CLKINV_548,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_7_SRINV_549,
      O => edge_triggered_lsbvalues_q(6)
    );
  edge_triggered_lsbvalues_q_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y14",
      INIT => '0'
    )
    port map (
      I => edge_triggered_lsbvalues_q_7_DXMUX_560,
      CE => edge_triggered_lsbvalues_q_7_CEINV_547,
      CLK => edge_triggered_lsbvalues_q_7_CLKINV_548,
      SET => GND,
      RST => edge_triggered_lsbvalues_q_7_SRINV_549,
      O => edge_triggered_lsbvalues_q(7)
    );
  edge_triggered_en_dots_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_1_DYMUX_715,
      CE => edge_triggered_en_dots_q_1_CEINV_711,
      CLK => edge_triggered_en_dots_q_1_CLKINV_712,
      SET => GND,
      RST => edge_triggered_en_dots_q_1_SRINV_713,
      O => edge_triggered_en_dots_q(0)
    );
  edge_triggered_en_dots_q_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y3",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_1_DXMUX_724,
      CE => edge_triggered_en_dots_q_1_CEINV_711,
      CLK => edge_triggered_en_dots_q_1_CLKINV_712,
      SET => GND,
      RST => edge_triggered_en_dots_q_1_SRINV_713,
      O => edge_triggered_en_dots_q(1)
    );
  edge_triggered_msbvalues_q_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_3_DYMUX_743,
      CE => edge_triggered_msbvalues_q_3_CEINV_739,
      CLK => edge_triggered_msbvalues_q_3_CLKINV_740,
      SET => GND,
      RST => edge_triggered_msbvalues_q_3_SRINV_741,
      O => edge_triggered_msbvalues_q(2)
    );
  edge_triggered_msbvalues_q_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_3_DXMUX_752,
      CE => edge_triggered_msbvalues_q_3_CEINV_739,
      CLK => edge_triggered_msbvalues_q_3_CLKINV_740,
      SET => GND,
      RST => edge_triggered_msbvalues_q_3_SRINV_741,
      O => edge_triggered_msbvalues_q(3)
    );
  edge_triggered_en_dots_q_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_3_DYMUX_771,
      CE => edge_triggered_en_dots_q_3_CEINV_767,
      CLK => edge_triggered_en_dots_q_3_CLKINV_768,
      SET => GND,
      RST => edge_triggered_en_dots_q_3_SRINV_769,
      O => edge_triggered_en_dots_q(2)
    );
  edge_triggered_en_dots_q_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y6",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_3_DXMUX_780,
      CE => edge_triggered_en_dots_q_3_CEINV_767,
      CLK => edge_triggered_en_dots_q_3_CLKINV_768,
      SET => GND,
      RST => edge_triggered_en_dots_q_3_SRINV_769,
      O => edge_triggered_en_dots_q(3)
    );
  edge_triggered_en_dots_q_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_7_DYMUX_883,
      CE => edge_triggered_en_dots_q_7_CEINV_879,
      CLK => edge_triggered_en_dots_q_7_CLKINV_880,
      SET => GND,
      RST => edge_triggered_en_dots_q_7_SRINV_881,
      O => edge_triggered_en_dots_q(6)
    );
  edge_triggered_en_dots_q_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_7_DXMUX_892,
      CE => edge_triggered_en_dots_q_7_CEINV_879,
      CLK => edge_triggered_en_dots_q_7_CLKINV_880,
      SET => GND,
      RST => edge_triggered_en_dots_q_7_SRINV_881,
      O => edge_triggered_en_dots_q(7)
    );
  inst_display_inst_counter_Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X5Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => inst_display_inst_counter_count(1),
      ADR3 => inst_display_inst_counter_count(0),
      O => Result(1)
    );
  inst_display_inst_counter_count_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      I => inst_display_inst_counter_count_0_DYMUX_920,
      CE => inst_display_inst_counter_count_0_CEINV_908,
      CLK => inst_display_inst_counter_count_0_CLKINV_909,
      SET => GND,
      RST => inst_display_inst_counter_count_0_SRINV_910,
      O => inst_display_inst_counter_count(1)
    );
  inst_display_inst_counter_count_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y2",
      INIT => '0'
    )
    port map (
      I => inst_display_inst_counter_count_0_DXMUX_929,
      CE => inst_display_inst_counter_count_0_CEINV_908,
      CLK => inst_display_inst_counter_count_0_CLKINV_909,
      SET => GND,
      RST => inst_display_inst_counter_count_0_SRINV_910,
      O => inst_display_inst_counter_count(0)
    );
  anodes_n_3_1 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X0Y9"
    )
    port map (
      ADR0 => inst_display_inst_counter_count(0),
      ADR1 => inst_display_inst_counter_count(1),
      ADR2 => inst_display_inst_anode_manager_enable_anode,
      ADR3 => VCC,
      O => anodes_n_3_OBUF_589
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes31 : X_LUT4
    generic map(
      INIT => X"C124",
      LOC => "SLICE_X1Y14"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(3),
      ADR1 => inst_display_inst_cathode_manager_nibble(0),
      ADR2 => inst_display_inst_cathode_manager_nibble(1),
      ADR3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_3_OBUF_613
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes111 : X_LUT4
    generic map(
      INIT => X"B680",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(3),
      ADR1 => inst_display_inst_cathode_manager_nibble(0),
      ADR2 => inst_display_inst_cathode_manager_nibble(1),
      ADR3 => inst_display_inst_cathode_manager_nibble(2),
      O => cathodes_1_OBUF_637
    );
  inst_display_inst_cathode_manager_inst_encoder_Mrom_cathodes61 : X_LUT4
    generic map(
      INIT => X"0291",
      LOC => "SLICE_X12Y13"
    )
    port map (
      ADR0 => inst_display_inst_cathode_manager_nibble(2),
      ADR1 => inst_display_inst_cathode_manager_nibble(1),
      ADR2 => inst_display_inst_cathode_manager_nibble(0),
      ADR3 => inst_display_inst_cathode_manager_nibble(3),
      O => cathodes_6_OBUF_661
    );
  edge_triggered_msbvalues_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_1_DYMUX_687,
      CE => edge_triggered_msbvalues_q_1_CEINV_683,
      CLK => edge_triggered_msbvalues_q_1_CLKINV_684,
      SET => GND,
      RST => edge_triggered_msbvalues_q_1_SRINV_685,
      O => edge_triggered_msbvalues_q(0)
    );
  edge_triggered_msbvalues_q_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y7",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_1_DXMUX_696,
      CE => edge_triggered_msbvalues_q_1_CEINV_683,
      CLK => edge_triggered_msbvalues_q_1_CLKINV_684,
      SET => GND,
      RST => edge_triggered_msbvalues_q_1_SRINV_685,
      O => edge_triggered_msbvalues_q(1)
    );
  edge_triggered_msbvalues_q_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_5_DYMUX_799,
      CE => edge_triggered_msbvalues_q_5_CEINV_795,
      CLK => edge_triggered_msbvalues_q_5_CLKINV_796,
      SET => GND,
      RST => edge_triggered_msbvalues_q_5_SRINV_797,
      O => edge_triggered_msbvalues_q(4)
    );
  edge_triggered_msbvalues_q_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_5_DXMUX_808,
      CE => edge_triggered_msbvalues_q_5_CEINV_795,
      CLK => edge_triggered_msbvalues_q_5_CLKINV_796,
      SET => GND,
      RST => edge_triggered_msbvalues_q_5_SRINV_797,
      O => edge_triggered_msbvalues_q(5)
    );
  edge_triggered_en_dots_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y16",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_5_DYMUX_827,
      CE => edge_triggered_en_dots_q_5_CEINV_823,
      CLK => edge_triggered_en_dots_q_5_CLKINV_824,
      SET => GND,
      RST => edge_triggered_en_dots_q_5_SRINV_825,
      O => edge_triggered_en_dots_q(4)
    );
  edge_triggered_en_dots_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y16",
      INIT => '0'
    )
    port map (
      I => edge_triggered_en_dots_q_5_DXMUX_836,
      CE => edge_triggered_en_dots_q_5_CEINV_823,
      CLK => edge_triggered_en_dots_q_5_CLKINV_824,
      SET => GND,
      RST => edge_triggered_en_dots_q_5_SRINV_825,
      O => edge_triggered_en_dots_q(5)
    );
  edge_triggered_msbvalues_q_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y14",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_7_DYMUX_855,
      CE => edge_triggered_msbvalues_q_7_CEINV_851,
      CLK => edge_triggered_msbvalues_q_7_CLKINV_852,
      SET => GND,
      RST => edge_triggered_msbvalues_q_7_SRINV_853,
      O => edge_triggered_msbvalues_q(6)
    );
  edge_triggered_msbvalues_q_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y14",
      INIT => '0'
    )
    port map (
      I => edge_triggered_msbvalues_q_7_DXMUX_864,
      CE => edge_triggered_msbvalues_q_7_CEINV_851,
      CLK => edge_triggered_msbvalues_q_7_CLKINV_852,
      SET => GND,
      RST => edge_triggered_msbvalues_q_7_SRINV_853,
      O => edge_triggered_msbvalues_q(7)
    );
  inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"EE22",
      LOC => "SLICE_X2Y13"
    )
    port map (
      ADR0 => edge_triggered_msbvalues_q(3),
      ADR1 => inst_display_inst_counter_count(0),
      ADR2 => VCC,
      ADR3 => edge_triggered_msbvalues_q(7),
      O => inst_display_inst_cathode_manager_mux16_4_3_inst_mux4_1_Mmux_X_3_1170
    );
  inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X2Y16"
    )
    port map (
      ADR0 => edge_triggered_en_dots_q(7),
      ADR1 => VCC,
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => edge_triggered_en_dots_q(6),
      O => inst_display_inst_anode_manager_inst_mux4_1_Mmux_X_3_1195
    );
  inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_3 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X3Y10"
    )
    port map (
      ADR0 => edge_triggered_msbvalues_q(4),
      ADR1 => edge_triggered_msbvalues_q(0),
      ADR2 => inst_display_inst_counter_count(0),
      ADR3 => VCC,
      O => inst_display_inst_cathode_manager_mux16_4_0_inst_mux4_1_Mmux_X_3_1220
    );
  anodes_n_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 555 ps
    )
    port map (
      I => anodes_n_0_OBUF_529,
      O => anodes_n_0_O
    );
  anodes_n_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 555 ps
    )
    port map (
      I => anodes_n_1_OBUF_537,
      O => anodes_n_1_O
    );
  anodes_n_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 555 ps
    )
    port map (
      I => anodes_n_2_OBUF_581,
      O => anodes_n_2_O
    );
  cathodes_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_0_OBUF_606,
      O => cathodes_0_O
    );
  anodes_n_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 555 ps
    )
    port map (
      I => anodes_n_3_OBUF_589,
      O => anodes_n_3_O
    );
  cathodes_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_1_OBUF_637,
      O => cathodes_1_O
    );
  cathodes_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_2_OBUF_630,
      O => cathodes_2_O
    );
  cathodes_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_3_OBUF_613,
      O => cathodes_3_O
    );
  cathodes_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_4_OBUF_654,
      O => cathodes_4_O
    );
  cathodes_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_5_OBUF_673,
      O => cathodes_5_O
    );
  cathodes_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_6_OBUF_661,
      O => cathodes_6_O
    );
  cathodes_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 555 ps
    )
    port map (
      I => cathodes_7_OBUF_F5MUX_430,
      O => cathodes_7_O
    );
  NlwBufferBlock_digital_clock_manager_DCM_SP_INST_RST : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => edge_triggered_en_dots_reset_n_inv,
      O => NlwBufferSignal_digital_clock_manager_DCM_SP_INST_RST
    );
  NlwBlock_display_cu_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_display_cu_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

