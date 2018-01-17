----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:22 11/01/2017 
-- Design Name: 
-- Module Name:    Carry_Look_A-head - Behavioral 
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

entity Carry_Look_A_head_unit is
	 generic( width:natural:=2);
    Port ( c_generate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           c_propagate : in  STD_LOGIC_VECTOR (width-1 downto 0);
           cin : in  STD_LOGIC;
			  cout: out STD_LOGIC
			  );
end Carry_Look_A_head_unit;

architecture Structural of Carry_Look_A_head_unit is
signal carry:STD_LOGIC_VECTOR(width downto 1):=(others=>'0');
begin
	carry_i:for i in 1 to width generate
		first_c: if i=1 generate
			carry(i)<=(c_generate(i-1) or (c_propagate(i-1) and cin));
		end generate;
		c:if i>1 generate
			carry(i)<=(c_generate(i-1) or (c_propagate(i-1) and carry(i-1)));
		end generate;
	end generate;
	cout<=carry(width);
end Structural;

