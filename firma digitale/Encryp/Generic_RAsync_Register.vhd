--------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name:    			  Generic_RAsync_Register - Structural 
-- Referring Project Name:   Register
-- Target Devices: 			  Digilent Nexsys 2
-- Tool versions:            Ise 14.2
-- Description: 				  Registro generico con reset asincrono
--
-- Dependencies: 				  FF_D_RAsync
--
--------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Descrizione dei segnali:
--	D 	  : Segnale vettorioale di input a N bit 
--	clock : Segnale di clock rispetto al quale il componente è sincrono
--	reset : Segnale di reset 0 attivo
--	en 	  : Segnale di enable 0 attivo
--	Q	  : Segnale vettoriale di output del registro a N bit
entity Generic_RAsync_Register is
	 Generic ( width : integer := 8);
    Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Generic_RAsync_Register;

architecture Structural of Generic_RAsync_Register is

--flip flop con reset asincrono
component FF_D_RAsync is
    Port ( D : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin

-- Generazione dei Flip Flop del registro
ins_reg : for i in 0 to width-1 generate

	ff_as : FF_D_RAsync port map ( D=>D(i),
											clock => clock,
											reset => reset,
											en => en,
											Q => Q(i));

	end generate;
end Structural;
