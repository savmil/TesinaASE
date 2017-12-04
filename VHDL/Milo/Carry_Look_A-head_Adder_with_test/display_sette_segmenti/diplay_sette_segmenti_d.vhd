----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:35:35 10/28/2017 
-- Design Name: 
-- Module Name:    diplay_sette_segmenti_d - Behavioral 
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

entity diplay_sette_segmenti_d is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end diplay_sette_segmenti_d;

architecture structural of diplay_sette_segmenti_d is
component display_sette_segmenti_f is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component display_sette_segmenti_e is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component diplay_sette_segmenti_b is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
signal s4,s1,s5:STD_LOGIC:='0';
begin
	b:diplay_sette_segmenti_b port map(number,s1);
	e:display_sette_segmenti_e port map(number,s4);
	f:display_sette_segmenti_f port map(number,s5);
	o<=not( ((not number(2)) and (not number(1)) and (not s5)) or ((not number(2)) and number(1) and number(0)) or ((not number(3)) and (not s4)) or ((not number(0)) and s1) or (not((number(1) or (not number(2))) or (not number(0)))));
end structural;

