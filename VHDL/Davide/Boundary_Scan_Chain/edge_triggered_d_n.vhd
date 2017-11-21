----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:50:05 11/12/2017 
-- Design Name: 
-- Module Name:    edge_triggered_d_n - Behavioral 
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

entity edge_triggered_d_n is
	 generic(width : natural := 8);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           --en : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
end edge_triggered_d_n;

architecture Behavioral of edge_triggered_d_n is

begin

main : process(d,clk,reset_n)
begin
	if(reset_n = '0') then
		q <= (others => '0');
	--elsif (en = '1' and rising_edge(clk)) then
	elsif (rising_edge(clk)) then
		q <= d;
	end if;
end process;

end Behavioral;

