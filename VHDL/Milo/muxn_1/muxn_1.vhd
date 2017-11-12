--This file describes a generic muxn_1
--Mario Barbareschi

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity muxn_1 is
 generic(Address_Width : natural := 2
 );
 port ( A : in std_logic_vector(2**Address_Width-1 downto 0);
   sel : in std_logic_vector(Address_Width-1 downto 0);
   x: out std_logic
 );
end muxn_1;


architecture dataflow of muxn_1 is

begin

 x <= A(conv_integer(sel));


end dataflow;
