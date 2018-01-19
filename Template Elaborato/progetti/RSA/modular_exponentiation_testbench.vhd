--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:34:49 12/27/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/modular_exponentiation_testbench.vhd
-- Project Name:  RSA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modular_exponentiation
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
 
ENTITY modular_exponentiation_testbench IS
END modular_exponentiation_testbench;
 
ARCHITECTURE behavior OF modular_exponentiation_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modular_exponentiation
    PORT(
         base : IN  std_logic_vector(15 downto 0);
         esponente : IN  std_logic_vector(15 downto 0);
         n : IN  std_logic_vector(15 downto 0);
         m_e : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal base : std_logic_vector(15 downto 0) := (others => '0');
   signal esponente : std_logic_vector(15 downto 0) := (others => '0');
   signal n : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal m_e : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modular_exponentiation PORT MAP (
          base => base,
          esponente => esponente,
          n => n,
          m_e => m_e
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		base<="0000000000000111";
		esponente<="0000000000000011";
		n<="0000000000000011";

      -- insert stimulus here 

      wait;
   end process;

END;
