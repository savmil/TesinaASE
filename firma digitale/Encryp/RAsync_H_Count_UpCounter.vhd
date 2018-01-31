------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: RAsync_H_Count_UpCounter
-- Referring Project Name:   Counter
-- Target Devices: Digilent Nexsys 2
-- Tool versions: Ise 14.2
-- Description: Contatore ad incremento con reset asincrono. Il conteggio
--					 massimo e' definibile dall'utente nella variabile MAX_COUNT.
--					 In uscita e' riporato il segnale di hit (quando il conteggio
--					 raggiunge MAX_COUNT) e il conteggio attuale espresso su
--					 width (impostabile dall'utente) bit.
--
-- Dependencies: Nessuna
--
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

--La variabile MAX_COUNT indica il valore di conteggio massimo. 
--La variabile width è la dimensione in bit dell'uscita count.
--ATTENZIONE : Spetta all'utente fornire un valore necessario per rappresentare 
--					il conteggio nel range [0 MAX_COUNT-1]. Se il vincolo non e'
--					rispettato il contatore continuerà a fornire l'hit nella maniera
--					corretta, ma il valore di conteggio attuale sara' troncato
--					(con conseguente warning del simulatore e del sintetizzatore).

entity RAsync_H_Count_UpCounter is
	 Generic (MAX_COUNT : integer := 6; width : integer := 3);	
    Port ( clock : in  STD_LOGIC;											-- Clock
           reset : in  STD_LOGIC;											-- Reset 0 attivo
			  en : in STD_LOGIC;													-- Enable 0 attivo
			  hit : out STD_LOGIC;												-- Segnale di Hit
           count : out  STD_LOGIC_VECTOR (width-1 downto 0));		-- Conteggio attuale
end RAsync_H_Count_UpCounter;

architecture Behavioral of RAsync_H_Count_UpCounter is

begin

process (clock, reset) 

--Variabile di conteggio
variable CNT : integer := 0;
		
begin
		
if reset = '1' then
	if rising_edge(clock) then
		if en = '0' then
			CNT := CNT + 1;
			if CNT = MAX_COUNT then
					hit <= '1';
					CNT := 0;
			else 	
					hit <= '0';
			end if;
		else
			hit <= '0';
		end if;
	end if;		
else
	CNT := 0;
	hit <= '0';
end if;

--Collegamento dell'uscita
count <= std_logic_vector(to_unsigned(CNT,width));	
end process;

end Behavioral;

