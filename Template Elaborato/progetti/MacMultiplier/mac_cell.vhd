library ieee;
use ieee.std_logic_1164.all;

entity mac_cell is
	port(
		x : in std_logic;
		y : in std_logic;
		c_in : in std_logic;
		s_in : in std_logic;
		c_out : out std_logic;
		s_out : out std_logic
	);
end mac_cell;

architecture structural of mac_cell is

component full_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end component;

signal prod : std_logic := '0';

begin
	prod <= x and y;
	fa : full_adder
		port map(
			a => prod,
			b => s_in,
			cin => c_in,
			c => c_out,
			s => s_out
		);
end structural;