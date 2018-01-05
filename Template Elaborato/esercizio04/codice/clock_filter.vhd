library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_filter is
	Generic ( 	freq_clock : NATURAL := 50000000;
				freq_hit : NATURAL := 250
			 );
    Port ( reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           hit : out  STD_LOGIC
		);
end clock_filter;

architecture Behavioral of clock_filter is
constant freq_ratio : NATURAL := freq_clock/freq_hit;
begin
-- Ho bisogno di un contatore N e non modulo N
	hit_counter_n : process(clk, reset_n)
	variable count : NATURAL := 0;
	begin
		if reset_n = '0' then
			count := 0;
			hit <= '0';
		elsif rising_edge(clk) then
			if count = (freq_ratio-1) then
				count := 0;
				hit <= '1';
			else
				count := count + 1;
				hit <= '0';
			end if;
		end if;
	end process;
end Behavioral;

