library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_rs_ms is
    Port ( s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end flipflop_rs_ms;

architecture Structural of flipflop_rs_ms is

COMPONENT rs_latch_clocked
	PORT(
		r : IN std_logic;
		s : IN std_logic;
		clock : IN std_logic;          
		q : OUT std_logic;
		notq : OUT std_logic
		);
END COMPONENT;

signal q_master, notq_master, not_clock : std_logic;

begin
	
	not_clock <= not clock;

	Inst_rs_latch_clocked_master: rs_latch_clocked PORT MAP(
		r => r,
		s => s,
		clock => clock,
		q => q_master,
		notq => notq_master
	);
	
	Inst_rs_latch_clocked_slave: rs_latch_clocked PORT MAP(
		r => notq_master,
		s => q_master,
		clock => not_clock,
		q => q,
		notq => notq
	);

end Structural;

