----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:21 11/15/2017 
-- Design Name: 
-- Module Name:    latch_d - Behavioral 
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

entity latch_d is
	 generic(width: NATURAL:=8);
    Port ( input : in  STD_LOGIC_VECTOR(width-1 downto 0);
           enable : in  STD_LOGIC;
			  reset:in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(width-1 downto 0));
end latch_d;

architecture Behavioral of latch_d is

begin
process (enable, reset)
begin
   if reset='0' then   
      output<= (others=>'0');
   elsif (rising_edge(enable)) then 
		for i in 0 to width-1 loop
			output(i) <= input(i);
		end loop;
   end if;
end process;

end Behavioral;

