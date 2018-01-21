--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:31:34 01/03/2018
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/moltiplicatore_B_buono/tester_disp_test.vhd
-- Project Name:  moltiplicatore_booth
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
 
ENTITY tester_disp_test IS
END tester_disp_test;
 
ARCHITECTURE behavior OF tester_disp_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tester_dispositivi
    PORT(
         clock : IN  std_logic;
         button : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic_vector(7 downto 0);
         in_byte : IN  std_logic_vector(7 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal button : std_logic_vector(3 downto 0) := (others => '0');
   signal in_byte : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic_vector(7 downto 0);
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tester_dispositivi PORT MAP (
          clock => clock,
          button => button,
          led => led,
          in_byte => in_byte,
          anodes => anodes,
          cathodes => cathodes
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
      -- hold reset state for 100 ns.
		
      wait for 100 ns;	
		button(0)<='1';
      wait for clock_period*10;
		button(0)<='0';
		wait for clock_period*10;
		button(0)<='1';
      wait for clock_period*10;
		button(0)<='0';
		wait for clock_period*10;
		button(0)<='1';
      wait for clock_period*10;
		button(0)<='0';
		wait for clock_period*10;
		button(0)<='1';
      wait for clock_period*10;
		button(0)<='0';
		wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;