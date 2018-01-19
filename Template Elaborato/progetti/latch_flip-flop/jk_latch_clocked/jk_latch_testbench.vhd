--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:49:35 01/08/2018
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/latch_flip-flop/jk_latch/jk_latch_testbench.vhd
-- Project Name:  jk_latch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk_latch
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
 
ENTITY jk_latch_testbench IS
END jk_latch_testbench;
 
ARCHITECTURE behavior OF jk_latch_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk_latch
    PORT(
         j : IN  std_logic;
         k : IN  std_logic;
			clock : IN std_logic;
			preset : IN std_logic;
			clear : IN std_logic;
         q : OUT  std_logic;
         notq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal j : std_logic := '0';
   signal k : std_logic := '0';
	signal clock : std_logic := '0';
	signal preset : std_logic := '0';
	signal clear : std_logic := '1';

 	--Outputs
   signal q : std_logic;
   signal notq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant clock_period : time := 5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_latch PORT MAP (
          j => j,
          k => k,
			 clock => clock,
			 preset => preset,
			 clear => clear,
          q => q,
          notq => notq
        );

   -- Clock process definitions
--   clock_process :process
--   begin
--		clock <= '0';
--		wait for clock_period/2;
--		clock <= '1';
--		wait for clock_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here
		clock <= '1', '0' after 75 ns;
		preset <= '1', '0' after 5 ns;
		clear <= '0';
		j <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 35 ns, '0' after 70 ns;
		k <= '0', '1' after 25 ns, '0' after 70 ns, '1' after 95 ns, '0' after 140 ns;

      wait;
   end process;

END;
