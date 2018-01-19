----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:26 10/31/2017 
-- Design Name: 
-- Module Name:    RippleCarryAdder - Behavioral 
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

entity RippleCarryAdder is 
	 generic ( N : natural:= 2);
    Port ( adder1 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           sum : out  STD_LOGIC_VECTOR(N-1 downto 0);
           last_carry : out  STD_LOGIC);
end RippleCarryAdder;

architecture structural of RippleCarryAdder is
	component full_adder_half is
		PORT(	A: in STD_LOGIC;
			B: in STD_LOGIC;
			CIN: in STD_LOGIC;
			S: out STD_LOGIC;
			COUT: out STD_LOGIC
		);
	end component;
	signal carry_rappresentation:STD_LOGIC:='0';
	signal carry: STD_LOGIC_VECTOR(N-2 downto 0) :=(others => '0');
begin 
	RippleCarryAdder: for i in 0 to N-1 generate
		first_adder: if i=0 generate
			adder: full_adder_half port map (adder1(i),adder2(i),carry_rappresentation,sum(i),carry(i));
		end generate first_adder;
		intermataded_adder: if i>0 and i<N-1 generate
			adder: full_adder_half port map(adder1(i),adder2(i),carry(i-1),sum(i), carry(i));
		end generate intermataded_adder;
		last_adder: if i=N-1 generate
			adder : full_adder_half port map (adder1(i),adder2(i),carry(i-1),sum(i),last_carry);
		end generate last_adder;
	end generate RippleCarryAdder;
end structural;

