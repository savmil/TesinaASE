--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: counter_translate.vhd
-- /___/   /\     Timestamp: Thu Nov 22 15:27:17 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm counter -w -dir netgen/translate -ofmt vhdl -sim counter.ngd counter_translate.vhd 
-- Device	: 3s1200efg320-5
-- Input file	: counter.ngd
-- Output file	: C:\Users\Mario\Desktop\rippleCarry\BootMultiplier\netgen\translate\counter_translate.vhd
-- # of Entities	: 1
-- Design Name	: counter
-- Xilinx	: C:\Xilinx\14.1\ISE_DS\ISE\
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

entity counter is
  port (
    reset_n : in STD_LOGIC := 'X'; 
    count_up : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    hit : out STD_LOGIC; 
    value : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end counter;

architecture Structure of counter is
  signal clock_BUFGP : STD_LOGIC; 
  signal count_up_IBUF_12 : STD_LOGIC; 
  signal hit_OBUF_14 : STD_LOGIC; 
  signal reset : STD_LOGIC; 
  signal reset_n_IBUF_17 : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  cnt_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up_IBUF_12,
      RST => reset,
      I => Result(0),
      O => cnt(0),
      SET => GND
    );
  cnt_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up_IBUF_12,
      RST => reset,
      I => Result(1),
      O => cnt(1),
      SET => GND
    );
  cnt_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => count_up_IBUF_12,
      RST => reset,
      I => Result(2),
      O => cnt(2),
      SET => GND
    );
  hit_cmp_eq00001 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => cnt(1),
      ADR1 => cnt(0),
      ADR2 => cnt(2),
      O => hit_OBUF_14
    );
  Mcount_cnt_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => cnt(1),
      ADR1 => cnt(0),
      O => Result(1)
    );
  Mcount_cnt_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => cnt(2),
      ADR1 => cnt(1),
      ADR2 => cnt(0),
      O => Result(2)
    );
  reset_n_IBUF : X_BUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_17
    );
  count_up_IBUF : X_BUF
    port map (
      I => count_up,
      O => count_up_IBUF_12
    );
  reset1_INV_0 : X_INV
    port map (
      I => reset_n_IBUF_17,
      O => reset
    );
  Mcount_cnt_xor_0_11_INV_0 : X_INV
    port map (
      I => cnt(0),
      O => Result(0)
    );
  clock_BUFGP_BUFG : X_CKBUF
    port map (
      I => clock_BUFGP_IBUFG_2,
      O => clock_BUFGP
    );
  clock_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clock,
      O => clock_BUFGP_IBUFG_2
    );
  hit_OBUF : X_OBUF
    port map (
      I => hit_OBUF_14,
      O => hit
    );
  value_0_OBUF : X_OBUF
    port map (
      I => cnt(0),
      O => value(0)
    );
  value_1_OBUF : X_OBUF
    port map (
      I => cnt(1),
      O => value(1)
    );
  value_2_OBUF : X_OBUF
    port map (
      I => cnt(2),
      O => value(2)
    );
  NlwBlock_counter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

