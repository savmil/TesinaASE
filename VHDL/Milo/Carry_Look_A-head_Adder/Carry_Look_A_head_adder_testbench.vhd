--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:19:19 11/01/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/Carry_Look_A-head_Adder/Carry_Look_A_head_adder_testbench.vhd
-- Project Name:  Carry_Look_A-head_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carry_Look_A_head_Adder
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
 
ENTITY Carry_Look_A_head_adder_testbench IS
	generic(N: Natural :=3);
END Carry_Look_A_head_adder_testbench;
 
ARCHITECTURE behavior OF Carry_Look_A_head_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carry_Look_A_head_Adder
    PORT(
         adder1 : IN  std_logic_vector(N-1 downto 0);
         adder2 : IN  std_logic_vector(N-1 downto 0);
         sum : OUT  std_logic_vector(N-1 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(N-1 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(N-1 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Look_A_head_Adder PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		for i in 0 to 2**N-1 loop
			adder1<=std_logic_vector(to_unsigned(i,adder1'length));
			wait for 2 ns;
			adder2<=std_logic_vector(to_unsigned(i,adder2'length));
      -- insert stimulus here 
			wait for 2 ns;
		end loop;
      wait;
   end process;

END;
