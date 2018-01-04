--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: shift_register_pilotato_translate.vhd
-- /___/   /\     Timestamp: Thu Nov 22 16:10:24 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm shift_register_pilotato -w -dir netgen/translate -ofmt vhdl -sim shift_register_pilotato.ngd shift_register_pilotato_translate.vhd 
-- Device	: 3s1200efg320-5
-- Input file	: shift_register_pilotato.ngd
-- Output file	: C:\Users\Mario\Desktop\rippleCarry\BootMultiplier\netgen\translate\shift_register_pilotato_translate.vhd
-- # of Entities	: 1
-- Design Name	: shift_register_pilotato
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

entity shift_register_pilotato is
  port (
    scan_in : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    en : in STD_LOGIC := 'X'; 
    scan_out : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X'; 
    scan_en : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    reg_in : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end shift_register_pilotato;

architecture Structure of shift_register_pilotato is
  signal clock_BUFGP : STD_LOGIC; 
  signal en_IBUF_6 : STD_LOGIC; 
  signal q_7_OBUF_15 : STD_LOGIC; 
  signal reg_in_0_IBUF_24 : STD_LOGIC; 
  signal reg_in_1_IBUF_25 : STD_LOGIC; 
  signal reg_in_2_IBUF_26 : STD_LOGIC; 
  signal reg_in_3_IBUF_27 : STD_LOGIC; 
  signal reg_in_4_IBUF_28 : STD_LOGIC; 
  signal reg_in_5_IBUF_29 : STD_LOGIC; 
  signal reg_in_6_IBUF_30 : STD_LOGIC; 
  signal reg_in_7_IBUF_31 : STD_LOGIC; 
  signal reset_n_IBUF_33 : STD_LOGIC; 
  signal scan_en_IBUF_35 : STD_LOGIC; 
  signal shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_38 : STD_LOGIC; 
  signal shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv : STD_LOGIC; 
  signal shift_reg_0_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_41 : STD_LOGIC; 
  signal shift_reg_1_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_43 : STD_LOGIC; 
  signal shift_reg_2_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_45 : STD_LOGIC; 
  signal shift_reg_3_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_47 : STD_LOGIC; 
  signal shift_reg_4_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_49 : STD_LOGIC; 
  signal shift_reg_5_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_51 : STD_LOGIC; 
  signal shift_reg_6_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_53 : STD_LOGIC; 
  signal shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_1_54 : STD_LOGIC; 
  signal shift_reg_7_shift_reg_right_ffd_with_mux_true_d : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
begin
  shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_7_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_53,
      SET => GND
    );
  shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_6_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_51,
      SET => GND
    );
  shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_5_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_49,
      SET => GND
    );
  shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_4_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_47,
      SET => GND
    );
  shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_3_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_45,
      SET => GND
    );
  shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_2_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_43,
      SET => GND
    );
  shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_1_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_41,
      SET => GND
    );
  shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_0_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_38,
      SET => GND
    );
  shift_reg_7_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => scan_en_IBUF_35,
      ADR1 => q_7_OBUF_15,
      ADR2 => reg_in_7_IBUF_31,
      O => shift_reg_7_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_6_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_6_IBUF_30,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_53,
      O => shift_reg_6_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_5_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_5_IBUF_29,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_51,
      O => shift_reg_5_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_4_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_4_IBUF_28,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_49,
      O => shift_reg_4_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_3_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_3_IBUF_27,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_47,
      O => shift_reg_3_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_2_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_2_IBUF_26,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_45,
      O => shift_reg_2_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_1_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_1_IBUF_25,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_43,
      O => shift_reg_1_shift_reg_right_ffd_with_mux_true_d
    );
  shift_reg_0_shift_reg_right_ffd_with_mux_mux_o1 : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_0_IBUF_24,
      ADR1 => scan_en_IBUF_35,
      ADR2 => shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_41,
      O => shift_reg_0_shift_reg_right_ffd_with_mux_true_d
    );
  scan_in_IBUF : X_BUF
    port map (
      I => scan_in,
      O => q_7_OBUF_15
    );
  reset_n_IBUF : X_BUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_33
    );
  en_IBUF : X_BUF
    port map (
      I => en,
      O => en_IBUF_6
    );
  scan_en_IBUF : X_BUF
    port map (
      I => scan_en,
      O => scan_en_IBUF_35
    );
  reg_in_7_IBUF : X_BUF
    port map (
      I => reg_in(7),
      O => reg_in_7_IBUF_31
    );
  reg_in_6_IBUF : X_BUF
    port map (
      I => reg_in(6),
      O => reg_in_6_IBUF_30
    );
  reg_in_5_IBUF : X_BUF
    port map (
      I => reg_in(5),
      O => reg_in_5_IBUF_29
    );
  reg_in_4_IBUF : X_BUF
    port map (
      I => reg_in(4),
      O => reg_in_4_IBUF_28
    );
  reg_in_3_IBUF : X_BUF
    port map (
      I => reg_in(3),
      O => reg_in_3_IBUF_27
    );
  reg_in_2_IBUF : X_BUF
    port map (
      I => reg_in(2),
      O => reg_in_2_IBUF_26
    );
  reg_in_1_IBUF : X_BUF
    port map (
      I => reg_in(1),
      O => reg_in_1_IBUF_25
    );
  reg_in_0_IBUF : X_BUF
    port map (
      I => reg_in(0),
      O => reg_in_0_IBUF_24
    );
  shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv1_INV_0 : X_INV
    port map (
      I => reset_n_IBUF_33,
      O => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv
    );
  shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => en_IBUF_6,
      RST => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_reset_n_inv,
      I => shift_reg_7_shift_reg_right_ffd_with_mux_true_d,
      O => shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_1_54,
      SET => GND
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
  q_0_OBUF : X_OBUF
    port map (
      I => shift_reg_1_shift_reg_right_ffd_with_mux_ffd_q_41,
      O => q(0)
    );
  q_1_OBUF : X_OBUF
    port map (
      I => shift_reg_2_shift_reg_right_ffd_with_mux_ffd_q_43,
      O => q(1)
    );
  q_2_OBUF : X_OBUF
    port map (
      I => shift_reg_3_shift_reg_right_ffd_with_mux_ffd_q_45,
      O => q(2)
    );
  q_3_OBUF : X_OBUF
    port map (
      I => shift_reg_4_shift_reg_right_ffd_with_mux_ffd_q_47,
      O => q(3)
    );
  q_4_OBUF : X_OBUF
    port map (
      I => shift_reg_5_shift_reg_right_ffd_with_mux_ffd_q_49,
      O => q(4)
    );
  q_5_OBUF : X_OBUF
    port map (
      I => shift_reg_6_shift_reg_right_ffd_with_mux_ffd_q_51,
      O => q(5)
    );
  q_6_OBUF : X_OBUF
    port map (
      I => shift_reg_7_shift_reg_right_ffd_with_mux_ffd_q_1_54,
      O => q(6)
    );
  q_7_OBUF : X_OBUF
    port map (
      I => q_7_OBUF_15,
      O => q(7)
    );
  scan_out_OBUF : X_OBUF
    port map (
      I => shift_reg_0_shift_reg_right_ffd_with_mux_ffd_q_38,
      O => scan_out
    );
  NlwBlock_shift_register_pilotato_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

