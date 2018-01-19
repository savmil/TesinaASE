library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end full_adder;

--architecture dataflow of full_adder is
--begin
	--s <= a xor b xor cin;
	--c <= (a and b) or (cin and (a or b));
	--se si dispone di or a 3 ingressi: c <= (a and b) or (cin and a) or (cin and b);
--end dataflow;

architecture structural of full_adder is
component half_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic;
		s : out std_logic		
	);
end component;
signal P : std_logic := '0';
signal G : std_logic := '0';
signal PC : std_logic := '0';
begin
	ha1 : half_adder port map(a, b, G, P);
	ha2 : half_adder port map(P, cin, PC, s);
	c <= G or PC; --misto structural e dataflow
end structural;