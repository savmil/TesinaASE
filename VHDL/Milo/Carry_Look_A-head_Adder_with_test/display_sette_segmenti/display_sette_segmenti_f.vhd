----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:32 10/28/2017 
-- Design Name: 
-- Module Name:    display_sette_segmenti_f - Behavioral 
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

entity display_sette_segmenti_f is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end display_sette_segmenti_f;

architecture Behavioral of display_sette_segmenti_f is
component diplay_sette_segmenti_b is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
signal s1:STD_LOGIC:='0';
begin
	b:diplay_sette_segmenti_b port map(number,s1);
	o<=not(((not number(1)) and (not number(0))) or (number(3) and (not number(2))) or s1);
end Behavioral;

