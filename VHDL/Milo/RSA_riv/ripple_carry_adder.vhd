library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ripple_carry_adder is
	generic(width : natural := 8);
	port(
		x : in std_logic_vector(width-1 downto 0);
		y : in std_logic_vector(width-1 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		s : out std_logic_vector(width-1 downto 0)
	);
end ripple_carry_adder;

architecture structural of ripple_carry_adder is
component full_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		c : out std_logic;
		s : out std_logic
	);
end component;
signal carry : std_logic_vector(width downto 0) := (others => '0');
begin
	carry(0) <= cin;
	rca : for i in 0 to conv_integer(width-1) generate
		fa : full_adder port map(x(i), y(i), carry(i), carry(i+1), s(i));
	end generate;
	cout <= carry(width);
end structural;