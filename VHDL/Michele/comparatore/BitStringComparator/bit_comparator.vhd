library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit_comparator is
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
end bit_comparator;

architecture dataflow of bit_comparator is
begin
	EQ <= (EQ_in and a and b) or (EQ_in and not(a) and not(b));
	GT <= GT_in or (a and not(b) and not(LT_in));
	LT <= LT_in or (not(a) and b and not(GT_in));
end dataflow;