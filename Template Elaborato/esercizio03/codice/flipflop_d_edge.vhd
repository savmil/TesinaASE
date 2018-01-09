library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_d_edge is
    Port ( d : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end flipflop_d_edge;

architecture Structural of flipflop_d_edge is

COMPONENT nor_gate
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
END COMPONENT;

signal G1 : STD_LOGIC; --uscita porta nor G1
signal G2 : STD_LOGIC;
signal G3 : STD_LOGIC;
signal G4 : STD_LOGIC; 
signal G5 : STD_LOGIC;
signal G6 : STD_LOGIC;

begin

	Inst_nor_gate_G1: nor_gate PORT MAP(
		a => G2,
		b => d,
		f => G1
	);
	
	G2 <= not(G3 or clock or G1) ; --corrisponde a nor(G3,clock,G1)
	
	Inst_nor_gate_G3: nor_gate PORT MAP(
		a => G4,
		b => clock,
		f => G3
	);
	
	Inst_nor_gate_G4: nor_gate PORT MAP(
		a => G1,
		b => G3,
		f => G4
	);
	
	Inst_nor_gate_G5: nor_gate PORT MAP(
		a => G6,
		b => G2,
		f => G5
	);
	
	Inst_nor_gate_G6: nor_gate PORT MAP(
		a => G3,
		b => G5,
		f => G6
	);
	
	q <= G6;
	notq <= G5;
	
end Structural;

