----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:58 12/11/2017 
-- Design Name: 
-- Module Name:    Comparator32 - Behavioral 
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

entity Comparator32 is
generic(width : Positive := 32);
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
			  Clock  : in  STD_LOGIC;
			  Comp_en : in  STD_LOGIC;  -- 1 attivo
           equal : out  STD_LOGIC;
			  Notequal : out  STD_LOGIC);
end Comparator32;

architecture Behavioral of Comparator32 is

begin
	process(Clock, Comp_en, a, b)
		begin
			if rising_edge(Clock) then
				if Comp_en = '1' then
					if (a = b) then  
						equal <= '1';
					else
						equal <= '0';
						Notequal <= '1';
					end if;
				else
					equal <= '0';
					Notequal <= '0';
				end if;
			end if;	
	end process;
	
--if (num1 > num2 ) then  --checking whether num1 is greater than num2
--less <= '0';
--equal <= '0';
--greater <= '1';
--elsif (num1 < num2) then    --checking whether num1 is less than num2
--less <= '1';
--equal <= '0';
--greater <= '0';
--else     --checking whether num1 is equal to num2
--less <= '0';
--equal <= '1';
--greater <= '0';
--end if;


end Behavioral;

