----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:51:09 12/27/2017 
-- Design Name: 
-- Module Name:    partial_sum_3 - Behavioral 
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

entity partial_sum_3 is
	 generic( width:NATURAL:=8);
    Port ( adder1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder3 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder4 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder5 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder6 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder7 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           sum0 : out  STD_LOGIC_VECTOR (width+1 downto 0);
           sum1 : out  STD_LOGIC_VECTOR (width+1 downto 0);
           sum2 : out  STD_LOGIC_VECTOR (width+1 downto 0));
end partial_sum_3;

architecture Behavioral of partial_sum_3 is
COMPONENT sevent_to_three
	PORT(
		adder : IN std_logic_vector(6 downto 0);          
		s0 : OUT std_logic;
		s1 : OUT std_logic;
		s2 : OUT std_logic
		);
END COMPONENT;
type fake_adder is array(0 to width-1) of STD_LOGIC_VECTOR(width-2 downto 0);
signal a,b,c :STD_LOGIC_VECTOR(width+1 downto 0):=(others=>'0');
signal m_fake_adder: fake_adder;
begin
		s_t_t_g:for i in 0 to width-1 generate
			m_fake_adder(i)<=adder7(i)&adder6(i)&adder5(i)&adder4(i)&adder3(i)&adder2(i)&adder1(i);
			s_t_t:sevent_to_three port map (m_fake_adder(i),a(i),b(i+1),c(i+2));
		end generate;
		sum0<=a;
		sum1<=b;
		sum2<=c;
end Behavioral;

