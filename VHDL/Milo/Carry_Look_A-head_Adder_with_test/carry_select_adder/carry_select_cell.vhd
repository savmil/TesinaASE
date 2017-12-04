----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:39 11/21/2017 
-- Design Name: 
-- Module Name:    carry_select_cell - Behavioral 
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

entity carry_select_cell is
	 generic ( N : natural:= 4);
    Port ( adder1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  adder2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  cin : in STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (N-1 downto 0);
           cout : out  STD_LOGIC);
end carry_select_cell;

architecture Behavioral of carry_select_cell is
COMPONENT RippleCarryAdder
	generic ( N : natural:= 4);
	PORT(
		adder1 : IN std_logic_vector(N-1 downto 0);
		adder2 : IN std_logic_vector(N-1 downto 0);  
		cin : IN STD_LOGIC;
		sum : OUT std_logic_vector(N-1 downto 0);
		last_carry : OUT std_logic
		);
	END COMPONENT;
	COMPONENT mux2_1
	PORT(
		SEL : IN std_logic;
		A : IN std_logic;
		B : IN std_logic;          
		X : OUT std_logic
		);
	END COMPONENT;
	signal sum0,sum1:STD_LOGIC_VECTOR(N-1 downto 0);
	signal cout0,cout1:STD_LOGIC;
begin
		c_s_c_0:RippleCarryAdder port map(adder1,adder2,'0',sum0,cout0);
		c_s_c_1:RippleCarryAdder port map(adder1,adder2,'1',sum1,cout1);
		with cin select sum<=
			  sum0 when '0',
			  sum1 when '1',
			  "UUUU" when others;
		--mux_s:mux2_1 port map (cin,sum0,sum1,sum);
		mux_c:mux2_1 port map (cin,cout0,cout1,cout);
end Behavioral;

