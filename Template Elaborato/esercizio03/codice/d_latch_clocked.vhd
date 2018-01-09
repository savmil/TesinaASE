library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch_clocked is
    Port ( d : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end d_latch_clocked;

architecture Structural of d_latch_clocked is

COMPONENT rs_latch_clocked
	PORT(
		r : IN std_logic;
		s : IN std_logic;
		clock : IN std_logic;          
		q : OUT std_logic;
		notq : OUT std_logic
		);
END COMPONENT;

signal notd : std_logic;

begin

	notd <= not d;

	Inst_rs_latch_clocked: rs_latch_clocked PORT MAP(
		r => notd,
		s => d,
		clock => clock,
		q => q,
		notq => notq
	);
	
end Structural;

