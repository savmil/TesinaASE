library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_half_testbench is
end full_adder_half_testbench;

architecture behavioural of full_adder_half_testbench is
	component full_adder_half is
			PORT(	A: in STD_LOGIC;
				B: in STD_LOGIC;
				CIN: inout STD_LOGIC;
				S: out STD_LOGIC;
				COUT: out STD_LOGIC
			);
	end component;
signal A :STD_LOGIC :='0';
signal B :STD_LOGIC := '0';
signal CIN :STD_LOGIC:= '0';
signal S : STD_LOGIC:= '0';
signal COUT : STD_LOGIC :='0';
begin
	uut:full_adder_half port map(
		A=>A,
		B=>B,
		CIN=>CIN,
		S=>S,
		COUT=>COUT
		);
	stim_process: process
	begin
		wait for 1 ns;
		A<='1';
		wait for 1 ns;
		A<='0';
		B<='1';
		wait for 1 ns;
		A<='1';
		wait for 1 ns;
		CIN<='1';
		A<='0';
		B<='0';
		wait for 1 ns;
		A<='1';
		wait for 1 ns;
		B<='1';
		wait for 1 ns;
		wait;
	end process;

end behavioural;
			
