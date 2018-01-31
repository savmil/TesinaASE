----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    Decoder_2_4 - Dataflow 
-- Project Name:   Decoder 
-- Target Devices: Digilent Nexys 2
-- Tool versions:  ISE 14.2
-- Description:    Decoder 2-4
--
-- Dependencies: No
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--tabella di verità
--i1 i0	 o3 o2 o1 o0
-- 0  0	  1  0  0  0
-- 0  1	  0  1  0  0
-- 1  0	  0  0  1  0
-- 1  1	  0  0  0  1

entity Decoder_2_4 is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_4;

architecture Dataflow of Decoder_2_4 is

begin

o(3) <= (not i(1)) and (not i(0));
o(2) <= (not i(1)) and i(0);
o(1) <= i(1) and (not i(0));
o(0) <= i(1) and i(0);

end Dataflow;

