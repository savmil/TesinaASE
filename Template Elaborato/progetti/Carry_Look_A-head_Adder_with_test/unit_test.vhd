--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:12:25 11/18/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/Carry_Look_A-head_Adder/unit_test.vhd
-- Project Name:  Carry_Look_A-head_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carry_Look_A_head_unit
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
 
ENTITY unit_test IS
END unit_test;
 
ARCHITECTURE behavior OF unit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carry_Look_A_head_unit
    PORT(
         c_generate : IN  std_logic_vector(1 downto 0);
         c_propagate : IN  std_logic_vector(1 downto 0);
         cin : IN  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal c_generate : std_logic_vector(1 downto 0) := (others => '0');
   signal c_propagate : std_logic_vector(1 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Look_A_head_unit PORT MAP (
          c_generate => c_generate,
          c_propagate => c_propagate,
          cin => cin,
          cout => cout
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      for i in 0 to 2**2-1 loop
			c_generate<=std_logic_vector(to_unsigned(i,c_generate'length));
			wait for 2 ns;
			c_propagate<=std_logic_vector(to_unsigned(i,c_propagate'length));
      -- insert stimulus here 
			wait for 2 ns;
		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
