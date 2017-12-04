--This file describes a mux2_1
--Mario Barbareschi

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC;
           B   : in  STD_LOGIC;
           X   : out STD_LOGIC
   );
end mux2_1;

architecture dataflow of mux2_1 is

begin

   -- X <= A when (SEL = '1'),
--	 B when (SEL = '0') else 'X';

	X <= (A and (not SEL)) or (B and SEL);

end dataflow;
