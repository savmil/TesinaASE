library ieee;
use ieee.std_logic_1164.all;

entity demux1_2 is
	port(
		a : in std_logic;
		sel : in std_logic;
		x : out std_logic_vector(1 downto 0)
	);
end demux1_2;

architecture dataflow of demux1_2 is

begin
	x(0) <= (not sel) and a;
	x(1) <= sel and a;
end architecture;