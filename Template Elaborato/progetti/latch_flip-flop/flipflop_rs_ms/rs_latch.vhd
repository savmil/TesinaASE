----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:47 01/05/2018 
-- Design Name: 
-- Module Name:    rs_latch - Structural 
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

entity rs_latch is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end rs_latch;

architecture Structural of rs_latch is

COMPONENT nor_gate
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
END COMPONENT;

signal retro_q, retro_notq : std_logic;

begin

	Inst_nor_gate1: nor_gate PORT MAP(
		a => r,
		b => retro_notq,
		f => retro_q
	);
	
	Inst_nor_gate2: nor_gate PORT MAP(
		a => retro_q,
		b => s,
		f => retro_notq
	);

	q <= retro_q;
	notq <= retro_notq;

end Structural;

