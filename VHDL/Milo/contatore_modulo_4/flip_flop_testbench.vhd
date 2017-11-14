--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:37:53 11/07/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/contatore_modulo_4/flip_flop_testbench.vhd
-- Project Name:  contatore_modulo_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flip_flop_rising_edge
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY flip_flop_testbench IS
END flip_flop_testbench;
 
ARCHITECTURE behavior OF flip_flop_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flip_flop_rising_edge
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         q : OUT  std_logic;
         notq : OUT  std_logic;
         set : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '1';
   signal set : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal notq : std_logic;

   -- Clock period definitions
--   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flip_flop_rising_edge PORT MAP (
          clk => clk,
          enable => enable,
          q => q,
          notq => notq,
          set => set,
          reset => reset
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
      wait for 100 ns;	
		enable<='1';
		wait for 1 ns;
		set<='0';
		reset<='0';
		clk<='0';
		wait for 1 ns;
		set<='1';
		wait for 1 ns;
		clk<='1';
		wait for 1 ns;
		clk<='0';
		wait for 1 ns;
		set<='0';
		reset<='1';
		wait for 1 ns;
		clk<='1';
		wait for 1 ns;
		clk<='0';
		wait for 1 ns;
--      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
