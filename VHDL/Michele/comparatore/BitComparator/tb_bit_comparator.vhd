library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bit_comparator is
end tb_bit_comparator;

architecture behavioral of tb_bit_comparator is

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

signal A, B, GT_in, LT_in, EQ, LT, GT : STD_LOGIC := '0';
signal EQ_in : STD_LOGIC := '1';

begin
	uut : bit_comparator
		port map (
			a => A,
			b => B,
			EQ_in => EQ_in,
			LT_in => LT_in,
			GT_in => GT_in,
			EQ => EQ,
			LT => LT,
			GT => GT
		);
	
	stimulus : process
	begin
		wait for 10 ns;
		a <= '1';
		wait for 10 ns;
		b <= '1';
		wait for 10 ns;
		a <= '0';
		wait for 10 ns;
		
		EQ_in <= '0';
		GT_in <= '1';
		b <= '0';
		wait for 10 ns;
		a <= '1';
		wait for 10 ns;
		b <= '1';
		wait for 10 ns;
		a <= '0';
		wait for 10 ns;
		
		GT_in <= '0';
		LT_in <= '1';
		b <= '0';
		wait for 10 ns;
		a <= '1';
		wait for 10 ns;
		b <= '1';
		wait for 10 ns;
		a <= '0';
		wait for 10 ns;
		
		wait;
	end process;
end behavioral;