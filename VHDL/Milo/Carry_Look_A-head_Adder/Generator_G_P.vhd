----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:30 11/01/2017 
-- Design Name: 
-- Module Name:    Generator_G_P - Behavioral 
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

entity Generator_G_P is
	 generic( N:natural:=3); 
    Port ( adder1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           c_propagate : out  STD_LOGIC_VECTOR (N-1 downto 0);
           c_generate : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Generator_G_P;

architecture structural of Generator_G_P is
	component half_adder is
		Port(	A: in STD_LOGIC;
			B: in STD_LOGIC;
			S: out STD_LOGIC;
			C: out STD_LOGIC
		);
	end component;
begin
	G_P:for i in 0 to N-1 generate
		half_adder_r: half_adder port map(adder1(i), adder2(i),c_propagate(i),c_generate(i)); 
	end generate G_P; 
end structural;

