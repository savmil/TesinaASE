----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:57 12/18/2015 
-- Design Name: 
-- Module Name:    gpio - Behavioral 
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

entity gpio is
	 generic( N : natural := 4);
    Port ( pads : inout  STD_LOGIC_VECTOR (N-1 downto 0);
           output : out  STD_LOGIC_VECTOR (N-1 downto 0);
           input : in  STD_LOGIC_VECTOR (N-1 downto 0);
           en_o : in  STD_LOGIC_VECTOR (N-1 downto 0));
end gpio;

architecture Behavioral of gpio is

COMPONENT pad_io
	PORT(
		input : IN std_logic;
		en_o : IN std_logic;    
		i_o : INOUT std_logic;      
		output : OUT std_logic
		);
	END COMPONENT;

begin

main_gen: for i in 0 to N-1 generate
	gen_pad_io: pad_io PORT MAP(
		i_o => pads(i),
		output => output(i),
		input => input(i),
		en_o => en_o(i)
	);
end generate;

end Behavioral;

