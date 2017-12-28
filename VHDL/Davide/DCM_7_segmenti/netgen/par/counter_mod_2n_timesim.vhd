--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: counter_mod_2n_timesim.vhd
-- /___/   /\     Timestamp: Mon Nov 13 13:30:01 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf counter_mod_2n.pcf -rpw 100 -tpw 0 -ar Structure -tm counter_mod_2n -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim counter_mod_2n.ncd counter_mod_2n_timesim.vhd 
-- Device	: 3s100evq100-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: counter_mod_2n.ncd
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\display_seven_segments\netgen\par\counter_mod_2n_timesim.vhd
-- # of Entities	: 1
-- Design Name	: counter_mod_2n
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity counter_mod_2n is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    counter_hit : out STD_LOGIC; 
    en : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end counter_mod_2n;

architecture Structure of counter_mod_2n is
  signal clk_BUFGP : STD_LOGIC; 
  signal reset_n_INBUF : STD_LOGIC; 
  signal en_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal counter_hit_O : STD_LOGIC; 
  signal q_0_O : STD_LOGIC; 
  signal q_1_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal count_0_DXMUX_130 : STD_LOGIC; 
  signal counter_hit_OBUF_127 : STD_LOGIC; 
  signal count_0_DYMUX_112 : STD_LOGIC; 
  signal count_0_SRINVNOT : STD_LOGIC; 
  signal count_0_CLKINV_101 : STD_LOGIC; 
  signal count_0_CEINV_100 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal count_add0000 : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  reset_n_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n,
      O => reset_n_INBUF
    );
  en_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 555 ps
    )
    port map (
      I => en,
      O => en_INBUF
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
  counter_hit_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => counter_hit_O,
      O => counter_hit
    );
  q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => q_0_O,
      O => q(0)
    );
  q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => q_1_O,
      O => q(1)
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
  count_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X9Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(0),
      O => count_0_DXMUX_130
    );
  count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => count_add0000(1),
      O => count_0_DYMUX_112
    );
  count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X9Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_INBUF,
      O => count_0_SRINVNOT
    );
  count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => count_0_CLKINV_101
    );
  count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_INBUF,
      O => count_0_CEINV_100
    );
  Madd_count_add0000_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X9Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => count(1),
      ADR3 => count(0),
      O => count_add0000(1)
    );
  count_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y43",
      INIT => '0'
    )
    port map (
      I => count_0_DYMUX_112,
      CE => count_0_CEINV_100,
      CLK => count_0_CLKINV_101,
      SET => GND,
      RST => count_0_SRINVNOT,
      O => count(1)
    );
  counter_hit_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X9Y43"
    )
    port map (
      ADR0 => count(1),
      ADR1 => count(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => counter_hit_OBUF_127
    );
  count_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y43",
      INIT => '0'
    )
    port map (
      I => count_0_DXMUX_130,
      CE => count_0_CEINV_100,
      CLK => count_0_CLKINV_101,
      SET => GND,
      RST => count_0_SRINVNOT,
      O => count(0)
    );
  counter_hit_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => counter_hit_OBUF_127,
      O => counter_hit_O
    );
  q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(0),
      O => q_0_O
    );
  q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(1),
      O => q_1_O
    );
  NlwBlock_counter_mod_2n_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_counter_mod_2n_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

