-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    			  FF_D_RAsync - Behavioral
-- Referring Project Name:   Flip Flop
-- Target Devices: 			  Digilent Nexsys 2
-- Tool versions:            Ise 14.2
-- Description: 				  Flip Flop di tipo D con Reset asincrono
--
-- Dependencies: 				  None
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Descrizione dei segnali:
-- D     : Segnale di input dati
-- clock : Segnale di clock rispetto al quale il componente è sincrono
-- reset : Segnale di reset del Flip Flop 0 attivo
-- en    : Segnale di enable 0 attivo
-- Q 	 : Segnale di output del Flip Flop
entity FF_D_RAsync is
    Port ( D : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FF_D_RAsync;

-- Viene utilizzata una descrizione behavioral in modo tale che il
-- tool di sintesi riconosca il pattern associato alla struttura
-- del Flip Flop
architecture Behavioral of FF_D_RAsync is

-- Segnale temporaneo interno, utilizzato per garantire uno stato iniziale valido
signal q_tmp : std_logic := '0';

begin

-- Collegamento dell'uscita
q <= q_tmp;

-- FF D
FF: process (clock,reset)

begin	
		if reset = '0' then
				q_tmp <= '0';
		elsif rising_edge(clock) then
			if en = '0' then
				q_tmp <= D;
			end if;
		end if;

end process;
		
end Behavioral;

