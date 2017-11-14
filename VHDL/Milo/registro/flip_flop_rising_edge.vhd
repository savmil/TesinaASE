----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:42 11/07/2017 
-- Design Name: 
-- Module Name:    flip_flop_rising_edge - Behavioral 
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
library STD;
use STD.textio.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flip_flop_rising_edge is
    Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC;
           set : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end flip_flop_rising_edge;

architecture Behavioral of flip_flop_rising_edge is
signal temp:STD_LOGIC:='0';
begin
	flip_flop_r_e:process (clk,enable,set,reset)
		variable l:line;
		begin
		if (enable ='1' and rising_edge(clk)) then
					if(set='1' and reset='0') then
						temp<='1';
					elsif(reset='1' and set='0') then
						temp<='0';
					elsif(set='0' and reset ='0') then
						temp<=temp;
					else
						temp<='X';
					end if;
		end if;	
		end process;
		q<=temp;
		notq<=not(temp);
end Behavioral;

