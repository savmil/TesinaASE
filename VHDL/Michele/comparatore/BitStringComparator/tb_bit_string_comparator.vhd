library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_bit_string_comparator is
end tb_bit_string_comparator;

architecture behavioral of tb_bit_string_comparator is
component bit_string_comparator is
	generic (N : integer := 4);
	port (
		a : in STD_LOGIC_VECTOR (N-1 downto 0);
		b : in STD_LOGIC_VECTOR (N-1 downto 0);
		GT : out STD_LOGIC;
		EQ : out STD_LOGIC;
		LT : out STD_LOGIC
	);
end component;
constant tb_N : integer := 2;
signal a, b : STD_LOGIC_VECTOR (tb_N-1 downto 0) := (others => '0');
signal GT, EQ, LT : STD_LOGIC := '0';
begin
	uut : bit_string_comparator
		generic map (tb_N)
		port map (
			a => a,
			b => b,
			GT => GT,
			EQ => EQ,
			LT => LT
		);
	stimulus : process
	begin
	for i in 0 to 2**tb_N-1 loop
		a <= STD_LOGIC_VECTOR(TO_UNSIGNED(i,tb_N));
		for j in 0 to 2**tb_N-1 loop
			b <= STD_LOGIC_VECTOR(TO_UNSIGNED(j,tb_N));
			wait for 10 ns;
		end loop;
	end loop;
	wait;
	end process;
end behavioral;