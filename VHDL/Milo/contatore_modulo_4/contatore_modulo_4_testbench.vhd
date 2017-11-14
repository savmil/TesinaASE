--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:30:47 11/07/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/contatore_modulo_4/contatore_modulo_4_testbench.vhd
-- Project Name:  contatore_modulo_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contatore_modulo_4
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
 
ENTITY contatore_modulo_4_testbench IS
END contatore_modulo_4_testbench;
 
ARCHITECTURE behavior OF contatore_modulo_4_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contatore_modulo_4
    PORT(
         enable : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : inOUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(1 downto 0);

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contatore_modulo_4 PORT MAP (
          enable => enable,
          reset => reset,
          clk => clk,
          q => q
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		enable<='1';
		for i in 0 to 10 loop
			clk<='1';
			wait for 1 ns;
			clk<='0';
			wait for 1 ns;
--      wait for clk_period*10;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
