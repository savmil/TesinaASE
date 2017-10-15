--Multiplexer 2 a 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
	Port ( SEL : in STD_LOGIC;
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 X : out STD_LOGIC
	);
end mux2_1;

--architecture Behavioral of mux2_1 is
architecture dataflow of mux2_1 is

begin
--Non corretto: uscita pari a B anche quando SEL è diverso da 0 ed 1
--	X <= A when (SEL = '1') else B;

--Non corretto: voglio sapere SEL a che valore si porta
--	X <= A when (SEL = '1')
--	     B when (SEL = '0') else 'X';
	
	X <= (A and SEL) or (B and (not SEL));

end dataflow;

--end Behavioral;