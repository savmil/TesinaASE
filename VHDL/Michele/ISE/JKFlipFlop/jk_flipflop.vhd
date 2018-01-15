----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:29 01/13/2018 
-- Design Name: 
-- Module Name:    jk_flipflop - Behavioral 
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

entity jk_flipflop is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end jk_flipflop;

architecture Behavioral of jk_flipflop is

signal stato : STD_LOGIC := '0';
signal input : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

begin
q <= stato;
notq <= not stato;
input <= j & k;

main : process(clock, reset)
	begin
		if (reset = '1') then
			stato <= '0';
		elsif (rising_edge(clock)) then
			case(input) is
				when "01" =>
					stato <= '0';
				when "10" =>
					stato <= '1';
				when "11" =>
					stato <= not stato;
				when others =>
					null;
			end case;
		end if;
	end process;

end Behavioral;

