library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.TEXTIO.ALL;

entity latch_d_testbench is
end latch_d_testbench;

architecture behavioral of latch_d_testbench is
component latch_d is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC
		);
end component;
signal ING : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal Q : STD_LOGIC := '0';
begin
	uut : latch_d port map(ING(0), ING(1), ING(3), ING(2), Q);
	stimulus : process
	variable l : line;
	begin
		write(l, String'("Testbench di latch_d"));
		writeline(output, l);
		--wait for 10 ns;
		for i in 0 to 15 loop
			ING <= conv_std_logic_vector(i, 4);
			wait for 10 ns;
		end loop;
		wait;
	end process;
end behavioral;