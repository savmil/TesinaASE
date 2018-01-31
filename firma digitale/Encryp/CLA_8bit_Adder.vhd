----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: CLA_8bit_Adder - Structural 
-- Project Name: Addizionatori
-- Target Devices: Digilent Nexsys 2
-- Tool versions: ISE 14.2
-- Description: Addizionatore Carry Look-Ahead 
--					 con operandi ad 8 bit 
--
-- Dependencies: No 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLA_8bit_Adder is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (7 downto 0);
           cout : out  STD_LOGIC;
           ovf : out  STD_LOGIC);
end CLA_8bit_Adder;

architecture Structural of CLA_8bit_Adder is

component Blocco_PG is
    generic( width : INTEGER := 8);
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
           p : out  STD_LOGIC_VECTOR (width-1 downto 0);
           g : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;

component Blocco_CLA_8bit is
    Port ( p : in  STD_LOGIC_VECTOR (7 downto 0);
           g : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           c_vect : out  STD_LOGIC_VECTOR (8 downto 0));
end component;

signal temp_p : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal temp_g : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal temp_c : STD_LOGIC_VECTOR (8 downto 0) := (others => '0');


begin

-- Blocco Propagate/Generate
ist_pgb : Blocco_PG generic map( width => 8 )
			 port map ( a => a, b => b, p => temp_p, g => temp_g);

--Blocco Carry Look-Ahead
ist_clb : Blocco_CLA_8bit port map ( p => temp_p, g => temp_g, 
												 cin => cin, c_vect => temp_c);
												 
--Collegamento Uscite Adder
s <= temp_p xor temp_c (7 downto 0);

ovf <= temp_c(8) xor temp_c(7);

cout <= temp_c(8);

end Structural;

