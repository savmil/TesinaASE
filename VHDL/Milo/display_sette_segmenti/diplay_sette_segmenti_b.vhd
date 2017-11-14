----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:06 10/28/2017 
-- Design Name: 
-- Module Name:    diplay_sette_segmenti_b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity diplay_sette_segmenti_b is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end diplay_sette_segmenti_b;

architecture structural of diplay_sette_segmenti_b is
component display_sette_segmenti_e is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;	
signal s4: STD_LOGIC:='0';													 
begin
	e:display_sette_segmenti_e port map(number,s4);
	o<=not( (number(3) and (not number(1)) and number(0)) or (s4 and ( (number(1) or (not number(2))) or (not number(0)))) or ( (not number(2)) and (not number(0) ) ));
end structural;

