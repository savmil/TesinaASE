----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: Mux_4n_1n_struct
-- Referring Project Name: Multiplexer
-- Target Devices: Digilant Nexsys 2
-- Tool versions: Ise 14.2
-- Description: Un Multiplexer 4-1 con ingressi e uscite a n bit  
--
-- Dependencies: Mux_4_1 - Dataflow
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Descrizione dei segnali:
--			a  : Segnale d'ingresso
--			b  : Segnale d'ingresso
--			c  : Segnale d'ingresso
--			d  : Segnale d'ingresso
--			s  : Segnale di selezione
--			o  : Segnale di output

entity Mux_4n_1n_struct is
	 generic ( width : integer := 4);	
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c : in  STD_LOGIC_VECTOR (width-1 downto 0);
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Mux_4n_1n_struct;

architecture Structural of Mux_4n_1n_struct is

component Mux_4_1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC);
end component;

begin
 
Mux_Gen : for k in width-1 downto 0 generate

	MUX4_1 : Mux_4_1 port map(a => a(k),
									  b => b(k), 
									  c => c(k), 
									  d => d(k), 
									  s => s, 
									  o => o(k)
									 );
	
end generate;


end Structural;

