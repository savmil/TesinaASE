library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
-- use IEEE.STD_LOGIC_ARITH.ALL;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_filter is
	Generic ( freq_clock : integer := 50000000;
			  freq_hit : integer := 250
			 );
	-- (2**width)* T_clock = T_hit => T_hit/T_clock = 2**width = freq_ratio = freq_clock/freq_hit
    Port ( reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           hit : out  STD_LOGIC
		);
end clock_filter;

architecture Behavioral of clock_filter is
constant freq_ratio : integer := freq_clock/freq_hit;
constant width : integer := integer(LOG2(real(freq_ratio)));
signal count : std_logic_vector(width-1 downto 0) := (others => '0');
begin
	hit <= '1' when count = std_logic_vector(to_unsigned(2**width-1, width))
			else '0';
	process (clk, reset_n) 
	begin
	   if reset_n='0' then 
		  count <= (others => '0');
	   elsif rising_edge(clk) then
			--count <= conv_std_logic_vector(conv_integer(count)+1, 2);
			count <= std_logic_vector(unsigned(count)+1);
	   end if;
	end process;
end Behavioral;

