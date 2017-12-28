----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:59 11/15/2017 
-- Design Name: 
-- Module Name:    clock_filter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_filter is
	generic( clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 250
	);
   Port ( clk : in  STD_LOGIC;
          reset_n : in  STD_LOGIC;
          hit : out  STD_LOGIC);
end clock_filter;

architecture Behavioral of clock_filter is

constant counter_width : integer := clock_frequency_in/clock_frequency_out;
constant width : integer := integer(LOG2(real(counter_width)));
signal count : std_logic_vector(width-1 downto 0) := (others => '0');

begin

	hit <= '1' when count = std_logic_vector(to_unsigned(2**width-1, width))
			else '0';

	process (clk, reset_n) 
	begin
		if reset_n='0' then 
			count <= (others => '0');
		elsif  rising_edge(clk) then
			count <= std_logic_vector(unsigned(count)+1);
		end if;
		
	end process;

end Behavioral;

