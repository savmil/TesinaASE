library ieee;
use ieee.std_logic_1164.all;

entity half_adder_testbench is
end half_adder_testbench;

architecture behavioral of half_adder_testbench is
component half_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end component;
signal A : std_logic := '0';
signal B : std_logic := '0';
signal C : std_logic := '0';
signal S : std_logic := '0';
begin
	uut : half_adder port map(A, B, C, S);
	stimulus : process
	begin
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		B <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		B <= '0';
		wait for 10 ns;
		wait;
	end process;
end behavioral;