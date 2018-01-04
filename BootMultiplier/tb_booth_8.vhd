--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:54:56 11/22/2012
-- Design Name:   
-- Module Name:   C:/Users/Mario/Desktop/rippleCarry/BootMultiplier/tb_booth_8.vhd
-- Project Name:  BootMultiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: booth_8
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
 
ENTITY tb_booth_8 IS
END tb_booth_8;
 
ARCHITECTURE behavior OF tb_booth_8 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT booth_8
    PORT(
         x : IN  std_logic_vector(7 downto 0);
         y : IN  std_logic_vector(7 downto 0);
         start : IN  std_logic;
         clock : IN  std_logic;
         reset_n : IN  std_logic;
         stop : OUT  std_logic;
         cnt_val : OUT  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal y : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset_n : std_logic := '0';

 	--Outputs
   signal stop : std_logic;
   signal cnt_val : std_logic_vector(2 downto 0);
   signal result : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: booth_8 PORT MAP (
          x => x,
          y => y,
          start => start,
          clock => clock,
          reset_n => reset_n,
          stop => stop,
          cnt_val => cnt_val,
          result => result
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
		
		reset_n <= '1';
		x <= x"91";
		y <= x"02";
		start <= '1';
		wait for 20 ns;
		start <= '0';

      wait;
   end process;

END;
