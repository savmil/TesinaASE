library ieee;
use ieee.std_logic_1164.all;

entity demux1_2_testbench is
end demux1_2_testbench;

architecture behavioral of demux1_2_testbench is

component demux1_2 is
	port(
		a : in std_logic;
		sel : in std_logic;
		x : out std_logic_vector(1 downto 0)
	);
end component;

signal A : std_logic := '0';
signal SEL : std_logic := '0';
signal X : std_logic_vector(1 downto 0) := (others => '0');

begin
	uut : demux1_2 port map(A, SEL, X);
	
	stimulus : process
	begin
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		assert (X(0) = '1') report "X(0) should be 1" severity error;
		SEL <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		assert (X(1) = '0') report "X(1) should be 0" severity error;
		wait;
	end process;
end behavioral;
