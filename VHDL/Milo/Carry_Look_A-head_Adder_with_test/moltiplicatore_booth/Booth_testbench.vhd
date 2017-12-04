--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:10:01 11/30/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/moltiplicatore_booth/Booth_testbench.vhd
-- Project Name:  moltiplicatore_booth
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Booth_multiplier
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
 
ENTITY Booth_testbench IS
END Booth_testbench;
 
ARCHITECTURE behavior OF Booth_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Booth_multiplier
    PORT(
         mul1 : IN  std_logic_vector(7 downto 0);
         mul2 : IN  std_logic_vector(7 downto 0);
         start : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         product : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mul1 : std_logic_vector(7 downto 0) := (others => '0');
   signal mul2 : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal product : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Booth_multiplier PORT MAP (
          mul1 => mul1,
          mul2 => mul2,
          start => start,
          clk => clk,
          reset => reset,
          product => product
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
		reset<='1';
		mul1<="00000111";
		mul2<="00000011";
		wait for 1 ns;
		start<='1';
      wait for clk_period*10;
		
      -- insert stimulus here 

      wait;
   end process;

END;
