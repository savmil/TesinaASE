----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:01 11/17/2017 
-- Design Name: 
-- Module Name:    Carry_Look_A_head - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Carry_Look_A_head_r is
	 generic(width: Natural :=8);
    Port ( c_generate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c_propagate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR(width downto 1));
end Carry_Look_A_head_r;

architecture Structural of Carry_Look_A_head_r is
	COMPONENT Carry_Look_A_head_unit
	generic(width: NATURAL:=8);
	PORT(
		c_generate : IN std_logic_vector(width-1 downto 0);
		c_propagate : IN std_logic_vector(width-1 downto 0);
		cin : IN std_logic;          
		cout : OUT std_logic:='0');
	END COMPONENT;
begin	
	C_L_A:for i in 1 to width generate
		inst_C_L_A_U: Carry_Look_A_head_unit generic map (width=>i) port map(c_generate(i-1 downto 0),c_propagate(i-1 downto 0),cin,cout(i)); 
	end generate;
end Structural;

