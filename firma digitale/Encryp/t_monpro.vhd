--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:21 12/10/2017
-- Design Name:   
-- Module Name:   D:/Encryp/t_monpro.vhd
-- Project Name:  Encryp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MonPro
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
 
ENTITY t_monpro IS
END t_monpro;
 
ARCHITECTURE behavior OF t_monpro IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MonPro
    PORT(
         clk : IN  std_logic;
         resetn : IN  std_logic;
         start : IN  std_logic;
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         n : IN  std_logic_vector(31 downto 0);
         done : OUT  std_logic;
         u : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal resetn : std_logic := '0';
   signal start : std_logic := '0';
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal b : std_logic_vector(31 downto 0) := (others => '0');
   signal n : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal u : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MonPro PORT MAP (
          clk => clk,
          resetn => resetn,
          start => start,
          a => a,
          b => b,
          n => n,
          done => done,
          u => u
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
		
		resetn <= '1';
	
		wait for clk_period/2;
		a <= "00000000000000000000000000000011"; --3
      b <= "00000000000000000000000000000010"; --2
      n <= "00000000000000000000000000000111"; --7 
		resetn <= '1';
		wait for clk_period/2;
		
		start <= '1';
		wait for clk_period/2;
		start <= '0';
		--ris otto 1000
		wait for clk_period*1000;
		resetn <= '0';
		wait for clk_period;
		resetn <= '1';
		wait for clk_period/2;
		a <= "00000000000000000000000000000101"; --5
		b <= "00000000000000000000000000000010"; --2 
      n <= "00000000000000000000000000000111"; --7
		
		start <= '1';
		wait for clk_period/2;
		start <= '0';
		
      wait;
   end process;

END;
