----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:55 11/19/2012 
-- Design Name: 
-- Module Name:    RCAddSub - Behavioral 
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

entity RCAddSub is
	 Generic(width : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR(width-1 downto 0);
			  b : in  STD_LOGIC_VECTOR(width-1 downto 0);
			  add_sub_n : in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (width-1 downto 0);
           ov : out  STD_LOGIC);
end RCAddSub;

architecture Structural of RCAddSub is

COMPONENT rippleCarryAdder
	Generic(width : integer := 8);
	PORT(
		a : IN std_logic_vector(width-1 downto 0);
		b : IN std_logic_vector(width-1 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(width-1 downto 0);
		cout : OUT std_logic
		);
END COMPONENT;

COMPONENT controlled_not
	Generic(width : integer := 8);
	PORT(
		input : IN std_logic_vector(width-1 downto 0);
		invert : IN std_logic;          
		output : OUT std_logic_vector(width-1 downto 0)
		);
END COMPONENT;

signal true_b : std_logic_vector(width -1 downto 0);
signal sign : std_logic;

begin

xor_inversion : controlled_not generic map(
		width => width
	)port map(
		input => b,
		invert => add_sub_n,
		output => true_b
	);

rca: rippleCarryAdder generic map(
		width => width
	)port map(
		a => a,
		b => true_b,
		cin => add_sub_n,
		s => s,
		cout => sign
	);

		--se sommi due positivi e hai un risultato negativo oppure
		--se sommi due negativi e hai un risultato positivo c'e' overflow
ov <= sign xor (a(width-1) and b(width-1));

end Structural;

