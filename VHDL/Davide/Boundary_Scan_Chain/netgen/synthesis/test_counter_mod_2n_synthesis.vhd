--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: test_counter_mod_2n_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 20 17:10:06 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm test_counter_mod_2n -w -dir netgen/synthesis -ofmt vhdl -sim test_counter_mod_2n.ngc test_counter_mod_2n_synthesis.vhd 
-- Device	: xc3s100e-5-tq144
-- Input file	: test_counter_mod_2n.ngc
-- Output file	: C:\DAVIDE\ASE\Esercizi\ISE\Boundary_Scan_Chain\netgen\synthesis\test_counter_mod_2n_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: test_counter_mod_2n
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

entity test_counter_mod_2n is
  port (
    scan_in : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    counter_en : in STD_LOGIC := 'X'; 
    scan_out : out STD_LOGIC; 
    scan_en : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end test_counter_mod_2n;

architecture Structure of test_counter_mod_2n is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal counter_en_IBUF_3 : STD_LOGIC; 
  signal inst_chain_chain_gen_0_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv : STD_LOGIC; 
  signal inst_chain_chain_gen_1_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal inst_chain_chain_gen_2_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal inst_chain_chain_gen_3_inst_edge_triggered_q_0_Q : STD_LOGIC; 
  signal reset_n_IBUF_31 : STD_LOGIC; 
  signal scan_en_IBUF_33 : STD_LOGIC; 
  signal scan_in_IBUF_35 : STD_LOGIC; 
  signal inst_chain_q : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal inst_chain_x : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_counter_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal inst_counter_count_add0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  inst_counter_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => counter_en_IBUF_3,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_counter_count_add0000(3),
      Q => inst_counter_count(3)
    );
  inst_counter_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => counter_en_IBUF_3,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_counter_count_add0000(2),
      Q => inst_counter_count(2)
    );
  inst_counter_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => counter_en_IBUF_3,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_counter_count_add0000(1),
      Q => inst_counter_count(1)
    );
  inst_counter_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => counter_en_IBUF_3,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_counter_count_add0000(0),
      Q => inst_counter_count(0)
    );
  inst_chain_chain_gen_0_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_chain_x(0),
      Q => inst_chain_chain_gen_0_inst_edge_triggered_q_0_Q
    );
  inst_chain_chain_gen_1_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_chain_x(1),
      Q => inst_chain_chain_gen_1_inst_edge_triggered_q_0_Q
    );
  inst_chain_chain_gen_2_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_chain_x(2),
      Q => inst_chain_chain_gen_2_inst_edge_triggered_q_0_Q
    );
  inst_chain_chain_gen_3_inst_edge_triggered_q_0 : FDC
    port map (
      C => clk_BUFGP_1,
      CLR => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv,
      D => inst_chain_x(3),
      Q => inst_chain_chain_gen_3_inst_edge_triggered_q_0_Q
    );
  inst_chain_q_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => scan_en_IBUF_33,
      D => inst_chain_q(3),
      Q => inst_chain_q(4)
    );
  inst_chain_q_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => scan_en_IBUF_33,
      D => inst_chain_q(2),
      Q => inst_chain_q(3)
    );
  inst_chain_q_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => scan_en_IBUF_33,
      D => inst_chain_q(1),
      Q => inst_chain_q(2)
    );
  inst_chain_q_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => scan_en_IBUF_33,
      D => inst_chain_q(0),
      Q => inst_chain_q(1)
    );
  inst_chain_q_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => scan_en_IBUF_33,
      D => scan_in_IBUF_35,
      Q => inst_chain_q(0)
    );
  inst_counter_Madd_count_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_counter_count(1),
      I1 => inst_counter_count(0),
      O => inst_counter_count_add0000(1)
    );
  inst_chain_chain_gen_3_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => scan_en_IBUF_33,
      I1 => inst_counter_count(3),
      I2 => inst_chain_q(3),
      O => inst_chain_x(3)
    );
  inst_chain_chain_gen_2_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => scan_en_IBUF_33,
      I1 => inst_chain_q(2),
      I2 => inst_counter_count(2),
      O => inst_chain_x(2)
    );
  inst_chain_chain_gen_1_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => scan_en_IBUF_33,
      I1 => inst_chain_q(1),
      I2 => inst_counter_count(1),
      O => inst_chain_x(1)
    );
  inst_chain_chain_gen_0_inst_mux2_1_X1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => scan_en_IBUF_33,
      I1 => inst_chain_q(0),
      I2 => inst_counter_count(0),
      O => inst_chain_x(0)
    );
  inst_counter_Madd_count_add0000_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => inst_counter_count(2),
      I1 => inst_counter_count(1),
      I2 => inst_counter_count(0),
      O => inst_counter_count_add0000(2)
    );
  inst_counter_Madd_count_add0000_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => inst_counter_count(3),
      I1 => inst_counter_count(2),
      I2 => inst_counter_count(1),
      I3 => inst_counter_count(0),
      O => inst_counter_count_add0000(3)
    );
  scan_in_IBUF : IBUF
    port map (
      I => scan_in,
      O => scan_in_IBUF_35
    );
  reset_n_IBUF : IBUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_31
    );
  counter_en_IBUF : IBUF
    port map (
      I => counter_en,
      O => counter_en_IBUF_3
    );
  scan_en_IBUF : IBUF
    port map (
      I => scan_en,
      O => scan_en_IBUF_33
    );
  scan_out_OBUF : OBUF
    port map (
      I => inst_chain_q(4),
      O => scan_out
    );
  dout_3_OBUF : OBUF
    port map (
      I => inst_chain_chain_gen_3_inst_edge_triggered_q_0_Q,
      O => dout(3)
    );
  dout_2_OBUF : OBUF
    port map (
      I => inst_chain_chain_gen_2_inst_edge_triggered_q_0_Q,
      O => dout(2)
    );
  dout_1_OBUF : OBUF
    port map (
      I => inst_chain_chain_gen_1_inst_edge_triggered_q_0_Q,
      O => dout(1)
    );
  dout_0_OBUF : OBUF
    port map (
      I => inst_chain_chain_gen_0_inst_edge_triggered_q_0_Q,
      O => dout(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  inst_counter_reset_n_inv1_INV_0 : INV
    port map (
      I => reset_n_IBUF_31,
      O => inst_chain_chain_gen_0_inst_edge_triggered_reset_n_inv
    );
  inst_counter_Madd_count_add0000_xor_0_11_INV_0 : INV
    port map (
      I => inst_counter_count(0),
      O => inst_counter_count_add0000(0)
    );

end Structure;

