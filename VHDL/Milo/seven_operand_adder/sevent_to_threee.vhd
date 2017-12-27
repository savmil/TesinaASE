----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:39 12/26/2017 
-- Design Name: 
-- Module Name:    sevent_to_threee - Behavioral 
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

entity sevent_to_three is
    Port ( adder : in  STD_LOGIC_VECTOR (6 downto 0);
           s0: out STD_LOGIC;
			  s1: out STD_LOGIC;
			  s2: out STD_LOGIC);
end sevent_to_three;

architecture Structural of sevent_to_three is
COMPONENT full_adder_half
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		CIN : IN std_logic;          
		S : OUT std_logic;
		COUT : OUT std_logic
		);
	END COMPONENT;
signal zero,f_one,s_one,second,carry:STD_LOGIC:='0';
begin
	zero_one_adder:full_adder_half port map(adder(1),adder(2),adder(3),zero,f_one);
	one_two_adder:full_adder_half port map(adder(4),adder(5),adder(6),s_one,second);
	z_value:full_adder_half port map(adder(0),zero,s_one,s0,carry);
	f_s_value:full_adder_half port map(f_one,second,carry,s1,s2);
end Structural;

