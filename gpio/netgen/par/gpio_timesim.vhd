--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: gpio_timesim.vhd
-- /___/   /\     Timestamp: Fri Dec 18 11:12:18 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf gpio.pcf -rpw 100 -tpw 0 -ar Structure -tm gpio -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim gpio.ncd gpio_timesim.vhd 
-- Device	: 3s1200efg320-5 (PRODUCTION 1.27 2012-12-04)
-- Input file	: gpio.ncd
-- Output file	: C:\Users\Mario\Desktop\Esercizi_ASE\gpio\netgen\par\gpio_timesim.vhd
-- # of Entities	: 1
-- Design Name	: gpio
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

entity gpio is
  port (
    pads : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    output : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    en_o : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    input : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end gpio;

architecture Structure of gpio is
  signal output_0_O : STD_LOGIC; 
  signal output_1_O : STD_LOGIC; 
  signal output_2_O : STD_LOGIC; 
  signal output_3_O : STD_LOGIC; 
  signal pads_0_O : STD_LOGIC; 
  signal pads_0_T : STD_LOGIC; 
  signal pads_0_INBUF : STD_LOGIC; 
  signal pads_1_O : STD_LOGIC; 
  signal pads_1_T : STD_LOGIC; 
  signal pads_1_INBUF : STD_LOGIC; 
  signal pads_2_O : STD_LOGIC; 
  signal pads_2_T : STD_LOGIC; 
  signal pads_2_INBUF : STD_LOGIC; 
  signal en_o_0_INBUF : STD_LOGIC; 
  signal pads_3_O : STD_LOGIC; 
  signal pads_3_T : STD_LOGIC; 
  signal pads_3_INBUF : STD_LOGIC; 
  signal en_o_1_INBUF : STD_LOGIC; 
  signal en_o_2_INBUF : STD_LOGIC; 
  signal en_o_3_INBUF : STD_LOGIC; 
  signal input_0_INBUF : STD_LOGIC; 
  signal input_1_INBUF : STD_LOGIC; 
  signal input_2_INBUF : STD_LOGIC; 
  signal input_3_INBUF : STD_LOGIC; 
begin
  output_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => output_0_O,
      O => output(0)
    );
  output_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => output_1_O,
      O => output(1)
    );
  output_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => output_2_O,
      O => output(2)
    );
  output_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => output_3_O,
      O => output(3)
    );
  pads_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => pads_0_O,
      CTL => pads_0_T,
      O => pads(0)
    );
  pads_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads(0),
      O => pads_0_INBUF
    );
  pads_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => pads_1_O,
      CTL => pads_1_T,
      O => pads(1)
    );
  pads_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads(1),
      O => pads_1_INBUF
    );
  pads_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => pads_2_O,
      CTL => pads_2_T,
      O => pads(2)
    );
  pads_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads(2),
      O => pads_2_INBUF
    );
  en_o_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD131",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o(0),
      O => en_o_0_INBUF
    );
  pads_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => pads_3_O,
      CTL => pads_3_T,
      O => pads(3)
    );
  pads_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads(3),
      O => pads_3_INBUF
    );
  en_o_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD126",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o(1),
      O => en_o_1_INBUF
    );
  en_o_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD136",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o(2),
      O => en_o_2_INBUF
    );
  en_o_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD148",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o(3),
      O => en_o_3_INBUF
    );
  input_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD106",
      PATHPULSE => 555 ps
    )
    port map (
      I => input(0),
      O => input_0_INBUF
    );
  input_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD111",
      PATHPULSE => 555 ps
    )
    port map (
      I => input(1),
      O => input_1_INBUF
    );
  input_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD116",
      PATHPULSE => 555 ps
    )
    port map (
      I => input(2),
      O => input_2_INBUF
    );
  input_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD121",
      PATHPULSE => 555 ps
    )
    port map (
      I => input(3),
      O => input_3_INBUF
    );
  output_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads_0_INBUF,
      O => output_0_O
    );
  output_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads_1_INBUF,
      O => output_1_O
    );
  output_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads_2_INBUF,
      O => output_2_O
    );
  output_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 555 ps
    )
    port map (
      I => pads_3_INBUF,
      O => output_3_O
    );
  pads_0_OUTPUT_TFF_TMUX : X_INV
    generic map(
      LOC => "PAD124",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o_0_INBUF,
      O => pads_0_T
    );
  pads_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_0_INBUF,
      O => pads_0_O
    );
  pads_1_OUTPUT_TFF_TMUX : X_INV
    generic map(
      LOC => "PAD119",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o_1_INBUF,
      O => pads_1_T
    );
  pads_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_1_INBUF,
      O => pads_1_O
    );
  pads_2_OUTPUT_TFF_TMUX : X_INV
    generic map(
      LOC => "PAD122",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o_2_INBUF,
      O => pads_2_T
    );
  pads_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_2_INBUF,
      O => pads_2_O
    );
  pads_3_OUTPUT_TFF_TMUX : X_INV
    generic map(
      LOC => "PAD130",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_o_3_INBUF,
      O => pads_3_T
    );
  pads_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 555 ps
    )
    port map (
      I => input_3_INBUF,
      O => pads_3_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

