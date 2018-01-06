library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pad is
    Port ( in_out : inout  STD_LOGIC;
           s_in : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           s_out : out  STD_LOGIC);
end pad;

architecture Dataflow of pad is

begin

with enable select 
	in_out <= s_in when '1', 'Z' when others;
	
s_out <= in_out;

end Dataflow;

