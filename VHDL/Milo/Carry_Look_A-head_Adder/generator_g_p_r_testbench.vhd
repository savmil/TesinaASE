--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:17:49 11/01/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/Carry_Look_A-head_Adder/generator_g_p_r_testbench.vhd
-- Project Name:  Carry_Look_A-head_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Generator_G_P
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
 
ENTITY generator_g_p_r_testbench IS
generic( N:natural:=2); 
END generator_g_p_r_testbench;
 
ARCHITECTURE behavior OF generator_g_p_r_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Generator_G_P
    PORT(
         adder1 : IN  std_logic_vector(1 downto 0);
         adder2 : IN  std_logic_vector(1 downto 0);
         c_propagate : OUT  std_logic_vector(1 downto 0);
         c_generate : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal adder1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal adder2 : std_logic_vector(N-1 downto 0) := (others => '0');

 	--Outputs
   signal c_propagate : std_logic_vector(N-1 downto 0);
   signal c_generate : std_logic_vector(N-1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generator_G_P PORT MAP (
          adder1 => adder1,
          adder2 => adder2,
          c_propagate => c_propagate,
          c_generate => c_generate
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

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
