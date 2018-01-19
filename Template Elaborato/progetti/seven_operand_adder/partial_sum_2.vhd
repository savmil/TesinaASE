----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:19:21 12/27/2017 
-- Design Name: 
-- Module Name:    partial_sum_2 - Behavioral 
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

entity partial_sum_2 is
	 generic( width:NATURAL:=10);
    Port ( adder1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder3 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           sum1 : out  STD_LOGIC_VECTOR (width downto 0);
           sum2 : out  STD_LOGIC_VECTOR (width downto 0));
end partial_sum_2;

architecture Behavioral of partial_sum_2 is
COMPONENT full_adder_half
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		CIN : IN std_logic;          
		S : OUT std_logic;
		COUT : OUT std_logic
		);
	END COMPONENT;
	signal a,b:STD_LOGIC_VECTOR(width downto 0):=(others=>'0');
begin
	p_s_2:for i in 0 to width-1 generate
		p_a:full_adder_half port map(adder1(i),adder2(i),adder3(i),a(i),b(i+1));
	end generate;
	sum1<=a;
	sum2<=b;
end Behavioral;

