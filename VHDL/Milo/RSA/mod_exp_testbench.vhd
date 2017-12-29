--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:34 12/28/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/mod_exp_testbench.vhd
-- Project Name:  RSA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modular_exponentiation
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mod_exp_testbench IS
END mod_exp_testbench;
 
ARCHITECTURE behavior OF mod_exp_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modular_exponentiation
    PORT(
         N : IN  unsigned(31 downto 0);
         Exp : IN  unsigned(31 downto 0);
         M : IN  unsigned(31 downto 0);
         enc_dec : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         C : OUT  unsigned(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal N : unsigned(31 downto 0) := (others => '0');
   signal Exp : unsigned(31 downto 0) := (others => '0');
   signal M : unsigned(31 downto 0) := (others => '0');
   signal enc_dec : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal C : unsigned(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modular_exponentiation PORT MAP (
          N => N,
          Exp => Exp,
          M => M,
          enc_dec => enc_dec,
          clk => clk,
          reset => reset,
          C => C
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';
		N<=x"00000004";
		EXP<=x"00000002";
		M<=x"00000003";
		enc_dec<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
