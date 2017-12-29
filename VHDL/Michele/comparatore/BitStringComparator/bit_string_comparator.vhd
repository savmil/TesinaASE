library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit_string_comparator is
	generic (N : integer := 4);
	port (
		a : in STD_LOGIC_VECTOR (N-1 downto 0);
		b : in STD_LOGIC_VECTOR (N-1 downto 0);
		GT : out STD_LOGIC;
		EQ : out STD_LOGIC;
		LT : out STD_LOGIC
	);
end bit_string_comparator;

architecture structural of bit_string_comparator is
component bit_comparator is
	port (
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		EQ_in : in STD_LOGIC;
		LT_in : in STD_LOGIC;
		GT_in : in STD_LOGIC;
		EQ : out STD_LOGIC;
		LT : out STD_LOGIC;
		GT : out STD_LOGIC
	);
end component;
signal bit_GT, bit_LT, bit_EQ : STD_LOGIC_VECTOR (N downto 0);
begin
	bit_GT(N) <= '0';
	bit_EQ(N) <= '1';
	bit_LT(N) <= '0';
	GT <= bit_GT(0);
	EQ <= bit_EQ(0);
	LT <= bit_LT(0);
	
	bsc : for i in N-1 downto 0 generate
		bc : bit_comparator
			port map (
				a => a(i),
				b=> b(i),
				EQ_in => bit_EQ(i+1),
				LT_in => bit_LT(i+1),
				GT_in => bit_GT(i+1),
				EQ => bit_EQ(i),
				LT => bit_LT(i),
				GT => bit_GT(i)
			);
	end generate;
end structural;