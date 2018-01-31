----------------------------------------------------------------------------------
-- Company: Gruppo_11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    Decoder_Seven_segm 
-- Project Name:   Decoder
-- Target Devices: Digilent Nexys 2
-- Tool versions:  ISE 14.2
-- Description:    Decoder per il display a sette segmenti
--
-- Dependencies: No
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_Seven_segm is
    Port ( Ing : in  STD_LOGIC_VECTOR (3 downto 0);
           Cathodes : out  STD_LOGIC_VECTOR (6 downto 0));
end Decoder_Seven_segm;

architecture Dataflow of Decoder_Seven_segm is
signal temp : STD_LOGIC_VECTOR (6 downto 0); 

begin

-- Equazioni minimizzate con SIS (simplify)

temp(0) <= ((not Ing(1)) and temp(4) and temp(6)) or (Ing(0) 
				and (not temp(2)) and (not temp(4))) or ((not Ing(0)) and temp(4));
temp(1) <= (Ing(1)and (not temp(3)) and (not temp(5))) 
				or (Ing(2) and (not temp(0)) and (not temp(5)));
temp(2) <= ((not Ing(3)) and (not Ing(2)) and Ing(1) and (not temp(4)))
				or (Ing(3) and Ing(2) and (not Ing(0))) or (Ing(3) and Ing(2) and Ing(1));
temp(3) <= ((not Ing(2)) and Ing(1) and (not Ing(0)) and (not temp(2)))
				or (Ing(2) and Ing(1) and Ing(0)) or (temp(0) and temp(4));
temp(4) <= ((not Ing(2)) and (not Ing(1)) and Ing(0)) or ((not Ing(3))
				and Ing(2) and (not Ing(1))) or ((not Ing(3)) and Ing(0));
temp(5) <= ((not Ing(3)) and (not Ing(2)) and (not temp(6))) or ((not Ing(1))
				and Ing(0) and temp(0)) or (temp(4) and temp(6));
temp(6) <= (Ing(2) and Ing(1) and temp(4)) or ((not Ing(3)) and (not Ing(2))
				and (not Ing(1))) or ((not Ing(1)) and temp(2));

--collegamento delle uscite
Cathodes <= temp;

end Dataflow;

