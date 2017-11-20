library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_filter_testbench is
end clock_filter_testbench;

architecture behavioral of clock_filter_testbench is
component clock_filter is
	Generic ( freq_clock : integer := 50000000;
			  freq_hit : integer := 250
			 );
    Port ( reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           hit : out  STD_LOGIC
		   );
end component;

signal CLK : STD_LOGIC := '0';
signal RST : STD_LOGIC := '0';
signal HIT : STD_LOGIC := '0';
constant f_clk : integer := 400;
constant f_hit : integer := 2;
constant clk_period : time := 2500 us;

begin
	uut : clock_filter
		generic map ( freq_clock => f_clk,
					  freq_hit => f_hit
					)
		port map (  reset_n => RST,
					clk => CLK,
					hit => HIT
				);
			
	clk_process : process
	begin
		for i in 0 to 500 loop
			CLK <= '0';
			wait for clk_period/2;
			CLK <= '1';
			wait for clk_period/2;
		end loop;
		wait;
	end process;
   
	stimulus : process
	begin
		wait for 5*clk_period;
		RST <= '1';
		wait for 5*clk_period;
		RST <= '0';
		wait for 5*clk_period;
		RST <= '1';
		wait for 5*clk_period;
		wait;
	end process;
end behavioral;