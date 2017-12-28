----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:31 11/12/2017 
-- Design Name: 
-- Module Name:    counter_mod_2n - Behavioral 
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
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_mod_2n is
	 generic(width : natural := 2);
    Port ( en  : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  --counter_hit : out STD_LOGIC; --è alto quando il counter arriva al valore max
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
	 );
end counter_mod_2n;

architecture Behavioral of counter_mod_2n is

signal count : std_logic_vector(width-1 downto 0) := (others => '0');

begin

	q <= count;
	
	process (clk, reset_n,count) 
	begin
		if reset_n='0' then 
			count <= (others => '0');
		elsif clk='1' and clk'event then
			if en='1' then
				count <= conv_std_logic_vector(conv_integer(count)+1, width);
			end if;
		end if;

	end process;

end Behavioral;

