library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_testbench is
end half_adder_testbench;

architecture behavioural of half_adder_testbench is
	signal A,B,CIN,O: STD_LOGIC:='0';
	component half_adder is
				Port(
					A: in STD_LOGIC;
					B: in STD_LOGIC;
					S: out STD_LOGIC;
					C: out STD_LOGIC
				);
	end component;
begin
	uut: half_adder port map(
				A=>A,
				B=>B,
				C=>CIN,
				S=>O
			);
	stim_proc:process
	begin
		wait for 1 ns;
		A<='1';
		wait for 1 ns;
		A<='0';
		B<='1';
		wait for 1 ns;
		A<='1';
		wait for 1 ns;
		wait;
	end process;
end behavioural;

