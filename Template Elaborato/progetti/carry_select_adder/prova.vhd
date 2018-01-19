--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:40:53 12/30/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/carry_select_adder/prova.vhd
-- Project Name:  carry_select_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: carry_select
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
 
ENTITY prova IS
END prova;
 
ARCHITECTURE behavior OF prova IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT carry_select
    PORT(
         adder1 : IN  std_logic_vector(7 downto 0);
         adder2 : IN  std_logic_vector(7 downto 0);
         cin : IN  std_logic;
         cout : OUT  std_logic;
         sum : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(7 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(7 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sum : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: carry_select PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
          cin => cin,
          cout => cout,
          sum => sum
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		cin<='1';
		adder1<=x"FF";
		adder2<=x"FF";
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
