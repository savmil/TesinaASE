----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:12 10/28/2017 
-- Design Name: 
-- Module Name:    display_sette_segmenti_a - Behavioral 
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

entity display_sette_segmenti_a is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end display_sette_segmenti_a;

architecture structural of display_sette_segmenti_a is
component display_sette_segmenti_e is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;	
component diplay_sette_segmenti_d is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end component;

signal s3,s4: STD_LOGIC:='0';			
begin
	e:display_sette_segmenti_e port map(number,s4);
	d:diplay_sette_segmenti_d port map(number,s3);
	o<=not( ((not s3) and s4) or ((not number(0)) and (not s4)) or (number(1) and s3) );
end structural;

