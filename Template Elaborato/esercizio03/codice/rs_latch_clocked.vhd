library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rs_latch_clocked is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end rs_latch_clocked;

architecture Structural of rs_latch_clocked is

COMPONENT and_gate
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
END COMPONENT;

COMPONENT rs_latch
	PORT(
		r : IN std_logic;
		s : IN std_logic;          
		q : OUT std_logic;
		notq : OUT std_logic
		);
END COMPONENT;

signal r_clocked, s_clocked : std_logic;

begin

Inst_and_gate1: and_gate PORT MAP(
		a => r,
		b => clock,
		f => r_clocked
	);
	
Inst_and_gate2: and_gate PORT MAP(
		a => clock,
		b => s,
		f => s_clocked
	);

Inst_rs_latch: rs_latch PORT MAP(
		r => r_clocked,
		s => s_clocked,
		q => q,
		notq => notq
	);


end Structural;

