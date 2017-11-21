----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:26 11/18/2017 
-- Design Name: 
-- Module Name:    edge_triggered_t - Behavioral 
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

entity edge_triggered_t is
    Port ( reset_n : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : out  STD_LOGIC
			 );
end edge_triggered_t;

architecture Behavioral of edge_triggered_t is

signal output : STD_LOGIC := '0';

begin

q <= output;

process (clock, reset_n)
begin
   if reset_n='0' then   
      output <= '0';
   elsif (clock'event and clock='1') then 
      if t = '1' then 
         output <= not(output);
      end if; 
   end if;
end process;

end Behavioral;

