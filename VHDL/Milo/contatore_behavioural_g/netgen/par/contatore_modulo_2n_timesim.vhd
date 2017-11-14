--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: contatore_modulo_2n_timesim.vhd
-- /___/   /\     Timestamp: Fri Nov 10 21:20:32 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf contatore_modulo_2n.pcf -rpw 100 -tpw 0 -ar Structure -tm contatore_modulo_2n -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim contatore_modulo_2n.ncd contatore_modulo_2n_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: contatore_modulo_2n.ncd
-- Output file	: /home/sav/ASE/contatore_behavioural_g/netgen/par/contatore_modulo_2n_timesim.vhd
-- # of Entities	: 1
-- Design Name	: contatore_modulo_2n
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

entity contatore_modulo_2n is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    hit : out STD_LOGIC; 
    enable : in STD_LOGIC := 'X'; 
    output : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end contatore_modulo_2n;

architecture Structure of contatore_modulo_2n is
  signal clk_BUFGP : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal enable_INBUF : STD_LOGIC; 
  signal output_0_O : STD_LOGIC; 
  signal output_1_O : STD_LOGIC; 
  signal hit_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal count_0_DXMUX_114 : STD_LOGIC; 
  signal count_0_DYMUX_105 : STD_LOGIC; 
  signal count_0_SRINVNOT : STD_LOGIC; 
  signal count_0_CLKINV_94 : STD_LOGIC; 
  signal count_0_CEINV_93 : STD_LOGIC; 
  signal hit_OUTPUT_OFF_O1INV_73 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  enable_IBUF : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 555 ps
    )
    port map (
      I => enable,
      O => enable_INBUF
    );
  output_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => output_0_O,
      O => output(0)
    );
  output_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => output_1_O,
      O => output(1)
    );
  hit_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => hit_O,
      O => hit
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
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
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(0),
      O => count_0_DXMUX_114
    );
  count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => count_0_DYMUX_105
    );
  count_0_SRINV : X_INV
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => count_0_SRINVNOT
    );
  count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => count_0_CLKINV_94
    );
  count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y43",
      PATHPULSE => 555 ps
    )
    port map (
      I => enable_INBUF,
      O => count_0_CEINV_93
    );
  Mcount_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X29Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => count(1),
      ADR3 => count(0),
      O => Result(1)
    );
  count_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y43",
      INIT => '0'
    )
    port map (
      I => count_0_DYMUX_105,
      CE => count_0_CEINV_93,
      CLK => count_0_CLKINV_94,
      SET => GND,
      RST => count_0_SRINVNOT,
      O => count(1)
    );
  count_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y43",
      INIT => '0'
    )
    port map (
      I => count_0_DXMUX_114,
      CE => count_0_CEINV_93,
      CLK => count_0_CLKINV_94,
      SET => GND,
      RST => count_0_SRINVNOT,
      O => count(0)
    );
  output_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(0),
      O => output_0_O
    );
  output_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 555 ps
    )
    port map (
      I => count(1),
      O => output_1_O
    );
  hit_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => hit_OUTPUT_OFF_O1INV_73,
      O => hit_O
    );
  hit_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => hit_OUTPUT_OFF_O1INV_73
    );
  NlwBlock_contatore_modulo_2n_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_contatore_modulo_2n_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

