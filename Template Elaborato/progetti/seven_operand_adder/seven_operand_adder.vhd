----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:49 12/27/2017 
-- Design Name: 
-- Module Name:    seven_operand_adder - Behavioral 
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

entity seven_operand_adder is
	 generic(width: natural:=8);
    Port ( adder1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder3 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder4 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder5 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder6 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder7 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           sum : out  STD_LOGIC_VECTOR (width+2 downto 0));
end seven_operand_adder;

architecture Behavioral of seven_operand_adder is
COMPONENT partial_sum_3
	PORT(
		adder1 : IN std_logic_vector(7 downto 0);
		adder2 : IN std_logic_vector(7 downto 0);
		adder3 : IN std_logic_vector(7 downto 0);
		adder4 : IN std_logic_vector(7 downto 0);
		adder5 : IN std_logic_vector(7 downto 0);
		adder6 : IN std_logic_vector(7 downto 0);
		adder7 : IN std_logic_vector(7 downto 0);          
		sum0 : OUT std_logic_vector(9 downto 0);
		sum1 : OUT std_logic_vector(9 downto 0);
		sum2 : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
COMPONENT partial_sum_2
	PORT(
		adder1 : IN std_logic_vector(9 downto 0);
		adder2 : IN std_logic_vector(9 downto 0);
		adder3 : IN std_logic_vector(9 downto 0);          
		sum1 : OUT std_logic_vector(10 downto 0);
		sum2 : OUT std_logic_vector(10 downto 0)
		);
	END COMPONENT;
	COMPONENT RippleCarryAdder
	generic ( N : natural:= 11);
	PORT(
		adder1 : IN std_logic_vector(N-1 downto 0);
		adder2 : IN std_logic_vector(N-1 downto 0);          
		sum : OUT std_logic_vector(N-1 downto 0);
		last_carry : OUT std_logic
		);
	END COMPONENT;
	signal sum0_f,sum1_f,sum2_f: STD_LOGIC_VECTOR(width+1 downto 0):=(others=>'0');
	signal sum0_s,sum1_s: STD_LOGIC_VECTOR(width+2 downto 0):=(others=>'0');
begin
	p_s_3:partial_sum_3 port map(adder1,adder2,adder3,adder4,adder5,adder6,adder7,sum0_f,sum1_f,sum2_f);
	p_s_2:partial_sum_2 port map(sum0_f,sum1_f,sum2_f,sum0_s,sum1_s);
	r_c_a:RippleCarryAdder port map(sum0_s,sum1_s,sum,open);
end Behavioral;

