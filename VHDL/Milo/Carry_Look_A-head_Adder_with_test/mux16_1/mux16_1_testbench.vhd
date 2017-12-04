--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:31 10/27/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/mux16_1/mux16_1_testbench.vhd
-- Project Name:  mux16_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux16_1
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
 
ENTITY mux16_1_testbench IS
END mux16_1_testbench;
 
ARCHITECTURE behavior OF mux16_1_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux16_1
    PORT(
         SEL : IN  std_logic_vector(3 downto 0);
         X : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SEL : std_logic_vector(3 downto 0) := (others => '0');
   signal X : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic:='0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux16_1 PORT MAP (
          SEL => SEL,
          X => X,
          O => O
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 15 loop
			sel<=STD_LOGIC_VECTOR(to_unsigned(i,sel'length));
			wait for 1 ns;
			for j in 0 to 2**16-1 loop
				x<=STD_LOGIC_VECTOR(to_unsigned(j,x'length));
				wait for 1 ns;
			end loop;
		end loop;
      -- insert stimulus here 
      wait;
   end process;

END;
