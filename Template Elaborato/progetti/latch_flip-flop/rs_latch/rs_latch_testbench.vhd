--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:24:51 01/05/2018
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/rs_latch/rs_latch_testbench.vhd
-- Project Name:  rs_latch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rs_latch
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
 
ENTITY rs_latch_testbench IS
END rs_latch_testbench;
 
ARCHITECTURE behavior OF rs_latch_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rs_latch
    PORT(
         r : IN  std_logic;
         s : IN  std_logic;
         q : OUT  std_logic;
         notq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal notq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rs_latch PORT MAP (
          r => r,
          s => s,
          q => q,
          notq => notq
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	
		
--      wait for <clock>_period*10;

      -- insert stimulus here 
		s <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 65 ns, '0' after 80 ns, '1' after 100 ns;
		r <= '0', '1' after 45 ns, '0' after 80 ns, '1' after 90 ns; 

      wait;
   end process;

END;
