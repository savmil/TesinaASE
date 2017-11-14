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

entity Carry_Look_A_head is
	 generic( N:natural:=3);
    Port ( c_generate : in  STD_LOGIC_VECTOR (N-1 downto 0);
           c_propagate : in  STD_LOGIC_VECTOR (N-1 downto 0);
           cin : in  STD_LOGIC;
           carry : out  STD_LOGIC_VECTOR (N-1 downto 0);
			  cout: out STD_LOGIC
			  );
end Carry_Look_A_head;

architecture Behavioral of Carry_Look_A_head is
signal carry_1:STD_LOGIC:='0';
begin
	carry(0)<=cin;
	carry_1<=cin;
	carry1:for i in 1 to N-1 generate
		carry(i)<=(c_generate(i-1) or (c_propagate(i-1) and carry_1));
	end generate;
	cout<=(c_generate(N-1) or (c_propagate(N-1) and carry_1));
end Behavioral;

