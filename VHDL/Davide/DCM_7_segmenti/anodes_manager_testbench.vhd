--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:26:56 11/14/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/display_seven_segments/anodes_manager_testbench.vhd
-- Project Name:  display_seven_segments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: anodes_manager
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
USE ieee.std_logic_arith.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY anodes_manager_testbench IS
END anodes_manager_testbench;
 
ARCHITECTURE behavior OF anodes_manager_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT anodes_manager
    PORT(
         counter : IN  std_logic_vector(1 downto 0);
         enable_digit : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal counter : std_logic_vector(1 downto 0) := (others => '0');
   signal enable_digit : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: anodes_manager PORT MAP (
          counter => counter,
          enable_digit => enable_digit,
          anodes => anodes
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
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		for i in 0 to 15 loop
			enable_digit <= conv_std_logic_vector(i,4);
			for j in 0 to 3 loop
				counter <= conv_std_logic_vector(j,2);
				wait for 20 ns;
			end loop;
		end loop;

      wait;
   end process;

END;
