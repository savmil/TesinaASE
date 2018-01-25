----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:50 12/18/2015 
-- Design Name: 
-- Module Name:    pad_io - Behavioral 
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

entity pad_io is
    Port ( i_o : inout  STD_LOGIC;
				output : out STD_LOGIC;
				input : in STD_LOGIC;
           en_o : in  STD_LOGIC);
end pad_io;

architecture Behavioral of pad_io is

begin

with en_o select i_o <= input when '1',
		'Z' when others;
output <= i_o;

end Behavioral;

