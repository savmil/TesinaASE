library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use std.textio.all;

entity demux1_n_testbench is
end demux1_n_testbench;

architecture behavioral of demux1_n_testbench is

component demux1_n is
	generic(address_width : natural := 2);
	port(
		a : in std_logic;
		sel : in std_logic_vector(address_width-1 downto 0);
		x : out std_logic_vector(2**address_width-1 downto 0)
	);
end component;

constant demux_selection_length : natural := 2;
signal A : std_logic := '0';
signal SEL : std_logic_vector(demux_selection_length-1 downto 0) := (others => '0');
signal X : std_logic_vector(2**demux_selection_length-1 downto 0) := (others => '0');

begin
	uut : demux1_n generic map(demux_selection_length) port map(A, SEL, X);
	
	stimulus : process
	variable l : line;
	begin
		write(l, String'("Demux 1xN Testbench"));
		writeline(output, l);
		wait for 10 ns;
		for i in 0 to conv_integer(2**demux_selection_length-1) loop
			SEL <= conv_std_logic_vector(i, demux_selection_length);
			wait for 10 ns;
			A <= '1';
			wait for 10 ns;
			A <= '0';
			wait for 10 ns;
		end loop;
		wait;
	end process;
end behavioral;