--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:35:40 11/12/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/display_seven_segments/counter_mod_2n_testbench.vhd
-- Project Name:  display_seven_segments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_mod_2n
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
 
ENTITY counter_mod_2n_testbench IS
END counter_mod_2n_testbench;
 
ARCHITECTURE behavior OF counter_mod_2n_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_mod_2n
	 generic(width : natural := 2);
    PORT(
         en : IN  std_logic;
         reset_n : IN  std_logic;
         clk : IN  std_logic;
			--counter_hit : OUT  std_logic;
         q : OUT  std_logic_vector(width-1 downto 0)        
        );
    END COMPONENT;
    
	constant n : natural := 2;
   --Inputs
   signal en : std_logic := '0';
   signal reset_n : std_logic := '1';
   signal clk : std_logic := '0';

 	--Outputs
	--signal counter_hit : std_logic;
   signal q : std_logic_vector(n-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 30 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_mod_2n generic map(n) PORT MAP (
          en => en,
          reset_n => reset_n,
          clk => clk,
			 --counter_hit => counter_hit,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		en <= '1';
		wait for 100 ns;
		reset_n <= '0';
		wait for 50 ns;
		reset_n <= '1';

      wait;
   end process;

END;
