library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity demux1_4_testbench is
end demux1_4_testbench;

architecture behavioral of demux1_4_testbench is

component demux1_4 is
	port(
		a : in std_logic;
		sel : std_logic_vector(1 downto 0);
		x : out std_logic_vector(3 downto 0)
	);
end component;

signal A : std_logic := '0';
signal SEL : std_logic_vector(1 downto 0) := (others => '0');
signal X : std_logic_vector(3 downto 0) := (others => '0');

begin
	uut : demux1_4 port map(A, SEL, X);
	
	stimulus : process
	begin
		wait for 10 ns;
		for i in 0 to 3 loop
			SEL <= conv_std_logic_vector(i, 2);
			wait for 10 ns;
			A <= '1';
			wait for 10 ns;
			A <= '0';
			wait for 10 ns;
		end loop;
		wait;
	end process;
end behavioral;