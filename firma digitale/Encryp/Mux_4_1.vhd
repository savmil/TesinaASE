----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    			  Mux_4_1 - Dataflow 
-- Referring Project Name:   Multiplexer
-- Target Devices: 			  Digilent Nexsys 2
-- Tool versions:            Ise 14.2
-- Description: 				  Un multiplexer 4-1 con ingressi da 1 bit
--
-- Dependencies: 				  No
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Descrizione dei segnali : 
--			a   : Segnale di input
--			b   : Segnale di input
--			c   : Segnale di input
--			d   : Segnale di input
--			s	 : segnale di selezione
--			o   : Segnale di output

-- Tabella ottenuta dall'equazione booleana minimizzata con lo strumento "SIS"
--		d  c  b  a  s(1) s(0) o
--		-  -  -  0   0   0    0
--		-  -  -  1   0   0    1
--		-  -  0  -   0   1    0
--		-  -  1  -   0   1    1
--		-  0  -  -   1   0    0
--		-  1  -  -   1   0    1
--		0  -  -  -   1   1    0
--		1  -  -  -   1   1    1

entity Mux_4_1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           o : out  STD_LOGIC);
end Mux_4_1;

architecture Dataflow of Mux_4_1 is

begin

-- descrizione in vhdl dell'equazione a*s1'*s0'+b*s1'*s0+c*s1*s0'+d*s1*s0
o <= (a and (not s(1)) and (not s(0))) or (b and (not s(1)) and s(0)) or 
	  (c and s(1) and (not s(0))) or (d and s(1) and s(0));

end Dataflow;

