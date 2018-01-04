----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:25 11/19/2012 
-- Design Name: 
-- Module Name:    controlled_not - Behavioral 
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

entity controlled_not is
	 Generic(width : integer := 8);
    Port ( input : in  STD_LOGIC_VECTOR (width - 1 downto 0);
           invert : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (width - 1 downto 0));
end controlled_not;

architecture Dataflow of controlled_not is

begin

with invert select
	output <= not input when '1',
				 input when others;

end Dataflow;

