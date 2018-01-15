--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: jk_flipflop_timesim.vhd
-- /___/   /\     Timestamp: Sat Jan 13 21:17:47 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf jk_flipflop.pcf -rpw 100 -tpw 0 -ar Structure -tm jk_flipflop -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim jk_flipflop.ncd jk_flipflop_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2012-12-04)
-- Input file	: jk_flipflop.ncd
-- Output file	: C:\Users\Michele\Documents\uni\VHDL\ISE\JKFlipFlop\netgen\par\jk_flipflop_timesim.vhd
-- # of Entities	: 1
-- Design Name	: jk_flipflop
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
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

entity jk_flipflop is
  port (
    reset : in STD_LOGIC := 'X'; 
    notq : out STD_LOGIC; 
    j : in STD_LOGIC := 'X'; 
    k : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X' 
  );
end jk_flipflop;

architecture Structure of jk_flipflop is
  signal j_IBUF_29 : STD_LOGIC; 
  signal k_IBUF_30 : STD_LOGIC; 
  signal stato_31 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal j_INBUF : STD_LOGIC; 
  signal k_INBUF : STD_LOGIC; 
  signal q_O : STD_LOGIC; 
  signal notq_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal clock_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clock_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal stato_DYMUX_97 : STD_LOGIC; 
  signal stato_mux0000 : STD_LOGIC; 
  signal stato_CLKINV_87 : STD_LOGIC; 
  signal stato_FFY_RSTAND_102 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  j_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => j,
      O => j_INBUF
    );
  k_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => k,
      O => k_INBUF
    );
  q_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => q_O,
      O => q
    );
  notq_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => notq_O,
      O => notq
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  clock_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clock_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clock_BUFGP_BUFG_S_INVNOT,
      O => clock_BUFGP
    );
  clock_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clock_BUFGP_BUFG_S_INVNOT
    );
  clock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_BUFGP_BUFG_I0_INV
    );
  stato_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => stato_mux0000,
      O => stato_DYMUX_97
    );
  stato_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => stato_CLKINV_87
    );
  k_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => k_INBUF,
      O => k_IBUF_30
    );
  j_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => j_INBUF,
      O => j_IBUF_29
    );
  Mmux_stato_mux000011 : X_LUT4
    generic map(
      INIT => X"33AA",
      LOC => "SLICE_X31Y40"
    )
    port map (
      ADR0 => j_IBUF_29,
      ADR1 => k_IBUF_30,
      ADR2 => VCC,
      ADR3 => stato_31,
      O => stato_mux0000
    );
  stato : X_FF
    generic map(
      LOC => "SLICE_X31Y40",
      INIT => '0'
    )
    port map (
      I => stato_DYMUX_97,
      CE => VCC,
      CLK => stato_CLKINV_87,
      SET => GND,
      RST => stato_FFY_RSTAND_102,
      O => stato_31
    );
  stato_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X31Y40",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_INBUF,
      O => stato_FFY_RSTAND_102
    );
  q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => stato_31,
      O => q_O
    );
  notq_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => stato_31,
      O => notq_O
    );
  NlwBlock_jk_flipflop_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_jk_flipflop_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

