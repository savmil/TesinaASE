library ieee;
use ieee.std_logic_1164.all;

entity border_mac_cell is
	port(
		x : in std_logic;
		y : in std_logic;
		s_in : in std_logic;
		c_out : out std_logic;
		s_out : out std_logic
	);
end border_mac_cell;

architecture structural of border_mac_cell is

component half_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end component;

signal prod : std_logic := '0';

begin
	prod <= x and y;
	ha : half_adder
		port map(
			a => prod,
			b => s_in,
			c => c_out,
			s => s_out
		);
end structural;