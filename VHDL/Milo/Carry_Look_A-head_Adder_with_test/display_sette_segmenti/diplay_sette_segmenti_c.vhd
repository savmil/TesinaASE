----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:16 10/28/2017 
-- Design Name: 
-- Module Name:    diplay_sette_segmenti_c - Behavioral 
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

entity diplay_sette_segmenti_c is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end diplay_sette_segmenti_c;

architecture Behavioral of diplay_sette_segmenti_c is
component display_sette_segmenti_f is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
signal s5:STD_LOGIC:='0';
begin
	f:display_sette_segmenti_f port map (number, s5);
	o<=not(((not s5) and ((not number(2)) or (not number(3)))) or (number(0) and s5));
end Behavioral;

