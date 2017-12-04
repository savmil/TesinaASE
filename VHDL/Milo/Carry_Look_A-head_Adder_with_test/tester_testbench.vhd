--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:03 11/25/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/Carry_Look_A-head_Adder/tester_testbench.vhd
-- Project Name:  Carry_Look_A-head_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tester_dispositivi
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
 
ENTITY tester_testbench IS
END tester_testbench;
 
ARCHITECTURE behavior OF tester_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tester_dispositivi
    PORT(
         in_byte : IN  std_logic_vector(7 downto 0);
         button : IN  std_logic_vector(3 downto 0);
         clock : IN  std_logic;
         reset : OUT  std_logic;
         led : OUT  std_logic_vector(7 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
         --output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_byte : std_logic_vector(7 downto 0) := (others => '0');
   signal button : std_logic_vector(3 downto 0) := (others => '0');
   signal clock : std_logic := '0';

 	--Outputs
   signal reset : std_logic;
   signal led : std_logic_vector(7 downto 0);
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);
   --signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tester_dispositivi PORT MAP (
          in_byte => in_byte,
          button => button,
          clock => clock,
          reset => reset,
          led => led,
          anodes => anodes,
          cathodes => cathodes
          --output => output
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		button(3)<='1';
		in_byte<="11111010";
      -- hold reset state for 100 ns.
		button(0)<='1';
      wait for 100 ns;	
		button(1)<='1'; --carica di 16 bit i meno significativi
		button(0)<='0'; -- abilita punti e catodi
		in_byte<="01001111";
		wait for 10 ns;
		button(1)<='0';
		button(2)<='1';--carica di 16 bit i più significativi
      wait for clock_period*10;
		

      -- insert stimulus here 

      wait;
   end process;

END;
