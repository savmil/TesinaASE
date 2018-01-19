--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:34:58 12/28/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/modular_exponentiatio_testbench.vhd
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
 
ENTITY modular_exponentiatio_testbench IS
END modular_exponentiatio_testbench;
 
ARCHITECTURE behavior OF modular_exponentiatio_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modular_exponentiation
    PORT(
         en : IN  std_logic;
         base : IN  std_logic_vector(15 downto 0);
         esponente : IN  std_logic_vector(15 downto 0);
         n : IN  std_logic_vector(15 downto 0);
         m_e : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal base : std_logic_vector(15 downto 0) := (others => '0');
   signal esponente : std_logic_vector(15 downto 0) := (others => '0');
   signal n : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal m_e : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modular_exponentiation PORT MAP (
          en => en,
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
		en<='0';
      wait for 100 ns;	
		en<='1';
		base<="0000000100000000";
		esponente<="0000000000000100";
		n<="0000000000001010";
		wait for 10 ns;
		en<='0';
      -- insert stimulus here 

      wait;
   end process;

END;
