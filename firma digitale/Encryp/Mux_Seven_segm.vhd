----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: Mux_Seven_segm
-- Referring Project Name: Multiplexer
-- Target Devices: Digilant Nexsys 2
-- Tool versions: Ise 14.2
-- Description: Un multiplexer creato appositamente per il display a sette segmenti
--
-- Dependencies: Mux_4n_1n,Mux_4_1
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Signal description:
--			Disp0   : quattro segnali di ingresso che reppresentano il primo digit
--			Disp1   : quattro segnali di ingresso che reppresentano il secondo digit
--			Disp2   : quattro segnali di ingresso che reppresentano il terzo digit 
--			Disp3   : quattro segnali di ingresso che reppresentano il quarto digit
--			Dots    : quattro segnali di ingresso che reppresentano i punti sul display
--			Sel	  : Segnale di selezione
--			Dig_out : quattro segnali di uscita per gestire i digit
--			Dot_out : quattro segnali di uscita per gestire i punti

entity Mux_Seven_segm is
    Port ( Disp0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp3 : in  STD_LOGIC_VECTOR (3 downto 0);
           Dots : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Dig_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Dot_out : out  STD_LOGIC);
end Mux_Seven_segm;

architecture Structural of Mux_Seven_segm is

component Mux_4n_1n_struct is
	 generic ( width : integer := 4);	
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c : in  STD_LOGIC_VECTOR (width-1 downto 0);
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;

component Mux_4_1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           o : out  STD_LOGIC);
end component;

begin

-- Questo multiplexer gestirà i digit
Mux_disp : Mux_4n_1n_struct generic map(width => 4)
										port map( a => Disp0,
													 b => Disp1,
													 c => Disp2,
													 d => Disp3,
													 s => Sel,
													 o => Dig_out
													);
													
-- Questo multiplexer gestirà i punti
Mux_dot : Mux_4_1 port map( a => Dots(3),
									 b => Dots(2),
									 c => Dots(1),
									 d => Dots(0),
									 s => Sel,
									 o => Dot_out
									);

end Structural;

