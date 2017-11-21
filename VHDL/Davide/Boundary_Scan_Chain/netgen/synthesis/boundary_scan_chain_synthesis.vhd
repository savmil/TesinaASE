--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: boundary_scan_chain_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 20 16:23:26 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm boundary_scan_chain -w -dir netgen/synthesis -ofmt vhdl -sim boundary_scan_chain.ngc boundary_scan_chain_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: boundary_scan_chain.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\Boundary_Scan_Chain\netgen\synthesis\boundary_scan_chain_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: boundary_scan_chain
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity boundary_scan_chain is
  port (
    scan_in : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    scan_out : out STD_LOGIC; 
    scan_en : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end boundary_scan_chain;

architecture Structure of boundary_scan_chain is
  signal chain_gen_0_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal chain_gen_0_inst_edge_triggered_reset_n_inv : STD_LOGIC; 
  signal chain_gen_1_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal chain_gen_2_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal chain_gen_3_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal clk_BUFGP_6 : STD_LOGIC; 
  signal din_0_IBUF_11 : STD_LOGIC; 
  signal din_1_IBUF_12 : STD_LOGIC; 
  signal din_2_IBUF_13 : STD_LOGIC; 
  signal din_3_IBUF_14 : STD_LOGIC; 
  signal reset_n_IBUF_25 : STD_LOGIC; 
  signal scan_en_IBUF_27 : STD_LOGIC; 
  signal scan_in_IBUF_29 : STD_LOGIC; 
  signal q : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal x : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  q_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      CE => scan_en_IBUF_27,
      D => scan_in_IBUF_29,
      Q => q(0)
    );
  q_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      CE => scan_en_IBUF_27,
      D => q(0),
      Q => q(1)
    );
  q_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      CE => scan_en_IBUF_27,
      D => q(1),
      Q => q(2)
    );
  q_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      CE => scan_en_IBUF_27,
      D => q(2),
      Q => q(3)
    );
  q_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      CE => scan_en_IBUF_27,
      D => q(3),
      Q => q(4)
    );
  chain_gen_3_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => x(3),
      Q => chain_gen_3_inst_edge_triggered_q_0_Q
    );
  chain_gen_2_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => x(2),
      Q => chain_gen_2_inst_edge_triggered_q_0_Q
    );
  chain_gen_1_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => x(1),
      Q => chain_gen_1_inst_edge_triggered_q_0_Q
    );
  chain_gen_0_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_6,
      CLR => chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => x(0),
      Q => chain_gen_0_inst_edge_triggered_q_0_Q
    );
  chain_gen_3_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_27,
      I1 => din_3_IBUF_14,
      I2 => q(3),
      O => x(3)
    );
  chain_gen_2_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_27,
      I1 => din_2_IBUF_13,
      I2 => q(2),
      O => x(2)
    );
  chain_gen_1_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_27,
      I1 => din_1_IBUF_12,
      I2 => q(1),
      O => x(1)
    );
  chain_gen_0_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_27,
      I1 => din_0_IBUF_11,
      I2 => q(0),
      O => x(0)
    );
  scan_in_IBUF : IBUF
    port map (
      I => scan_in,
      O => scan_in_IBUF_29
    );
  reset_n_IBUF : IBUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_25
    );
  scan_en_IBUF : IBUF
    port map (
      I => scan_en,
      O => scan_en_IBUF_27
    );
  din_3_IBUF : IBUF
    port map (
      I => din(3),
      O => din_3_IBUF_14
    );
  din_2_IBUF : IBUF
    port map (
      I => din(2),
      O => din_2_IBUF_13
    );
  din_1_IBUF : IBUF
    port map (
      I => din(1),
      O => din_1_IBUF_12
    );
  din_0_IBUF : IBUF
    port map (
      I => din(0),
      O => din_0_IBUF_11
    );
  scan_out_OBUF : OBUF
    port map (
      I => q(4),
      O => scan_out
    );
  dout_3_OBUF : OBUF
    port map (
      I => chain_gen_3_inst_edge_triggered_q_0_Q,
      O => dout(3)
    );
  dout_2_OBUF : OBUF
    port map (
      I => chain_gen_2_inst_edge_triggered_q_0_Q,
      O => dout(2)
    );
  dout_1_OBUF : OBUF
    port map (
      I => chain_gen_1_inst_edge_triggered_q_0_Q,
      O => dout(1)
    );
  dout_0_OBUF : OBUF
    port map (
      I => chain_gen_0_inst_edge_triggered_q_0_Q,
      O => dout(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_6
    );
  chain_gen_0_inst_edge_triggered_reset_n_inv1_INV_0 : INV
    port map (
      I => reset_n_IBUF_25,
      O => chain_gen_0_inst_edge_triggered_reset_n_inv
    );

end Structure;

