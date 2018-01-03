--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:30 11/22/2012
-- Design Name:   
-- Module Name:   C:/Users/Mario/Desktop/rippleCarry/BootMultiplier/tb_counter.vhd
-- Project Name:  BootMultiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY tb_counter IS
END tb_counter;
 
ARCHITECTURE behavior OF tb_counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         clock : IN  std_logic;
         count_up : IN  std_logic;
         reset_n : IN  std_logic;
         value : OUT  std_logic_vector(2 downto 0);
         hit : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal count_up : std_logic := '0';
   signal reset_n : std_logic := '0';

 	--Outputs
   signal value : std_logic_vector(2 downto 0);
   signal hit : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          clock => clock,
          count_up => count_up,
          reset_n => reset_n,
          value => value,
          hit => hit
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

      wait for clock_period*10;

      -- insert stimulus here 
		count_up <= '1';
		reset_n <= '1';

      wait;
   end process;

END;
