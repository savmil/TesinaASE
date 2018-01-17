--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:27 11/17/2017
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
generic (N :Natural:=32);
END Carry_Look_A_head_adder_testbench;
 
ARCHITECTURE behavior OF Carry_Look_A_head_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carry_Look_A_head_Adder
    PORT(
         adder1 : IN  std_logic_vector(N-1 downto 0);
         adder2 : IN  std_logic_vector(N-1 downto 0);
			cin : in STD_LOGIC;
         sum : OUT  std_logic_vector(N-1 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(N-1 downto 0) := (others => '0');
	signal cin :std_logic:='0';
 	--Outputs
   signal sum : std_logic_vector(N-1 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carry_Look_A_head_Adder PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
			 cin => cin,
          sum => sum,
          cout => cout
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		cin<='1';
      adder1<=x"FFFFFFFF";
		adder2<=x"FFFFFFFF";
      wait;
   end process;

END;
