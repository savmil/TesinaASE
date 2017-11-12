library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end half_adder;

architecture dataflow of half_adder is
begin
	c <= a and b;
	s <= a xor b;
end dataflow;