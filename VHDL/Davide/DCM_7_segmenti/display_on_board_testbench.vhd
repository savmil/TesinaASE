--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:35:10 11/12/2017
-- Design Name:   
-- Module Name:   C:/Users/Public/ISE/display/display_on_board_testbench.vhd
-- Project Name:  display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display_on_board
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
 
ENTITY display_on_board_testbench IS
END display_on_board_testbench;
 
ARCHITECTURE behavior OF display_on_board_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_on_board
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         load_lsb_value : IN  std_logic;
         load_msb_value : IN  std_logic;
         load_dots_enable : IN  std_logic;
         in_byte : IN  std_logic_vector(7 downto 0);
         value : OUT  std_logic_vector(15 downto 0);
         dots : OUT  std_logic_vector(3 downto 0);
         enable : OUT  std_logic_vector(3 downto 0)
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
   signal value : std_logic_vector(15 downto 0);
   signal dots : std_logic_vector(3 downto 0);
   signal enable : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_on_board PORT MAP (
          clock => clock,
          reset => reset,
          load_lsb_value => load_lsb_value,
          load_msb_value => load_msb_value,
          load_dots_enable => load_dots_enable,
          in_byte => in_byte,
          value => value,
          dots => dots,
          enable => enable
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
		--for t in 0 to 1 loop
			--rst_n <= std_logic(to_unsigned(t, 1)(0));
			reset <= t;
			for i in std_logic range '0' to '1' loop
				load_dots_enable <= i;
				for j in std_logic range '0' to '1' loop
					load_msb_value <= j;
					for z in std_logic range '0' to '1' loop
						load_lsb_value <= z;
						for i in 0 to 2 loop
							in_byte <= std_logic_vector(to_unsigned(i*8, 8));
							wait for 50 ns;
						end loop;
					end loop;
				end loop;
			end loop;
		end loop;
      wait;
   end process;

END;
