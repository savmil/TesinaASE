----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:46:48 11/29/2017 
-- Design Name: 
-- Module Name:    registro_a_scorrimento - Behavioral 
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

entity registro_a_scorrimento is
	 generic (width:NATURAL:=8);
    Port ( input : in  STD_LOGIC_VECTOR(width-1 downto 0);
			  enable :in STD_LOGIC;
           shift : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  shift_bit :in STD_LOGIC;
			  output:out STD_LOGIC_VECTOR(width-1 downto 0));
end registro_a_scorrimento;

architecture Behavioral of registro_a_scorrimento is
	signal temp : STD_LOGIC_VECTOR(width-1 downto 0):=(others=>'0');
begin
	PROCESS (reset, enable)
		BEGIN
			IF reset='0' THEN 
				temp (width-1 DOWNTO 0 ) <= (others=>'0');
			ELSIF rising_edge(shift) THEN
				for i in 0 to width-2 loop
					temp(i)<= input(i+1);
				end loop;
			elsif enable='1' then
				temp<=input;
				END IF;
			temp(width-1)<=shift_bit;
			output<=temp;
		END PROCESS;
			
end Behavioral;

