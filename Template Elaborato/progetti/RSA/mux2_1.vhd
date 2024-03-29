library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is 
	Port ( SEL : in STD_LOGIC;
	       A   : in STD_LOGIC;
			 B   : in STD_LOGIC;
		    X   : out STD_LOGIC
	);
end mux2_1;

architecture dataflow of mux2_1 is 

begin
	
	X <= (A and SEL) or (B and (not SEL));

end dataflow;