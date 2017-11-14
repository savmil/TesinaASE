----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:47 11/07/2017 
-- Design Name: 
-- Module Name:    contatore_modulo_4 - Behavioral 
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

entity contatore_modulo_4 is
    Port ( enable : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC:='0';
           q : inout  STD_LOGIC_VECTOR (1 downto 0);
			  notq: out STD_LOGIC_VECTOR(1 downto 0));
end contatore_modulo_4;

architecture Structural of contatore_modulo_4 is
	component RippleCarryAdder is 
	 generic ( N : natural:= 2);
    Port ( adder1 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           sum : out  STD_LOGIC_VECTOR(N-1 downto 0);
           last_carry : out  STD_LOGIC);
	end component;
	component flip_flop_rising_edge is
    Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC;
           set : in  STD_LOGIC;
           reset : in  STD_LOGIC);
	end component;
	signal l_c:STD_LOGIC:='0';
	signal a2,s,s1:STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
begin
	
	flip_flop_1:flip_flop_rising_edge port map(clk,enable,q(0),notq(0),s(0),not(s(0)));
	flip_flop_2:flip_flop_rising_edge port map(clk,enable,q(1),notq(1),s(1),not(s(1)));
	s1<=q;
	r_c_a: RippleCarryAdder port map("01",s1,s,l_c);
end Structural;

