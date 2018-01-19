--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: boundary_scan_chain_synthesis.vhd
-- /___/   /\     Timestamp: Mon Jan 15 12:15:39 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm boundary_scan_chain -w -dir netgen/synthesis -ofmt vhdl -sim boundary_scan_chain.ngc boundary_scan_chain_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: boundary_scan_chain.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\Boundary_Scan_Chain_process\netgen\synthesis\boundary_scan_chain_synthesis.vhd
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
    dout : out STD_LOGIC_VECTOR ( 0 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 0 downto 0 ) 
  );
end boundary_scan_chain;

architecture Structure of boundary_scan_chain is
  signal chain_gen_0_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal chain_gen_0_inst_edge_triggered_reset_n_inv : STD_LOGIC; 
  signal clk_BUFGP_3 : STD_LOGIC; 
  signal din_0_IBUF_5 : STD_LOGIC; 
  signal q_0_1_8 : STD_LOGIC; 
  signal reset_n_IBUF_10 : STD_LOGIC; 
  signal scan_en_IBUF_12 : STD_LOGIC; 
  signal scan_in_IBUF_14 : STD_LOGIC; 
  signal x : STD_LOGIC; 
  signal q : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  q_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_3,
      CE => scan_en_IBUF_12,
      D => scan_in_IBUF_14,
      Q => q(0)
    );
  chain_gen_0_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_3,
      CLR => chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => x,
      Q => chain_gen_0_inst_edge_triggered_q_0_Q
    );
  chain_gen_0_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_12,
      I1 => din_0_IBUF_5,
      I2 => q(0),
      O => x
    );
  scan_in_IBUF : IBUF
    port map (
      I => scan_in,
      O => scan_in_IBUF_14
    );
  reset_n_IBUF : IBUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_10
    );
  scan_en_IBUF : IBUF
    port map (
      I => scan_en,
      O => scan_en_IBUF_12
    );
  din_0_IBUF : IBUF
    port map (
      I => din(0),
      O => din_0_IBUF_5
    );
  scan_out_OBUF : OBUF
    port map (
      I => q_0_1_8,
      O => scan_out
    );
  dout_0_OBUF : OBUF
    port map (
      I => chain_gen_0_inst_edge_triggered_q_0_Q,
      O => dout(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_3
    );
  chain_gen_0_inst_edge_triggered_reset_n_inv1_INV_0 : INV
    port map (
      I => reset_n_IBUF_10,
      O => chain_gen_0_inst_edge_triggered_reset_n_inv
    );
  q_0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_3,
      CE => scan_en_IBUF_12,
      D => scan_in_IBUF_14,
      Q => q_0_1_8
    );

end Structure;

