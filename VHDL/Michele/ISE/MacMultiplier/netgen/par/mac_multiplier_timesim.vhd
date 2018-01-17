--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: mac_multiplier_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 17 20:33:46 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf mac_multiplier.pcf -rpw 100 -tpw 0 -ar Structure -tm mac_multiplier -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim mac_multiplier.ncd mac_multiplier_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: mac_multiplier.ncd
-- Output file	: /media/sf_ASE/VHDL/Michele/ISE/MacMultiplier/netgen/par/mac_multiplier_timesim.vhd
-- # of Entities	: 1
-- Design Name	: mac_multiplier
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

entity mac_multiplier is
  port (
    ris : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    s_in : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    c_in : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end mac_multiplier;

architecture Structure of mac_multiplier is
  signal c_in_0_IBUF_76 : STD_LOGIC; 
  signal c_in_1_IBUF_77 : STD_LOGIC; 
  signal s_in_0_IBUF_78 : STD_LOGIC; 
  signal s_in_1_IBUF_79 : STD_LOGIC; 
  signal a_0_IBUF_80 : STD_LOGIC; 
  signal a_1_IBUF_81 : STD_LOGIC; 
  signal b_0_IBUF_82 : STD_LOGIC; 
  signal b_1_IBUF_83 : STD_LOGIC; 
  signal carry_0_2_0 : STD_LOGIC; 
  signal carry_1_1_Q : STD_LOGIC; 
  signal partial_sum_1_1_0 : STD_LOGIC; 
  signal carry_0_1_Q : STD_LOGIC; 
  signal c_in_0_INBUF : STD_LOGIC; 
  signal c_in_1_INBUF : STD_LOGIC; 
  signal s_in_0_INBUF : STD_LOGIC; 
  signal s_in_1_INBUF : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal ris_0_O : STD_LOGIC; 
  signal ris_1_O : STD_LOGIC; 
  signal ris_2_O : STD_LOGIC; 
  signal ris_3_O : STD_LOGIC; 
  signal ris_3_OBUF_193 : STD_LOGIC; 
  signal carry_1_1_pack_2 : STD_LOGIC; 
  signal carry_0_1_pack_2 : STD_LOGIC; 
  signal ris_2_OBUF_241 : STD_LOGIC; 
  signal ris_1_OBUF_234 : STD_LOGIC; 
  signal carry_0_2_Q : STD_LOGIC; 
  signal ris_0_OBUF_258 : STD_LOGIC; 
  signal partial_sum : STD_LOGIC_VECTOR2 ( 1 downto 1 , 1 downto 1 ); 
begin
  c_in_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_in(0),
      O => c_in_0_INBUF
    );
  c_in_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_in_0_INBUF,
      O => c_in_0_IBUF_76
    );
  c_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_in(1),
      O => c_in_1_INBUF
    );
  c_in_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_in_1_INBUF,
      O => c_in_1_IBUF_77
    );
  s_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 694 ps
    )
    port map (
      I => s_in(0),
      O => s_in_0_INBUF
    );
  s_in_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 694 ps
    )
    port map (
      I => s_in_0_INBUF,
      O => s_in_0_IBUF_78
    );
  s_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 694 ps
    )
    port map (
      I => s_in(1),
      O => s_in_1_INBUF
    );
  s_in_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 694 ps
    )
    port map (
      I => s_in_1_INBUF,
      O => s_in_1_IBUF_79
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_80
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_81
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_82
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_83
    );
  ris_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => ris_0_O,
      O => ris(0)
    );
  ris_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => ris_1_O,
      O => ris(1)
    );
  ris_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => ris_2_O,
      O => ris(2)
    );
  ris_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => ris_3_O,
      O => ris(3)
    );
  ris_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y32",
      PATHPULSE => 694 ps
    )
    port map (
      I => carry_1_1_pack_2,
      O => carry_1_1_Q
    );
  mac_matrix_1_mac_row_0_mac_fa_c1 : X_LUT4
    generic map(
      INIT => X"EC80",
      LOC => "SLICE_X0Y32"
    )
    port map (
      ADR0 => a_0_IBUF_80,
      ADR1 => c_in_1_IBUF_77,
      ADR2 => b_1_IBUF_83,
      ADR3 => partial_sum_1_1_0,
      O => carry_1_1_pack_2
    );
  partial_sum_1_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 694 ps
    )
    port map (
      I => partial_sum(1, 1),
      O => partial_sum_1_1_0
    );
  partial_sum_1_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 694 ps
    )
    port map (
      I => carry_0_1_pack_2,
      O => carry_0_1_Q
    );
  mac_matrix_0_mac_row_0_mac_fa_c1 : X_LUT4
    generic map(
      INIT => X"F880",
      LOC => "SLICE_X0Y34"
    )
    port map (
      ADR0 => b_0_IBUF_82,
      ADR1 => a_0_IBUF_80,
      ADR2 => c_in_0_IBUF_76,
      ADR3 => s_in_0_IBUF_78,
      O => carry_0_1_pack_2
    );
  mac_matrix_1_mac_row_0_mac_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X0Y33"
    )
    port map (
      ADR0 => a_0_IBUF_80,
      ADR1 => c_in_1_IBUF_77,
      ADR2 => b_1_IBUF_83,
      ADR3 => partial_sum_1_1_0,
      O => ris_1_OBUF_234
    );
  carry_0_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 694 ps
    )
    port map (
      I => carry_0_2_Q,
      O => carry_0_2_0
    );
  mac_matrix_0_mac_row_0_mac_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"8778",
      LOC => "SLICE_X0Y35"
    )
    port map (
      ADR0 => b_0_IBUF_82,
      ADR1 => a_0_IBUF_80,
      ADR2 => c_in_0_IBUF_76,
      ADR3 => s_in_0_IBUF_78,
      O => ris_0_OBUF_258
    );
  mac_matrix_1_mac_row_1_mac_fa_c1 : X_LUT4
    generic map(
      INIT => X"EC80",
      LOC => "SLICE_X0Y32"
    )
    port map (
      ADR0 => a_1_IBUF_81,
      ADR1 => carry_0_2_0,
      ADR2 => b_1_IBUF_83,
      ADR3 => carry_1_1_Q,
      O => ris_3_OBUF_193
    );
  mac_matrix_0_mac_row_1_mac_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"8778",
      LOC => "SLICE_X0Y34"
    )
    port map (
      ADR0 => b_0_IBUF_82,
      ADR1 => a_1_IBUF_81,
      ADR2 => s_in_1_IBUF_79,
      ADR3 => carry_0_1_Q,
      O => partial_sum(1, 1)
    );
  mac_matrix_1_mac_row_1_mac_fa_ha2_Mxor_s_Result1 : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X0Y33"
    )
    port map (
      ADR0 => a_1_IBUF_81,
      ADR1 => carry_0_2_0,
      ADR2 => b_1_IBUF_83,
      ADR3 => carry_1_1_Q,
      O => ris_2_OBUF_241
    );
  mac_matrix_0_mac_row_1_mac_fa_c1 : X_LUT4
    generic map(
      INIT => X"F880",
      LOC => "SLICE_X0Y35"
    )
    port map (
      ADR0 => b_0_IBUF_82,
      ADR1 => a_1_IBUF_81,
      ADR2 => s_in_1_IBUF_79,
      ADR3 => carry_0_1_Q,
      O => carry_0_2_Q
    );
  ris_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 694 ps
    )
    port map (
      I => ris_0_OBUF_258,
      O => ris_0_O
    );
  ris_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 694 ps
    )
    port map (
      I => ris_1_OBUF_234,
      O => ris_1_O
    );
  ris_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 694 ps
    )
    port map (
      I => ris_2_OBUF_241,
      O => ris_2_O
    );
  ris_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 694 ps
    )
    port map (
      I => ris_3_OBUF_193,
      O => ris_3_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

