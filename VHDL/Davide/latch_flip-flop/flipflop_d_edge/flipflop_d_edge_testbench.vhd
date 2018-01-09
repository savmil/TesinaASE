--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:33 01/09/2018
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/latch_flip-flop/flipflop_d_edge/flipflop_d_edge_testbench.vhd
-- Project Name:  flipflop_d_edge
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflop_d_edge
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
 
ENTITY flipflop_d_edge_testbench IS
END flipflop_d_edge_testbench;
 
ARCHITECTURE behavior OF flipflop_d_edge_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflop_d_edge
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
   uut: flipflop_d_edge PORT MAP (
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
		d <= '0', '1' after 5 ns, '0' after 14 ns, '0' after 18 ns,  '1' after 21 ns, 
			  '0' after 23 ns, '1' after 25 ns, '0' after 40 ns, '1' after 43 ns, '0' after 48 ns;  

      wait;
   end process;

END;
