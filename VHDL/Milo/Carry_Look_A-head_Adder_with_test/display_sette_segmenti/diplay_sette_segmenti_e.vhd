----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:15:24 10/28/2017 
-- Design Name: 
-- Module Name:    diplay_sette_segmenti_e - Behavioral 
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

entity display_sette_segmenti_e is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end display_sette_segmenti_e;

architecture dataflow of display_sette_segmenti_e is
begin
o<=not(((not number(0)) and ( number(1) or (not number(2)))) or (number(3) and number(1)) or (not((not number(2)) or(not number(3)))));


end dataflow;

