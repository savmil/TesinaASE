--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:46:11 11/19/2017
-- Design Name:   
-- Module Name:   C:/Users/Public/ISE/add_sub/add_sub_on_board_testbench.vhd
-- Project Name:  add_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_sub_on_board
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
 
ENTITY add_sub_on_board_testbench IS
END add_sub_on_board_testbench;
 
ARCHITECTURE behavior OF add_sub_on_board_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub_on_board
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         load_a : IN  std_logic;
         load_b : IN  std_logic;
         add_sub_n : IN  std_logic;
         in_byte : IN  std_logic_vector(7 downto 0);
         overflow : OUT  std_logic;
			underflow : OUT std_logic;
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal load_a : std_logic := '0';
   signal load_b : std_logic := '0';
   signal add_sub_n : std_logic := '0';
   signal in_byte : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal overflow : std_logic;
	signal underflow : std_logic;
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub_on_board PORT MAP (
          clock => clock,
          reset => reset,
          load_a => load_a,
          load_b => load_b,
          add_sub_n => add_sub_n,
          in_byte => in_byte,
          overflow => overflow,
			 underflow => underflow,
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
		for i in std_logic range '0' to '1' loop
			reset <= i;
			for j in std_logic range '0' to '1' loop
				load_a <= j;
				for z in std_logic range '0' to '1' loop
					load_b <= z;
					for t in std_logic range '0' to '1' loop
						add_sub_n <= t;
						in_byte <= x"01";
						wait for clock_period*10;
						in_byte <= x"10";
						wait for clock_period*10;
					end loop;
				end loop;
			end loop;
		end loop;
      wait;
   end process;

END;
