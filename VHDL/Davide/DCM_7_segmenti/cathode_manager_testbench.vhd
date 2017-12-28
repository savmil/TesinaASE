--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:34:23 11/13/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/display_seven_segments/cathode_manager_testbench.vhd
-- Project Name:  display_seven_segments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cathode_manager
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
 
ENTITY cathode_manager_testbench IS
END cathode_manager_testbench;
 
ARCHITECTURE behavior OF cathode_manager_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cathode_manager
    PORT(
         counter : IN  std_logic_vector(1 downto 0);
         value : IN  std_logic_vector(15 downto 0);
         dots : IN  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal counter : std_logic_vector(1 downto 0) := (others => '0');
   signal value : std_logic_vector(15 downto 0) := (others => '0');
   signal dots : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cathodes : std_logic_vector(7 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cathode_manager PORT MAP (
          counter => counter,
          value => value,
          dots => dots,
          cathodes => cathodes
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
		dots <= "1000";
		value <= "1010000000001111";
		for i in 0 to 3 loop
			counter <= conv_std_logic_vector(i,2);
			wait for 10 ns;
		end loop;

      wait;
   end process;

END;
