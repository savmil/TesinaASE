--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:11:29 12/10/2017
-- Design Name:   
-- Module Name:   D:/Encryp/t_monExp.vhd
-- Project Name:  Encryp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MonExp
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
 
ENTITY t_monExp IS
END t_monExp;
 
ARCHITECTURE behavior OF t_monExp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MonExp
    PORT(
         clk : IN  std_logic;
         resetn : IN  std_logic;
         start : IN  std_logic;
         M : IN  std_logic_vector(31 downto 0);
         e : IN  std_logic_vector(31 downto 0);
         n : IN  std_logic_vector(31 downto 0);
         r : IN  std_logic_vector(31 downto 0);
         r_2 : IN  std_logic_vector(31 downto 0);
         done : OUT  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal resetn : std_logic := '0';
   signal start : std_logic := '0';
   signal M : std_logic_vector(31 downto 0) := (others => '0');
   signal e : std_logic_vector(31 downto 0) := (others => '0');
   signal n : std_logic_vector(31 downto 0) := (others => '0');
   signal r : std_logic_vector(31 downto 0) := (others => '0');
   signal r_2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal done : std_logic;
   signal output : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MonExp PORT MAP (
          clk => clk,
          resetn => resetn,
          start => start,
          M => M,
          e => e,
          n => n,
          r => r,
          r_2 => r_2,
          done => done,
          output => output
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
		resetn <= '1';
		
		
		
		
		M <= "00000000000000000000000000000101"; --5
		n <= "00000000000000000000000000000111"; --7
		e <= "00000000000000000000000000000010"; --2
		r <= "00000000000000000000000000001000"; --2^3= 8
	 r_2 <= "00000000000000000000000000000001"; -- (2^31)^2 mod 7 = 1
		-- output 85 1010101
		start <= '1';
		wait for clk_period;
		start <= '0';
		
		wait for 400000*clk_period;
		
	
		resetn <= '1';
		
		
		M <= "00000000000000000000000000110010"; --50
		n <= "00000000000000000000000010001111"; --143
		e <= "00000000000000000000000000010001"; --17
		r <= "10000000000000000000000000000000"; --2^31
	 r_2 <= "00000000000000000000000000000100"; -- (2^31)^2 mod 143 = 4
		-- output 85 1010101
		start <= '1';
		wait for clk_period;
		start <= '0';
		
		wait for 400000*clk_period;
		
	
		resetn <= '1';
		wait for 4*clk_period;
		
		M <= "00000000000000000000000001010101"; --85
		n <= "00000000000000000000000010001111"; --143
		e <= "00000000000000000000000001110001"; --113
		r <= "00000000000000000000000100000000"; --2^8
	 r_2 <= "00000000000000000000000000101010"; -- 42
		start <= '1';
		-- output 50 110010
		wait for clk_period;
			start <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
