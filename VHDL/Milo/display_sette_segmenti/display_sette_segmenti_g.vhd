----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:53 10/28/2017 
-- Design Name: 
-- Module Name:    display_sette_segmenti_g - Behavioral 
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

entity display_sette_segmenti_g is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end display_sette_segmenti_g;


architecture dataflow of display_sette_segmenti_g is
component display_sette_segmenti_f is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component display_sette_segmenti_e is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component diplay_sette_segmenti_d is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component diplay_sette_segmenti_c is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
signal s2,s3,s4,s5:STD_LOGIC:='0';
begin
	e:display_sette_segmenti_e port map(number,s4);
	f:display_sette_segmenti_f port map(number,s5);
	d:diplay_sette_segmenti_d port map(number,s3);
	c:diplay_sette_segmenti_c port map(number,s2);
o<=not( (s4 and (not s5)) or (number(1) and (not s3)) or (number(1) and s2) or (number(3) and (not s2)  ));
end dataflow;

