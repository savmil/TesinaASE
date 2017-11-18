----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:16 11/01/2017 
-- Design Name: 
-- Module Name:    Carry_Look_A_head_Adder - Behavioral 
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

entity Carry_Look_A_head_Adder is
	 generic(N:natural:=4);
    Port ( adder1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           cin : in STD_LOGIC:='0';
			  sum : out  STD_LOGIC_VECTOR (N-1 downto 0);
           cout : out  STD_LOGIC);
end Carry_Look_A_head_Adder;

architecture structural of Carry_Look_A_head_Adder is
component Carry_Look_A_head_r is
	 generic(width:NATURAL:=4);
    Port ( c_generate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c_propagate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           cin : in  STD_LOGIC;
			  cout : out  STD_LOGIC_VECTOR(width-1 downto 0));
end component;
component Generator_G_P is
	 generic(width:NATURAL:=4);
    Port ( adder1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c_propagate : out  STD_LOGIC_VECTOR (width-1 downto 0);
           c_generate : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;
signal c_propagate1,c_generate1: STD_LOGIC_VECTOR(N-1 downto 0) :=(others=>'0');
signal carry1:STD_LOGIC_VECTOR(N-1 downto 0) :=(others=>'0');
begin
		generator_g_p_r :Generator_G_P port map (adder1,adder2,c_propagate1,c_generate1);
		carry_look_a_head_register:Carry_Look_A_head_r port map(c_generate1,c_propagate1,cin,carry1);
		sum(0)<=cin xor c_propagate1(0);
		bit_sum: for i in 1 to N-1 generate
			sum(i)<=carry1(i-1)xor c_propagate1(i);
		end generate;
		cout<=carry1(N-1);
end structural;

