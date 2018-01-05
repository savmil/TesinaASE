--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:11:47 01/04/2018
-- Design Name:   
-- Module Name:   C:/Users/Michele/Documents/TesinaASE/VHDL/Display/display_cu_testbench.vhd
-- Project Name:  Display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display_cu
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
 
ENTITY display_cu_testbench IS
END display_cu_testbench;
 
ARCHITECTURE behavior OF display_cu_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_cu
	 GENERIC ( freq_clock : NATURAL := 50000000;
				  freq_hit : NATURAL := 250
				 );
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         loader : IN  std_logic_vector(2 downto 0);
         input_byte : IN  std_logic_vector(7 downto 0);
         anodes_n : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal loader : std_logic_vector(2 downto 0) := (others => '0');
   signal input_byte : std_logic_vector(7 downto 0) := (others => '0');
	constant freq_clock : natural := 100000000;
	constant freq_hit : natural := 50000000;

 	--Outputs
   signal anodes_n : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_cu
		GENERIC MAP (
			freq_clock => freq_clock,
			freq_hit => freq_hit
			)
		PORT MAP (
          clock => clock,
          reset => reset,
          loader => loader,
          input_byte => input_byte,
          anodes_n => anodes_n,
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
		reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		reset <= '0';
      wait for clock_period*10;

      -- insert stimulus here
		input_byte <= x"18";
		wait for 50 ns;
		loader(0) <= '1';
		wait for freq_clock/freq_hit*clock_period*4;
		loader(0) <= '0';
		wait for clock_period;
		input_byte <= x"18";
		wait for 50 ns;
		loader(1) <= '1';
		wait for freq_clock/freq_hit*clock_period*4;
		loader(1) <= '0';
		wait for clock_period;
		input_byte <= x"F2";
		wait for 50 ns;
		loader(2) <= '1';
		wait for freq_clock/freq_hit*clock_period*4;
		loader(2) <= '0';
		wait for 50 ns;
		reset <= '1';
		wait for 50 ns;

      wait;
   end process;

END;
