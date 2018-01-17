--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:43:49 10/31/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/RippleCarryAdder/RippleCarryAdder_testbench.vhd
-- Project Name:  RippleCarryAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RippleCarryAdder
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
 
ENTITY RippleCarryAdder_testbench IS
	generic ( N : natural :=4 );
END RippleCarryAdder_testbench;
 
ARCHITECTURE behavior OF RippleCarryAdder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RippleCarryAdder
    PORT(
         adder1 : IN  std_logic_vector(N-1 downto 0);
         adder2 : IN  std_logic_vector(N-1 downto 0);
			cin : in STD_LOGIC;
         sum : OUT  std_logic_vector(N-1 downto 0);
         last_carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(N-1 downto 0) := (others => '0');
	signal cin : std_logic:='0';
 	--Outputs
   signal sum : std_logic_vector(N-1 downto 0);
   signal last_carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RippleCarryAdder PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
			 cin => cin,
          sum => sum,
          last_carry => last_carry
        );
		  
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		cin<='1';
		adder1<=x"F";
		adder2<=x"F";
--      for i in 0 to 2**N-1 loop
--			
--			wait for 1 ns;
--			adder1<=STD_LOGIC_VECTOR(to_unsigned(i,adder1'length));
--			wait for 1 ns;
--			adder2<=STD_LOGIC_VECTOR(to_unsigned(i,adder2'length));
--		end loop;

      -- insert stimulus here 

      wait;
   end process;

END;
