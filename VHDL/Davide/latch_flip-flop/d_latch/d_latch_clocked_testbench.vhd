--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:51 01/08/2018
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/latch_flip-flop/d_latch/d_latch_clocked_testbench.vhd
-- Project Name:  d_latch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_latch_clocked
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
 
ENTITY d_latch_clocked_testbench IS
END d_latch_clocked_testbench;
 
ARCHITECTURE behavior OF d_latch_clocked_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_latch_clocked
    PORT(
         d : IN  std_logic;
         clock : IN  std_logic;
         q : OUT  std_logic;
         notq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal notq : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_latch_clocked PORT MAP (
          d => d,
          clock => clock,
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
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for clock_period*10;

      -- insert stimulus here 
		d <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 65 ns, '1' after 80 ns,	
		'0' after 100 ns;

      wait;
   end process;

END;
