--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:59:18 11/11/2017
-- Design Name:   
-- Module Name:   C:/Users/Public/ISE/display/display_testbench.vhd
-- Project Name:  display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display
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
 
ENTITY display_testbench IS
END display_testbench;
 
ARCHITECTURE behavior OF display_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display
	 GENERIC( freq_clock : NATURAL := 50000000;
				 freq_hit : NATURAL := 250
				);
    PORT(
         rst_n : IN  std_logic;
			clock : IN std_logic;
         en : IN  std_logic_vector(3 downto 0);
         values : IN  std_logic_vector(15 downto 0);
         dots : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst_n : std_logic := '1';
   signal en : std_logic_vector(3 downto 0) := (others => '0');
   signal values : std_logic_vector(15 downto 0) := (others => '0');
   signal dots : std_logic_vector(3 downto 0) := (others => '1');
	signal clock : std_logic := '0';

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   constant clock_period : time := 20 ns;
	constant freq_clock : NATURAL := 50000000;
	constant freq_hit : NATURAL := 25000000;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display 
		GENERIC MAP (
						freq_clock => freq_clock,
						freq_hit => freq_hit
						)
		PORT MAP (
          rst_n => rst_n,
			 clock => clock,
          en => en,
          values => values,
          dots => dots,
          anodes => anodes,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here
		for t in std_logic range '0' to '1' loop
			rst_n <= not t;
			for i in 0 to 2 loop
				en <= std_logic_vector(to_unsigned(i*4, 4));
				dots <= std_logic_vector(to_unsigned(i*4, 4));
				for j in 1 to 2 loop
					values <= std_logic_vector(to_unsigned(j*64, 16));
					wait for freq_clock/freq_hit*clock_period*4;
				end loop;
			end loop;
		end loop;

      wait;
   end process;

END;
