--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:08 11/12/2017
-- Design Name:   
-- Module Name:   C:/Users/Public/ISE/display/display_top_level_testbench.vhd
-- Project Name:  display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display_top_level
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
 
ENTITY display_top_level_testbench IS
END display_top_level_testbench;
 
ARCHITECTURE behavior OF display_top_level_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_top_level
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         load_lsb_value : IN  std_logic;
         load_msb_value : IN  std_logic;
         load_dots_enable : IN  std_logic;
         in_byte : IN  std_logic_vector(7 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal load_lsb_value : std_logic := '0';
   signal load_msb_value : std_logic := '0';
   signal load_dots_enable : std_logic := '0';
   signal in_byte : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_top_level PORT MAP (
          clock => clock,
          reset => reset,
          load_lsb_value => load_lsb_value,
          load_msb_value => load_msb_value,
          load_dots_enable => load_dots_enable,
          in_byte => in_byte,
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
--		for t in std_logic range '0' to '1' loop
--			reset <= t;
--			for i in std_logic range '0' to '1' loop
--				load_dots_enable <= i;
--				for j in std_logic range '0' to '1' loop
--					load_msb_value <= j;
--					for z in std_logic range '0' to '1' loop
--						load_lsb_value <= z;
--						for i in 0 to 2 loop
--							in_byte <= std_logic_vector(to_unsigned(i*8, 8));
--							wait for 50 ns;
--						end loop;
--					end loop;
--				end loop;
--			end loop;
--		end loop;

		in_byte <= "00010010";
		load_dots_enable <= '1';
		wait for 20 ns;
		load_dots_enable <='0';
		wait for 20 ns;
		in_byte <= "00010001";
		load_lsb_value <= '1';
		wait for 20 ns;
		load_lsb_value <= '0';
		wait for 20 ns;
		in_byte <= "10001000";
		load_msb_value <= '1';
		wait for 20 ns;
		load_msb_value <= '0';
		wait for 20 ns;
		
      wait;
   end process;

END;
