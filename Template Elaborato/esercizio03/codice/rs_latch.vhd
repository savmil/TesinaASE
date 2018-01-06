library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

