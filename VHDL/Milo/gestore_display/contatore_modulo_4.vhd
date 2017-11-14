----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:30 11/09/2017 
-- Design Name: 
-- Module Name:    contatore_modulo_2n - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contatore_modulo_2n is
	 generic(width: natural:=2);
    Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           hit : out  STD_LOGIC:='0';
			  reset: in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(width-1 downto 0));
end contatore_modulo_2n;

architecture Behavioral of contatore_modulo_2n is
signal count:STD_LOGIC_VECTOR(width-1 downto 0):=(others=>'0');
begin
process (clk, reset) 
begin
   if reset='0' then 
      count <= (others => '0');
   elsif (rising_edge(clk) and enable='1') then
         count <= std_logic_vector(unsigned(count) +1);
			if count=(width-1 downto 0=>'1') then
				hit<='1';
			else 
				hit<='0';
			end if;
   end if;
end process;
output<=count;
end Behavioral;

