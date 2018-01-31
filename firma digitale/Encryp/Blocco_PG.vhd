----------------------------------------------------------------------------------
-- Company: Gruppo_11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: Blocco_PG - Dataflow 
-- Project Name: Addizionatori 
-- Target Devices: Digilent Nexsys 2
-- Tool versions: ISE 14.2
-- Description: Blocco Propagazione/Generazione del CLA Adder
--
-- Dependencies: No
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Blocco_PG is
    generic( width : INTEGER := 8);
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
           p : out  STD_LOGIC_VECTOR (width-1 downto 0);
           g : out  STD_LOGIC_VECTOR (width-1 downto 0));
end Blocco_PG;

architecture Dataflow of Blocco_PG is

begin

pro : p <= a xor b;
gen : g <= a and b;
 
end Dataflow;

