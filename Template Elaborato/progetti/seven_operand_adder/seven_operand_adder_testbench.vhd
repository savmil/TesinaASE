--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:37:42 12/27/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/seven_operand_adder/seven_operand_adder_testbench.vhd
-- Project Name:  seven_operand_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seven_operand_adder
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
 
ENTITY seven_operand_adder_testbench IS
END seven_operand_adder_testbench;
 
ARCHITECTURE behavior OF seven_operand_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seven_operand_adder
    PORT(
         adder1 : IN  std_logic_vector(7 downto 0);
         adder2 : IN  std_logic_vector(7 downto 0);
         adder3 : IN  std_logic_vector(7 downto 0);
         adder4 : IN  std_logic_vector(7 downto 0);
         adder5 : IN  std_logic_vector(7 downto 0);
         adder6 : IN  std_logic_vector(7 downto 0);
         adder7 : IN  std_logic_vector(7 downto 0);
         sum : OUT  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder3 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder4 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder5 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder6 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder7 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(10 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seven_operand_adder PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
          adder3 => adder3,
          adder4 => adder4,
          adder5 => adder5,
          adder6 => adder6,
          adder7 => adder7,
          sum => sum
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		adder1<="11111111";
		adder2<="11111111";
		adder3<="11111111";
		adder4<="11111111";
		adder5<="11111111";
		adder6<="11111111";
		adder7<="11111111";
		wait for 20 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
