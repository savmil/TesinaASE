--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:04:26 10/30/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/display_sette_segmenti/display_sette_segmenti_e_testbench.vhd
-- Project Name:  display_sette_segmenti
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display_sette_segmenti_e
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
 
ENTITY display_sette_segmenti_e_testbench IS
END display_sette_segmenti_e_testbench;
 
ARCHITECTURE behavior OF display_sette_segmenti_e_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_sette_segmenti_e
    PORT(
         number : IN  std_logic_vector(3 downto 0);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal number : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_sette_segmenti_e PORT MAP (
          number => number,
          o => o
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		for i in 0 to 15 loop
				number<=std_logic_vector(to_unsigned(i,number'length));
				wait for 1 ns;
			end loop;
        wait;
      

      -- insert stimulus here 

      wait;
   end process;

END;
