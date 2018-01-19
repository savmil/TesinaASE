--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:49 11/04/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/CarrySaveAdder/carry_save_adder_testbench.vhd
-- Project Name:  CarrySaveAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_save_adder
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
USE ieee.numeric_std.ALL;
 
ENTITY carry_save_adder_testbench IS
END carry_save_adder_testbench;
 
ARCHITECTURE behavior OF carry_save_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_save_adder
    PORT(
         adder : IN  std_logic_vector(5 downto 0);
         sum : OUT  std_logic_vector(2 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal adder : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(2 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_save_adder PORT MAP (
          adder => adder,
          sum => sum,
          cout => cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      for i in 0 to 2**6-1 loop
			wait for 1 ns;
			adder<=std_logic_vector(to_unsigned(i,adder'length));
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
