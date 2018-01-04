----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:05 11/19/2012 
-- Design Name: 
-- Module Name:    rippleCarryAdder - Behavioral 
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

entity rippleCarryAdder is
	 Generic(width : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (width-1 downto 0);
           cout : out  STD_LOGIC);
end rippleCarryAdder;

architecture Structural of rippleCarryAdder is

COMPONENT full_adder
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		s : OUT std_logic;
		cout : OUT std_logic
		);
END COMPONENT;

signal carry : std_logic_vector(width downto 0);

begin

carry(0) <= cin;
cout <= carry(width);

rca: for i in 0 to width-1 generate

	fa: full_adder port map(
		a => a(i),
		b => b(i),
		cin => carry(i),
		s => s(i),
		cout => carry(i+1)
	);

end generate;


end Structural;

