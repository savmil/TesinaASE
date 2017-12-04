





----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:35 10/27/2017 
-- Design Name: 
-- Module Name:    mux16_1 - Behavioral 
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

entity mux16_1 is
    Port ( SEL : in  STD_LOGIC_VECTOR (3 downto 0);
           X : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC
			 );
end mux16_1;

architecture Structural of mux16_1 is
	component mux4_1 is
							Port ( SEL : in STD_LOGIC_VECTOR(1 downto 0);
										A : in STD_LOGIC_VECTOR(3 downto 0);
										X : out STD_LOGIC
									);
	end component;
	signal outmux: STD_LOGIC_VECTOR(3 downto 0):=(others => '0');
begin
	mux_4_1_1: mux4_1 port map(
										SEL(0)=>SEL(0),
										SEL(1)=>SEL(1),
										A(3)=>X(0),
										A(2)=>X(1),
										A(1)=>X(2),
										A(0)=>X(3),
										X=>outmux(3)
										);
	mux_4_1_2: mux4_1 port map(
										SEL(0)=>SEL(0),
										SEL(1)=>SEL(1),
										A(3)=>X(4),
										A(2)=>X(5),
										A(1)=>X(6),
										A(0)=>X(7),
										X=>outmux(2)
										);
	mux_4_1_3: mux4_1 port map(
										SEL(0)=>SEL(0),
										SEL(1)=>SEL(1),
										A(3)=>X(8),
										A(2)=>X(9),
										A(1)=>X(10),
										A(0)=>X(11),
										X=>outmux(1)
										);
	mux_4_1_4: mux4_1 port map(
										SEL(0)=>SEL(0),
										SEL(1)=>SEL(1),
										A(3)=>X(12),
										A(2)=>X(13),
										A(1)=>X(14),
										A(0)=>X(15),
										X=>outmux(0)
										);
	mux_4_1_o: mux4_1 port map(
										SEL(0)=>SEL(2),
										SEL(1)=>SEL(3),
										A(0)=>outmux(0),
										A(1)=>outmux(1),
										A(2)=>outmux(2),
										A(3)=>outmux(3),
										X=>O
										);
end Structural;

