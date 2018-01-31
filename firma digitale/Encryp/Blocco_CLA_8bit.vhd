----------------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: Blocco_CLA_8bit - Dataflow 
-- Project Name: Addizionatori 
-- Target Devices: Digilent Nexsys 2
-- Tool versions: ISE 14.2
-- Description: Blocco CLA del CLA Adder
--
-- Dependencies: No
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Blocco_CLA_8bit is
    Port ( p : in  STD_LOGIC_VECTOR (7 downto 0);
           g : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           c_vect : out  STD_LOGIC_VECTOR (8 downto 0));
end Blocco_CLA_8bit;

architecture Dataflow of Blocco_CLA_8bit is

begin

--equazione del blocco CLA

c_vect(0) <= cin;

c_vect(1) <= g(0) or 
			   (p(0) and cin);
					  
c_vect(2) <= g(1) or 
			   (p(1) and g(0)) or
				(p(1) and p(0) and cin);
					  
c_vect(3) <= g(2) or
				(p(2) and g(1)) or
				(p(2) and p(1) and g(0)) or
				(p(2) and p(1) and p(0) and cin);
					  
c_vect(4) <= g(3) or
				(p(3) and g(2)) or
				(p(3) and p(2) and g(1)) or
				(p(3) and p(2) and p(1) and g(0)) or
				(p(3) and p(2) and p(1) and p(0) and cin);

c_vect(5) <= g(4) or
				(p(4) and g(3)) or
				(p(4) and p(3) and g(2)) or
				(p(4) and p(3) and p(2) and g(1)) or
				(p(4) and p(3) and p(2) and p(1) and g(0)) or
				(p(4) and p(3) and p(2) and p(1) and p(0) and cin);
					  
c_vect(6) <= g(5) or
				(p(5) and g(4)) or
				(p(5) and p(4) and g(3)) or
				(p(5) and p(4) and p(3) and g(2)) or
				(p(5) and p(4) and p(3) and p(2) and g(1)) or
				(p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
				(p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and cin);
				 
c_vect(7) <= g(6) or 
				(p(6) and g(5)) or
				(p(6) and p(5) and g(4)) or
				(p(6) and p(5) and p(4) and g(3)) or
				(p(6) and p(5) and p(4) and p(3) and g(2)) or
				(p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
				(p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
				(p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and cin);
					  
c_vect(8) <= g(7) or 
				(p(7) and g(6)) or 
				(p(7) and p(6) and g(5)) or
				(p(7) and p(6) and p(5) and g(4)) or
				(p(7) and p(6) and p(5) and p(4) and g(3)) or
				(p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
				(p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
				(p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
				(p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and cin);	

end Dataflow;

