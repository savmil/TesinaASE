----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:16 10/28/2017 
-- Design Name: 
-- Module Name:    diplay_7_segmenti - Behavioral 
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

entity display_7_segmenti is
    Port ( switch : in  STD_LOGIC_VECTOR (3 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0);
			  point :in STD_LOGIC_VECTOR(3 downto 0));
end display_7_segmenti;

architecture structural of display_7_segmenti is
component display_sette_segmenti_g is
												port
												( number : in  STD_LOGIC_VECTOR (3 downto 0);
														 o : out  STD_LOGIC);
end component;
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
component diplay_sette_segmenti_b is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component display_sette_segmenti_a is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
component diplay_sette_segmenti_c is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;
begin
	b:diplay_sette_segmenti_b port map	(switch, segment(1));
	d:diplay_sette_segmenti_d port map (switch, segment(3));
	f:display_sette_segmenti_f port map (switch, segment(5));
	g:display_sette_segmenti_g port map (switch, segment(6));
	a:display_sette_segmenti_a port map	(switch,segment(0));
	c:diplay_sette_segmenti_c port map (switch, segment(2));
	e:display_sette_segmenti_e port map (switch, segment(4));
end structural;

