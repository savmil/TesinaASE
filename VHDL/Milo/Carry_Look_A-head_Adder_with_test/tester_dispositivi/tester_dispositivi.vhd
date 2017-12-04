----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:42 11/15/2017 
-- Design Name: 
-- Module Name:    tester_dispositivi - Behavioral 
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

entity tester_dispositivi is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
           button : in  STD_LOGIC_VECTOR (3 downto 0);
           reset : out  STD_LOGIC;
           output : out  STD_LOGIC(7 downto 0));
end tester_dispositivi;

architecture Behavioral of tester_dispositivi is
COMPONENT latch_d
	generic(width: NATURAL:=8);
	PORT(
		input : IN std_logic_vector(width-1 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
begin
	registro : latch_d port map(input,button(0),button(1),output);
	reset<=button(1);
end Behavioral;

