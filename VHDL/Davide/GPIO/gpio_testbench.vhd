--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:59 12/28/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/GPIO/gpio_testbench.vhd
-- Project Name:  GPIO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gpio
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
 
ENTITY gpio_testbench IS
END gpio_testbench;
 
ARCHITECTURE behavior OF gpio_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gpio
    PORT(
         pads : INOUT  std_logic_vector(3 downto 0);
         inputs : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic_vector(3 downto 0);
         outputs : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputs : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal pads : std_logic_vector(3 downto 0);

 	--Outputs
   signal outputs : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gpio PORT MAP (
          pads => pads,
          inputs => inputs,
          enable => enable,
          outputs => outputs
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		
		enable(0) <= '1';
		enable(2) <= '1';
		wait for 10 ns;
		for i in 0 to 3 loop
			inputs(i) <= '1';
			wait for 10 ns;
		end loop;
		
		wait for 10 ns;
		enable(1) <= '1';
		enable(3) <= '1';
		
      wait;
   end process;

END;
