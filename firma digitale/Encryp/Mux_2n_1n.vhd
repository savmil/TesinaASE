----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    			  Mux_2n_1n - Dataflow 
-- Referring Project Name:   Multiplexer
-- Target Devices: 			  Digilant Nexsys 2
-- Tool versions:            Ise 14.2
-- Description: 				  Un Multiplexer 2_1 con ingressi ad n bti
--
-- Dependencies: 				  No
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Descrizione dei segnali:
--			a : segnale di input
--			b : segnale di input
--			s : segnale di selezione
--			i : segnale di output

entity Mux_2n_1n is
	 generic(width : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR(width-1 downto 0);
           b : in  STD_LOGIC_VECTOR(width-1 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR(width-1 downto 0));
end Mux_2n_1n;

architecture Dataflow of Mux_2n_1n is


--s_temp : segnale temporaneo per collegare 
--correttamente il segnale di selezione
signal s_temp : STD_LOGIC_VECTOR(width-1 downto 0);

begin

	-- descrizione in VHDL dell'equazione a*s'+b*s 
	s_temp <= (others => s); 
	o <= (a and (not s_temp)) or (b and s_temp);

end Dataflow;

