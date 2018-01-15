--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:43:30 01/13/2018
-- Design Name:   
-- Module Name:   C:/Users/Michele/Documents/uni/VHDL/ISE/JKFlipFlop/jk_flipflop_testbench.vhd
-- Project Name:  JKFlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk_flipflop
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
 
ENTITY jk_flipflop_testbench IS
END jk_flipflop_testbench;
 
ARCHITECTURE behavior OF jk_flipflop_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk_flipflop
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
         q : OUT  std_logic;
         notq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal notq : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_flipflop PORT MAP (
          clock => clock,
          reset => reset,
          j => j,
          k => k,
          q => q,
          notq => notq
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		reset <= '1', '0' after 20 ns;
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		j <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 35 ns, '0' after 70 ns;
		k <= '0', '1' after 25 ns, '0' after 70 ns, '1' after 95 ns, '0' after 140 ns;
      wait;
   end process;

END;
