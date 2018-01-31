------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: RAsync_2UpNCount_UpCounter
-- Referring Project Name:   Counter
-- Target Devices: Digilent Nexsys 2
-- Tool versions: Ise 14.2
-- Description: Contatore ad incremento con reset asincrono. Il conteggio massimo 
--					 è 2^N, con N impostabile dall'utente. In uscita presenta solo
--					 il conteggio attuale espresso su N bit.
--
-- Dependencies: Nessuna
--
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAsync_2UpNCount_UpCounter is
		Generic (width : integer := 2);
			Port ( clock : in  STD_LOGIC;      -- Clock
					 reset : in  STD_LOGIC;    -- Segnale di reset 0 attivo
					 en : in  STD_LOGIC;       -- Segnale di enable 1 attivo
					 count : out  STD_LOGIC_VECTOR (width-1 downto 0) := (others => '0'));  -- conteggio attuale
end RAsync_2UpNCount_UpCounter;

architecture Behavioral of RAsync_2UpNCount_UpCounter is

begin

clk_proc : process(clock,reset)

--Variabile di conteggio
variable CNT : unsigned(width-1 downto 0) := (others => '0');

begin
		if reset = '1' then
			if rising_edge(clock) then
				if en = '0' then
					CNT := CNT + 1;
				end if;
			end if;		
		else 
			CNT := (others => '0');
		end if;

--Collegamento con l'uscita
count <= std_logic_vector(CNT);

end process;

end Behavioral;

